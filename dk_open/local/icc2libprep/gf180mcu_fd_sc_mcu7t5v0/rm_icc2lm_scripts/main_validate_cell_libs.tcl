##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <validate_cell_libs> <main_validate_cell_libs.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

proc print_usage {} {
  echo  "\nNote: This utility is to validate reference libraries for lm_shell"
  echo  "Usage: icc2lm_cell_libs_validation  # Validate the list of reference libraries"
  echo  "        \[-cell_libs \{list_of_files\}\]  (Library file names; Required)"
  echo  "        \[-detail\]                      (Optional)"
  echo  "        \[-output_dir directory\]        (Output directory name; Optional; default is \"cell_lib_report\")"
  echo  "\nExample:"
  echo  "lm_shell> source icc2lm_cell_libs_validation.tcl"
  echo  "lm_shell> icc2lm_cell_libs_validation -cell_libs {./icc2_cell_lib/*.ndm} -detail" 
  echo  "\n##########################################################################"
  echo  "### This script is to validate reference libraries by \"report_lib\" command and manual script which export:" 
  echo  "### 1) summary report by report_lib command "
  echo  "###    output file: \${output_dir}/\${lib_name}_report_lib.rep"
  echo  "### 2) summary table by script"
  echo  "###    output file: \${output_dir}/\${lib_name}_cell_lib_info.rep"
  echo  "### 3) the tcl-based antenna property"
  echo  "###    output file: \${output_dir}/\${lib_name}_antenna_prop.tcl"
  echo  "### 4) the via region report"
  echo  "###    output file: \${output_dir}/\${lib_name}_via_region.rep"
  echo  "### 5) the cell-based frame options"
  echo  "###    output file: \${output_dir}/\${lib_name}_cell_frame_options.tcl"
  echo  "##########################################################################\n"
}

proc proc_output_table_format {rows_lists} {

        array set row_array $rows_lists
        set column_count [llength $row_array(0)]
        set row_count [llength [array names row_array]]

        ## get max column width
        for {set j 0} {$j < $column_count} { incr j} {
                set width($j) 0
        }
        for {set i 0} {$i < $row_count} { incr i} {
                for {set j 0} {$j < $column_count} { incr j} {
                        set str_length [string length [lindex $row_array($i) $j]]
                        if { $str_length > $width($j)} {
                                set width($j) $str_length
                        }
                }
        }

        ## define separator
        set sep "+"
        for {set j 0} {$j < $column_count} { incr j} {
                set sep "$sep-[string repeat - $width($j) ]-+"
        }

        ## print table with separator
        set column0 ""
        for {set i 0} {$i < $row_count} { incr i} {
                if {$column0 == "" ||  $column0 != [lindex $row_array($i) 0]} {
                        puts $sep
                        lappend table $sep
                }
                set column0 [lindex $row_array($i) 0 ]
                set row_format ""
                for {set j 0} {$j < $column_count} { incr j} {
                        set row_content [lindex $row_array($i) $j]
                        set str_length [string length $row_content]
                        set space_num [expr $width($j) - $str_length ]
                        if {$row_format == ""} {
                                set row_format "| [string repeat " " ${space_num} ]$row_content |"
                        } else {
                                set row_format "${row_format} [string repeat " " ${space_num} ]$row_content |"
                        }
                }
                puts $row_format
                lappend table $row_format
                if {$i == [expr $row_count - 1]} {
                        puts $sep
                        lappend table $sep
                }

        }
        return $table
}

proc proc_table_header {table_row0 lib_name site_def non_site_def route_dir trackOffset} {
        if {[info exist table]} {unset table}
        set row_split [split $table_row0 +]
        set col_count [expr [llength $row_split] - 2]
        set col0_width [expr [string length [lindex $row_split 1]] + [string length [lindex $row_split 2]]]
        set total_col_width 0
        for {set i 1} {$i <= $col_count } {incr i} {
                set col_width [string length [lindex $row_split $i]]
                set total_col_width [expr $total_col_width + $col_width + 1]
        }
        set col1_width [expr $total_col_width - $col0_width - 4]
        set sep "+[string repeat - [expr $col0_width + 1]]+[string repeat - [expr $col1_width + 1]]+"
        puts $sep
        puts [format "| %*s | %-*s |" [expr $col0_width - 1] "Library Name" [expr $col1_width -1] "$lib_name"]
        puts $sep
        puts [format "| %*s | %-*s |" [expr $col0_width - 1] "Default Site" [expr $col1_width -1] "$site_def"]
        puts $sep
        puts [format "| %*s | %-*s |" [expr $col0_width - 1] "Non-default Site" [expr $col1_width -1] "$non_site_def"]
        puts $sep
        puts [format "| %*s | %-*s |" [expr $col0_width - 1] "Routing Direction" [expr $col1_width -1] "$route_dir"]
        puts $sep
        puts [format "| %*s | %-*s |" [expr $col0_width - 1] "Track Offset" [expr $col1_width -1] "$trackOffset"]
        echo "${sep}\n\n"

        lappend table $sep
        lappend table [format "| %*s | %-*s |" [expr $col0_width - 1] "Library Name" [expr $col1_width -1] "$lib_name"]
        lappend table $sep
        lappend table [format "| %*s | %-*s |" [expr $col0_width - 1] "Default Site" [expr $col1_width -1] "$site_def"]
        lappend table $sep
        lappend table [format "| %*s | %-*s |" [expr $col0_width - 1] "Non-default Site" [expr $col1_width -1] "$non_site_def"]
        lappend table $sep
        lappend table [format "| %*s | %-*s |" [expr $col0_width - 1] "Routing Direction" [expr $col1_width -1] "$route_dir"]
        lappend table $sep
        lappend table [format "| %*s | %-*s |" [expr $col0_width - 1] "Track Offset" [expr $col1_width -1] "$trackOffset"]
        return $table
}

proc proc_table_of_lib_info {lib output_dir} {

        set lib_coll [get_libs $lib]
        if {$lib_coll != "" && [sizeof_collection $lib_coll] == 1} {
                set row_num 0
                set rows_lists [list $row_num {"Cell Name" "Boundary Size" "Cell Site" "Height" "Cell Type" "Pin" "Pin Direction" "Port Type" "Antenna Prop" "Via-Region"}]
                if {[get_lib_cells -of_objects $lib_coll -filter "name != unitTile" -quiet] != ""} {
                        set lib_name [get_attribute $lib_coll name]

			## Export cell-based frame options
                        write_frame_options -library $lib_coll -output ${output_dir}/${lib_name}_cell_frame_options.tcl

			## For tcl-based antenna property  
                        echo "## This tcl-based antenna property is from library: $lib_name" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                        echo "set _library \[get_libs\]" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                        echo "set library \[get_object_name \$_library\]" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                        echo "if {\[string match {} \[current_lib -quiet\]\]} {" >> "${output_dir}/${lib_name}_antenna_prop.tcl"     
                        echo "set view design" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                        echo "} else {" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                        echo "set view frame" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                        echo "}" >> "${output_dir}/${lib_name}_antenna_prop.tcl"

                        ## for lib_cell
                        puts "\nINFORMATION >> Getting the attributes for the lib cells of lib: $lib_name ..."
                        foreach_in_collection lib_cell [get_lib_cells -quiet -of_objects $lib_coll -filter "name != unitTile && view_name == frame"] {
                                ## init lib_cell attributes 
                                foreach var [list cell_name boundary_size site height cell_type] {
                                set value($var) "--"
                                }
				set current_cell [get_attribute $lib_cell name]
                                set value(cell_name) "${current_cell}.frame"
                                set boundary_bbox [get_attribute $lib_cell boundary_bbox]
                                set cell_width [expr double([lindex [lindex $boundary_bbox 1] 0])]
                                set cell_height [expr double([lindex [lindex $boundary_bbox 1] 1])]
                                set value(boundary_size) "W:${cell_width} H:${cell_height}" 
                                set cell_site [get_attribute -quiet $lib_cell site_name]
                                set cell_site_h [get_attribute [get_site_defs -quiet $cell_site] height]
                                if {$cell_site == ""} {
                                    echo "PROC_ERROR: lib_cell \"$current_cell\" does not have site association. Please review this lib_cell."
                                    continue
                                }
				set value(cell_type) [get_attribute $lib_cell design_type]

				if {$value(cell_type) == "macro" || $value(cell_type) == "module" || $value(cell_type) == "pad"} {
					set value(site) "--"
					set value(height) "--"
				} else {
					set value(site) $cell_site
	                                if {![expr [expr $cell_height / $cell_site_h] - int($cell_height / $cell_site_h)]} {
        	                                set value(height) "[expr int( $cell_height / $cell_site_h ) ]xh"
               		                 } else {
                       		                set value(height) "ERR: NOT integer of cell site"
                               		 }
				}
 	
                                ## Open frame views
                                set lib_name [get_attribute -object $lib_cell -name lib_name]
                                set design_name [get_attribute -object $lib_cell -name name]
                                open_block $lib_name:$design_name.frame

				## Export via region report
				report_via_region >> "${output_dir}/${lib_name}_via_region.rep"

				## For tcl-based antenna property
                                echo "\nset lc \[get_lib_cells -quiet \${library}\/$design_name\/\${view}\]" >> "${output_dir}/${lib_name}_antenna_prop.tcl"

                                foreach_in_collection lib_port [get_ports -all]  {
                                        set term [get_terminals -quiet -of_objects $lib_port]
                                        set port_type [get_attribute -quiet -objects $lib_port -name port_type]
                                        ## init lib_port attributes
                                        foreach var [list pin_name pin_direction port_type antenna via_region] {
                                                set value($var) "--"
                                        }
                                        incr row_num
                                        set value(pin_name) [get_attribute $lib_port name]
                                        set value(pin_direction) [get_attribute -quiet $lib_port direction]
                                        set value(port_type) [get_attribute $lib_port port_type]
                                        if {[get_attribute -quiet $lib_port is_secondary_pg] == true } {
                                                set value(port_type) "Secondary $value(port_type)"
                                        } elseif {[get_attribute -quiet $lib_port is_diode] == true } {
						set value(port_type) "Diode $value(port_type)"
					}

					## Get antenna properties from lib pins
                                        set antenna_attributes [list antenna_area antenna_side_area diff_area gate_area p_gate_area n_gate_area \
                                                                        gate_diffusion_length p_gate_diffusion_length n_gate_diffusion_length \
                                                                        mode1_area mode2_ratio mode3_area mode4_area mode5_ratio mode6_area]
                                        echo "set lp \[get_lib_pins -quiet -all -of_objects \$lc -filter \"name == $value(pin_name)\"\]" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                                        set m1 [get_object_name [get_layers -filter "mask_name==metal1"]]
                                        foreach attr_name $antenna_attributes {
                                                set attr_value "[get_attribute -quiet $lib_port $attr_name]"
                                                if {$attr_value != ""} {
                                                     if { $attr_name == "gate_area" } {
                                                        set gate_index0 [lindex $attr_value 0]
                                                        set gate_index1 [lindex $attr_value 1]
                                                        set gate_index2 [lindex $attr_value 2]
                                                     }
                                                     if { $attr_name == "diff_area" } {
                                                        set diff_index0 [lindex $attr_value 0]
                                                        set diff_index1 [lindex $attr_value 1]
                                                     }
                                                     if { $attr_name == "gate_area" && $gate_index1 == "--" } {
                                                        echo "    set_attribute -objects \$lp -name $attr_name -value {$gate_index0 $m1 $gate_index2}" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                                                     } elseif { $attr_name == "diff_area" && $diff_index0 == "--"} { 
                                                        echo "    set_attribute -objects \$lp -name $attr_name -value {$m1 $diff_index1}" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
					             } else {
                                                        echo "    set_attribute -objects \$lp -name $attr_name -value {$attr_value}" >> "${output_dir}/${lib_name}_antenna_prop.tcl"
                                                     }
                                                  if {$value(antenna) == "--"} {
                                                     set value(antenna) "Yes"
                                                  }
                                                }
                                        }
					if {$value(antenna) == "--"} {
                                           if {$value(pin_direction) != "internal"} {
					      if {$port_type == "signal" || $port_type == "clock"} {
                                                 set value(antenna) "WARN: NO ant prop for non-pg pin"
                                              }
					   }	
					}

                                        ## Extract via region for terminals
                                        set term_vr [get_via_regions -quiet -design [current_block] -of_objects $term]
                                        set vr_def [get_attribute -quiet -objects $term_vr -name via_def]
                                            if {$value(cell_type)!="macro" && $value(cell_type)!="pad" && $value(pin_direction) != "internal"} {
                                                if {$vr_def != ""} {
                                                set value(via_region) [llength $vr_def]
                                                } elseif {$port_type == "signal" || $port_type == "clock"} {
                                                  set value(via_region) "WARN: NO via region for non-pg pin"
                                                }
					    }	

                                        lappend rows_lists $row_num
                                        lappend rows_lists [list "$value(cell_name)" "$value(boundary_size)" "$value(site)" "$value(height)" "$value(cell_type)" \
                                                        "$value(pin_name)" "$value(pin_direction)" "$value(port_type)" "$value(antenna)" "$value(via_region)"]
                                }
				close_block
                        }
                return [proc_output_table_format $rows_lists]
                } else {
                        #puts "\n${flow_err_prefix} Cannot get any lib or multiple libs specified!"
                        return [proc_output_table_format $rows_lists]
                }
        } else {
                #puts "\n${flow_err_prefix} Cannot get any lib or multiple libs specified!"
                return [proc_output_table_format $rows_lists]
        }
}

proc icc2lm_cell_libs_validation {args} {
  set help 0
  set cell_libs ""
  set detail 0
  set output_dir ""
  set min_pin_layer ""

  set i 1
  foreach input $args {
    if {$input == "-cell_libs"} {
      set cell_libs [lindex $args $i]
    } elseif {$input == "-detail"} {
      set detail 1
    } elseif {$input == "-output_dir"} {
      set output_dir [lindex $args $i]
    } elseif {$input == "-help"} {
      set help 1
    } elseif {$input == "-min_pin_layer"} {
      set min_pin_layer [lindex $args $i]
    }
    incr i
  }
  if {$help} {
    print_usage
  } elseif {$cell_libs == ""} {
     echo "Error: -cell_libs is required!!"
     print_usage
  }

  set all_ndms ""
  if {[string match {*\**} $cell_libs]} {
     foreach all_ndms_temp $cell_libs {
      append all_ndms [glob $all_ndms_temp]
     }
  } else {
     set all_ndms $cell_libs
  }

  if {$output_dir == ""} {
    set output_dir cell_lib_report
  }
  sh mkdir -p $output_dir

  set output_files ""
  set sh_continue_on_error true
  suppress_message {DES-021 DES-022}

    foreach ndm $all_ndms {
        create_workspace -flow edit $ndm 
        foreach_in_collection lib [get_libs] {

         current_lib $lib
         set lib_name [get_attribute $lib name]
         set non_site_def ""
         set route_dir ""
         set trackOffset ""

        if {$detail} {
            if {$min_pin_layer != ""} {
                echo "\n##report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors -min_pin_layer $min_pin_layer -verbose $lib_name\n"
                report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors -min_pin_layer $min_pin_layer -verbose $lib_name > ${output_dir}/${lib_name}_report_lib.rep
            } else {
                echo "\n##report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors -verbose $lib_name\n"
                report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors -verbose $lib_name > ${output_dir}/${lib_name}_report_lib.rep
            }
        } else {
            if {$min_pin_layer != ""} {
                echo "\n##report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors -min_pin_layer $min_pin_layer $lib_name\n"
                report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors -min_pin_layer $min_pin_layer $lib_name > ${output_dir}/${lib_name}_report_lib.rep
            } else {
                echo "\n##report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors $lib_name\n"
                report_lib -antenna -physical -routability -placement_constraints -wire_tracks -wire_track_colors $lib_name > ${output_dir}/${lib_name}_report_lib.rep
            }
        }
             
             foreach_in_collection lib_site [get_site_defs -quiet] {
                set lib_site_name [get_object_name $lib_site]
                set lib_site_def [get_site_defs -quiet $lib_site -filter "is_default == true"]
                set lib_site_def_name [get_object_name $lib_site_def]
                set lib_site_h [get_attribute -quiet $lib_site height]
                set lib_site_w [get_attribute -quiet $lib_site width]
                set lib_site_sym [get_attribute -quiet $lib_site symmetry]
                set lib_site_typ [get_attribute -quiet $lib_site type]
                set rep_site "$lib_site_name (W:$lib_site_w H:$lib_site_h Symmetry:$lib_site_sym Type:$lib_site_typ)"
                if {$lib_site_name == $lib_site_def_name} {
                   set site_def $rep_site
                } else {
                   set _non_site_def $rep_site
                   lappend non_site_def $_non_site_def
                }
             }
               
             foreach_in_collection metal_name [get_layers -filter "mask_name=~metal*"] {
                  set metal_layer [get_object_name $metal_name]
                  set dir [get_attribute -quiet [get_layers $metal_name] routing_direction]
                  set offset [get_attribut -quiet [get_layers $metal_name] track_offset]
                  if {$dir == "unknown"} {
                     lappend route_dir $metal_layer "--"
                  } else {
                     lappend route_dir $metal_layer $dir
                  }
                  if {$offset == ""} {
                     lappend trackOffset $metal_layer "--"
                  } else {
                     lappend trackOffset $metal_layer $offset
                  }
             } 

                        ## get attributes from lib
                        set table [proc_table_of_lib_info $lib_name $output_dir]
                        set table_header [proc_table_header [lindex $table 0 ] $lib_name $site_def $non_site_def $route_dir $trackOffset] 
                        ## Output to file
                        set file_name ${output_dir}/${lib_name}_cell_lib_info.rep
                        set file [open $file_name w]
                        if {[get_lib_cells ${lib_name}/* -quiet] != ""} {
                           puts $file "Export tcl-based antenna properties: \n${output_dir}/${lib_name}_antenna_prop.tcl\n"
                           puts $file "Export via region report: \n${output_dir}/${lib_name}_via_region.rep\n"
                           puts $file "Export cell-based frame options: \n${output_dir}/${lib_name}_cell_frame_options.tcl\n" 
                        }
                        ## output header to file
                        foreach row $table_header {
                                puts $file $row
                        }

                        ## output main table to file
                        foreach row $table {
                                puts $file $row
                        }
                        unset table
                        unset table_header
                        close $file
                        lappend output_files $file_name
        }
        ## close the current NDM
        remove_workspace
    }
 
    ## Print Summary
    if {$output_files != ""} {
        puts "\nINFORMATION >> Done! Please check the following [llength $output_files] output files:"
        foreach file_name $output_files {
                puts $file_name
        }
    } else {
        puts "\nINFORMATION >> No any output file, please check your inputs and the log file for details."
    }
}
