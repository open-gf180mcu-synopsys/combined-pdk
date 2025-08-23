##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <set_proper_site> <proc_set_proper_site.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\nICCII LM PREP FLOW INFO >> Running script \"proc_set_proper_site.tcl\"\n"

proc proc_set_proper_site args {
	if {$::synopsys_program_name != "lm_shell"} {
		error "Not in lm_shell! Run this proc in lm_shell."
	}
	if {[get_workspaces -quiet] != "" } {
		error "Workspace exists! Remove current workspace by remove_workspace and re-run this proc."
	}
	parse_proc_arguments -args $args results
	if {[info exist results]} {
		set techfile $results(-technology)
		set ndm_list $results(-ndm_list)
	}
	if {[string match {*\**} $ndm_list]} {
		set ndm_list [glob $ndm_list]
	} 
	## create tmp worksapce to get the default site from techfile
	echo "PROC_INFO: creating tmp_workspace with $techfile to get tech-file site information."
	create_workspace -technology $techfile tmp_workspace
	if {[get_site_defs -filter "type == core" -quiet] != ""} {
		set techfile_site_names [get_object_name [get_site_defs -filter "type == core"]]
		set default_site_def [get_site_def -filter "is_default == true && type == core"]
		set default_site_name [get_attribute $default_site_def name]
		set default_site_width [get_attribute $default_site_def width]
		set default_site_height [get_attribute $default_site_def height]
		set tech [lindex [get_object_name [get_techs]] 0]
		remove_workspace
		echo "PROC_INFO: Found default site \"$default_site_name\" width:$default_site_width  height:$default_site_height"
		## check lib_cell's height and set proper site on them
		set non_default_site_used ""
		set new_site ""
		set no_site_lib_cell ""
		set new_site_ndm ""
		set no_site_lib_cell_ndm ""
		set non_default_site_used_ndm ""
		set std_lib_cell_count 0
		set default_site_lib_cell ""
		set set_default_site_lib_cell ""
		set non_default_site_lib_cell ""
		set new_site_lib_cell ""
		set non_default_site_no_change_lib_cell ""
		set new_site_no_change_lib_cell ""
		set skipped_ndm ""
		## check each NDM
		foreach ndm $ndm_list {
			set ndm_dir [file dirname $ndm]
			#create_workspace -flow edit $ndm
#      			if {[string match "*_frame*" $ndm]} {
#        	   	   create_workspace -flow frame temp
#        		   read_ndm $ndm
#      			} else {
        		   create_workspace -flow edit $ndm
#      			}

			set std_cells [get_lib_cells */*/frame -quiet -filter "name != unitTile && (design_type == lib_cell || design_type == diode || \
				design_type == end_cap || design_type == well_tap || design_type == filler)"]
			if {$std_cells != ""} {
				foreach_in_collection lib_cell $std_cells {
					incr std_lib_cell_count
					set boundary_bbox [string map [list "\{" "" "\}" "" ] [get_attribute $lib_cell boundary_bbox]]
					set cell_height [expr double([lindex $boundary_bbox 3])]
					set site_name [get_attribute $lib_cell site_name]
					set cell_name [get_object_name $lib_cell]

					## single or multiples height of default site
					if {$default_site_height <= $cell_height && ![expr [expr $cell_height / $default_site_height] - int($cell_height / $default_site_height)]} {
						## if lib_cell site_name != $default_site_name, change it to $default_site_name
						if {![string match $site_name $default_site_name]} {
							echo "PROC_INFO: Changing site_name from \"$site_name\" to default site \"$default_site_name\" on lib_cell \"$cell_name\"."
							set_attribute $lib_cell site_name $default_site_name 
							lappend set_default_site_lib_cell [list $cell_name $site_name]
						} else {
							lappend default_site_lib_cell $cell_name
						}
					} else  { ;# not single or multiples height of default site, need additional site
						set proper_sites ""
						foreach_in_collection site_def [get_site_defs -filter "type == core"] {
							set each_site_height [get_attribute $site_def height]
							if {$each_site_height <= $cell_height && ![expr [expr $cell_height / $each_site_height] - int($cell_height / $each_site_height)]} {
								lappend proper_sites [get_object_name $site_def]
							}
						}
						
						## proper site exists
						if {$proper_sites != ""} {
							set no_change 0
							if {[lsearch $proper_sites $site_name] != -1} {
								set proper_site $site_name
								set no_change 1
								set site_height [get_attribute [get_site_def $proper_site] height]
							} else {
								if {[llength $proper_sites] > 1} {
									set proper_site [lindex $proper_sites 0]
									echo "PROC_INFO: Found [llength $proper_sites] sites \{$proper_sites\} are suitable for lib_cell \"$cell_name\"."
									echo "           Use the first one \"$proper_site\" as the site of the lib_cell."
								} else {
									set proper_site $proper_sites
									echo "PROC_INFO: Set the site \"$proper_site\" on the lib_cell \"$cell_name\"."
								}
								set_attribute $lib_cell site_name $proper_site 
							}

							## check if the site exists in techfile
							if {[lsearch $techfile_site_names $proper_site] != -1} {
								if {[lsearch $non_default_site_used $proper_site] == -1} {
									lappend non_default_site_used $proper_site
								}
								if {[lsearch $non_default_site_used_ndm $ndm] == -1} {
									lappend non_default_site_used_ndm $ndm
								}
								if {$no_change} {
									echo "PROC_INFO: Proper non-default site \"$site_name\" (height: $site_height) has already been set on lib_cell \"$cell_name\"."
									if {![array exists non_default_site_no_change_lib_cell]} {unset non_default_site_no_change_lib_cell}
									lappend non_default_site_no_change_lib_cell($proper_site) $cell_name
								} else {
									if {![array exists non_default_site_lib_cell]} {unset non_default_site_lib_cell}
									lappend non_default_site_lib_cell($proper_site) $cell_name
								}
							} else {
								# new_site
								set new_site_def [get_site_defs $proper_site]
								set new_site_name $proper_site
								set new_site_width [get_attribute $new_site_def width]
								set new_site_height [get_attribute $new_site_def height]
								set new_site_symmetry [get_attribute -quiet $new_site_def symmetry]
								if {$new_site_symmetry == ""} {
									echo "PROC_WARN: No symmetry defined for site \"$new_site_name\"!"
									echo "           Will set symmetry to \"Y\" for site \"$new_site_name\"."
									set new_site_symmetry "Y"
								}
								if {$new_site == "" } {
									lappend new_site [list $new_site_name $new_site_width $new_site_height $new_site_symmetry]
								} else {
									set new_site_names ""
									foreach site $new_site {
										lappend new_site_names [lindex $site 0]
									}
									if {[lsearch $new_site_names $new_site_name] == -1} {
										lappend new_site [list $new_site_name $new_site_width $new_site_height $new_site_symmetry]
									}
								}
								if {[lsearch $new_site_ndm $ndm] == -1} {
									lappend new_site_ndm $ndm
								}
								if {$no_change} {
									echo "PROC_INFO: Proper new site \"$site_name\" (height: $site_height) already has been set on lib_cell \"$cell_name\"."
									if {![array exists new_site_no_change_lib_cell]} {unset new_site_no_change_lib_cell}
									lappend new_site_no_change_lib_cell($proper_site) $cell_name
								} else {
									if {![array exists new_site_lib_cell]} {unset new_site_lib_cell}
									lappend new_site_lib_cell($proper_site) $cell_name
								}
							}
						} else {
							echo "PROC_ERROR: Cannot find proper site for lib_cell \"$cell_name\""
							lappend no_site_lib_cell [list $cell_name $cell_height]
						}
					}

				}
				check_workspace
				commit_workspace -output $ndm -force
				remove_workspace
			} else {
				remove_workspace
				echo "PROC_INFO: Skipping NDM $ndm since it has no std. cell."
				lappend skipped_ndm $ndm
			}
    		}
		## Summary and output create_site_def.tcl if needed
		set set_default_site_lib_cell_count [llength $set_default_site_lib_cell]
		echo "*********************** SUMMARY ***********************"
		if {$new_site == "" && $non_default_site_used == ""} {
			echo "PROC_INFO: All $std_lib_cell_count std. cells in the following [llength $ndm_list] NDM(s) are using default site \"$default_site_name\""
			if {$set_default_site_lib_cell_count > 0} {
			echo "           Including $set_default_site_lib_cell_count lib_cell(s) are set to default site by this proc."
			}
			foreach ndm $ndm_list {
				echo "           $ndm"
			}
		} else {
			if {$non_default_site_used != ""} {
				if {[llength $non_default_site_used] == 1} {
					echo "PROC_INFO: The non-default site \"$non_default_site_used\" from tech-file is used by following [llength $non_default_site_used_ndm] NDM(s):" 
				} else {
					echo "PROC_INFO: The non-default sites \{$non_default_site_used\} from tech-file are used by following [llength $non_default_site_used_ndm] NDM(s):"
				} 
				foreach ndm $non_default_site_used_ndm {
					echo "           $ndm"
				}
			}
			if {$new_site != ""} {
				if {[llength $new_site_names] == 1} {
					echo "\nPROC_INFO: The new site \"$new_site_names\" from NDM is used by following [llength $new_site_ndm] NDM(s):" 
				} else {
					echo "\nPROC_INFO: The new sites \{$new_site_names\} from NDM are used by following [llength $new_site_ndm] NDM(s):" 
				}
				foreach ndm $new_site_ndm {
					echo "           $ndm"
				}
				set file [open ./export_creation/create_site_def.tcl w]
				puts $file "## create site for tech $tech"
				foreach site $new_site {
					set new_site_name [lindex $site 0]
                                        set new_site_width [lindex $site 1]
                                        set new_site_height [lindex $site 2]
                                        set new_site_symmetry [lindex $site 3]
					puts $file "  create_site_def -name $new_site_name \\"
					puts $file "    -type core \\"
					puts $file "    -width $new_site_width \\"
					puts $file "    -height $new_site_height \\"
					puts $file "    -symmetry $new_site_symmetry \n"					
				}
				close $file
				echo "\nPROC_INFO: File \"./export_creation/create_site_def.tcl\" has been generated for creating the new sites in tech NDM or design library."
			}
			if {$no_site_lib_cell != ""} {
				echo "\nPROC_ERROR: Cannot find proper site for following [llength $no_site_lib_cell] lib_cell(s):" 
				foreach lib_cell $no_site_lib_cell {
					echo "            [lindex $lib_cell 0] (height: [lindex $lib_cell 1])"
				}
	
			}
		}
		## Detailed report to file ./set_site_for_ndm.rpt
		#set file [open ./set_site_for_ndm.rpt w]
		echo "INFO: Total $std_lib_cell_count std. cells have been processed.\n"
		if {$new_site != ""} {
			echo "INFO: Use \"./export_creation/create_site_def.tcl\" to create the new sites in tech NDM or design library.\n"
		}
		## lib_cell do not have proper site defined
		if {$no_site_lib_cell != ""} {
			echo "Error: Cannot find proper site for following [llength $no_site_lib_cell] lib_cell(s):"
			echo "       You need to check and fix it manually!" 
			foreach lib_cell $no_site_lib_cell {
				echo "         [lindex $lib_cell 0] (height: [lindex $lib_cell 1])"
			}
		}
		## using new_site
		if {[array exists new_site_lib_cell]} {
			foreach site_name [array names new_site_lib_cell] {
				set lib_cell_count [llength $new_site_lib_cell($site_name)]
				echo "\nINFO: The new site \"$site_name\" from NDM is set on following $lib_cell_count lib_cell(s):"
				foreach lib_cell $new_site_lib_cell($site_name) {
					echo "      $lib_cell"
				}
			}
		}
		## using non_default_site
		if {[array exists non_default_site_lib_cell]} {
			foreach site_name [array names non_default_site_lib_cell] {
				set lib_cell_count [llength $non_default_site_lib_cell($site_name)]
				echo "\nINFO: The non-default site \"$site_name\" from tech-file is set on following $lib_cell_count lib_cell(s):"
				foreach lib_cell $non_default_site_lib_cell($site_name) {
					echo "      $lib_cell"
				}
			}
		}
		## default site being set
		if {$set_default_site_lib_cell != ""} {
			echo "\nINFO: Default site \"$default_site_name\" is set on the following $set_default_site_lib_cell_count lib_cell(s):"
			foreach lib_cell $set_default_site_lib_cell  {
				set lib_cell_name [lindex $lib_cell 0]
				set ex_site_name [lindex $lib_cell 1]
				echo "      $lib_cell_name  (previous site: $ex_site_name)"
			}
		}
		## using new_site already
		if {[array exists new_site_no_change_lib_cell]} {
			foreach site_name [array names new_site_no_change_lib_cell] {
				set lib_cell_count [llength $new_site_no_change_lib_cell($site_name)]
				echo "\nINFO: No change on following $lib_cell_count lib_cell(s) which have new site \"$site_name\" from NDM set properly."
				foreach lib_cell $new_site_no_change_lib_cell($site_name) {
					echo "      $lib_cell"
				}
			}
		}
		## using non_default_site already
		if {[array exists non_default_site_no_change_lib_cell]} {
			foreach site_name [array names non_default_site_no_change_lib_cell] {
				set lib_cell_count [llength $non_default_site_no_change_lib_cell($site_name)]
				echo "\nINFO: No change on following $lib_cell_count lib_cell(s) which have non-default site \"$site_name\" from tech-file set properly."
				foreach lib_cell $non_default_site_no_change_lib_cell($site_name) {
					echo "      $lib_cell"
				}
			}
		}
		## default site already set
		if {$default_site_lib_cell != ""} {
			echo "\nINFO: No change on the following [llength $default_site_lib_cell] lib_cell(s) which have default site \"$default_site_name\" set properly"
			foreach lib_cell $default_site_lib_cell  {
				echo "      $lib_cell"
			}
		}
		## skipped NDM
		if {$skipped_ndm != ""} {
			set skipped_ndm_count [llength $skipped_ndm]
			if {$skipped_ndm_count == 1} {
				echo "\nINFO: Following NDM is skipped since there is no std. cell inside it"
			} else {
				echo "\nINFO: Following $skipped_ndm_count NDMs are skipped since there is no std. cell inside them"
			}
			foreach ndm $skipped_ndm  {
				echo "      $ndm"
			}
		}
		#close $file	
		#echo "\nPROC_INFO: Check ./set_site_for_ndm.rpt for detailed report!"
		unset techfile_site_names
		unset default_site_def
		unset default_site_name
		unset default_site_width
		unset default_site_height
		unset tech
		unset non_default_site_used
		unset new_site
		unset no_site_lib_cell
		unset new_site_ndm
		unset no_site_lib_cell_ndm
		unset non_default_site_used_ndm
		unset std_lib_cell_count
		unset default_site_lib_cell
		unset set_default_site_lib_cell
		unset non_default_site_lib_cell
		unset new_site_lib_cell
		unset skipped_ndm
		return 1
	} else { 
		remove_workspace
		echo "PROC_ERROR: No site information due to no \"Tile\" defined in techfile!"
		echo "            Please check the techfile \"$techfile\" and fix the problem!"
		return 0
	}
}

define_proc_attributes proc_set_proper_site -info "USER PROC: Set proper site (from techfile/NDM) on lib_cells (std. cells) based on height." \
        -define_args {
        	{-technology "Technology file" "" string required}
        	{-ndm_list "NDMs to be checked and processed" "" string required}
	 }


