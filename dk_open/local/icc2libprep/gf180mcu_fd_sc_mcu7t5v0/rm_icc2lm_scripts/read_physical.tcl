##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <read_physical.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\n${flow_info_prefix} Running script \"read_physical.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Physical lef files:         $lef_files"
echo "Physical gds files:         $gds_files"
echo "Physical oasis files:       $oasis_files"
echo "Input NDM library:          $frame_files"
echo ""

echo "\n### BEGIN_COMMAND from read_physical.tcl" >> ${create_ndm_commands}

if {$source_type == "gds_lef_oasis" || $source_type == "combined"} {
#########################################################
# Define all the LEF files to use.
# May need to convert the LEF site names
#########################################################
#read_lef "/lef file name(s)"
#read_lef -convert_sites {unit new_unit} "lef file name(s)"
if {$lef_files != ""} {
  set lib_lef ""
  if {[string match {*\**} $lef_files]} {
     foreach lib_lef_temp $lef_files { 
      append lib_lef [glob $lib_lef_temp]
     }
  } else {
     set lib_lef $lef_files
  }

if {$lef_non_real_cut_obs_mode} {      
set_app_options -as_user_default -name file.lef.non_real_cut_obs_mode -value true 
echo "set_app_options -as_user_default -name file.lef.non_real_cut_obs_mode -value true" >> ${create_ndm_commands}
}
if {$lef_auto_rename_conflict_sites} {
set_app_options -as_user_default -name file.lef.auto_rename_conflict_sites -value true
echo "set_app_options -as_user_default -name file.lef.auto_rename_conflict_sites -value true" >> ${create_ndm_commands}
}

if {$lef_convert_site!=""} {
  foreach site $lef_convert_site {
     lappend site_list [list $site $site_default]
  }
  if {$lef_cell_boundary != ""} {
    read_lef -configure_frame_options -convert_sites $site_list -cell_boundary $lef_cell_boundary $lib_lef
    echo "read_lef -configure_frame_options -convert_sites {$site_list} -cell_boundary ${lef_cell_boundary} {$lib_lef}" >> ${create_ndm_commands}
  } else {
    read_lef -configure_frame_options -convert_sites $site_list $lib_lef
    echo "read_lef -configure_frame_options -convert_sites {$site_list} {$lib_lef}" >> ${create_ndm_commands}
  }
  } else {
  if {$lef_cell_boundary != ""} {
    read_lef -configure_frame_options -cell_boundary $lef_cell_boundary $lib_lef
    echo "read_lef -configure_frame_options -cell_boundary ${lef_cell_boundary} {$lib_lef}" >> ${create_ndm_commands}
  } else {
    read_lef -configure_frame_options $lib_lef
    echo "read_lef -configure_frame_options {$lib_lef}" >> ${create_ndm_commands}
  }
  }
}

#########################################################
# Define all the GDS files to use.
# May need to add a SITE definition
# Specify the layer mapping file if the GDSII and TECH
# layers are not the same 
#########################################################
#read_gds ".gds file name(s)"
if {$gds_files != ""} {
  set lib_gds ""
  if {[string match {*\**} $gds_files]} {
     foreach lib_gds_temp $gds_files {
      append lib_gds [glob $lib_gds_temp]
     }
  } else {
     set lib_gds $gds_files
  }


  if {[info exists gds_std_cell_port_types] && $gds_std_cell_port_types != ""} {
        if {[info exists port_type_map]} {unset port_type_map}
        foreach port_list $gds_std_cell_port_types {
                foreach port [lindex $port_list 1] {
                        lappend port_type_map [list [lindex $port_list 0] $port]
                }
        }
        set_app_options -name file.gds.port_type_map -value $port_type_map -as_user_default
        echo "set_app_options -as_user_default -name file.gds.port_type_map -value \{$port_type_map\}" >> ${create_ndm_commands}
  }

set_app_options -name file.gds.text_layer_map -value $gds_pin_text_list -as_user_default
echo "set_app_options -as_user_default -name file.gds.text_layer_map -value \{$gds_pin_text_list\}" >> ${create_ndm_commands}

if {$gds_exclude_layers!=""} {
   set_app_options -name file.gds.exclude_layers -value $gds_exclude_layers -as_user_default
   echo "set_app_options -as_user_default -name file.gds.exclude_layers -value \{$gds_exclude_layers\}" >> ${create_ndm_commands}
}

 if {$gds_layer_map_file!="" && $gds_block_map_file!=""} {
   read_gds $lib_gds -layer_map $gds_layer_map_file -block_map $gds_block_map_file -trace_option $gds_trace_option -keep_text
   echo "read_gds {$lib_gds} -layer_map $gds_layer_map_file -block_map $gds_block_map_file -trace_option $gds_trace_option -keep_text" >> ${create_ndm_commands}
 } elseif {$gds_layer_map_file!=""} {
   read_gds $lib_gds -layer_map $gds_layer_map_file -trace_option $gds_trace_option -keep_text      
   echo "read_gds {$lib_gds} -layer_map $gds_layer_map_file -trace_option $gds_trace_option -keep_text" >> ${create_ndm_commands}
 } elseif {$gds_block_map_file!=""} {
   read_gds $lib_gds -block_map $gds_block_map_file -trace_option $gds_trace_option -keep_text       
   echo "read_gds {$lib_gds} -block_map $gds_block_map_file -trace_option $gds_trace_option -keep_text" >> ${create_ndm_commands}
 } elseif {$gds_layer_map_file=="" && $gds_block_map_file==""} {
   read_gds $lib_gds -trace_option $gds_trace_option -keep_text
   echo "read_gds {$lib_gds} -trace_option $gds_trace_option -keep_text" >> ${create_ndm_commands}
 }

  if {$gds_all_cell_type!=""} {
     echo "## set gds_all_cell_type \"$gds_all_cell_type\"" >> ${create_ndm_commands}
     set_attribute [get_lib_cells */*/design] design_type $gds_all_cell_type
     echo "set_attribute \[get_lib_cells \*\/\*\/design\] design_type $gds_all_cell_type" >> ${create_ndm_commands}
  }
}

#########################################################
# Define all the OASIS files to use.
# May need to add a SITE definition
# Specify the layer mapping file if the OASIS and TECH
# layers are not the same 
#########################################################
#read_oasis ".oasis file name(s)"
if {$oasis_files != ""} {
  set lib_oasis ""
  if {[string match {*\**} $oasis_files]} {
     foreach lib_oasis_temp $oasis_files {
      append lib_oasis [glob $lib_oasis_temp]
     }
  } else {
     set lib_oasis $oasis_files
  }

  if {[info exists oasis_std_cell_port_types] && $oasis_std_cell_port_types != ""} {
        if {[info exists port_type_map]} {unset port_type_map}
        foreach port_list $oasis_std_cell_port_types {
                foreach port [lindex $port_list 1] {
                        lappend port_type_map [list [lindex $port_list 0] $port]
                }
        }
        set_app_options -name file.oasis.port_type_map -value $port_type_map -as_user_default
        echo "set_app_options -as_user_default -name file.oasis.port_type_map -value \{$port_type_map\}" >> ${create_ndm_commands}
  }

set_app_options -name file.oasis.text_layer_map -value $oasis_pin_text_list -as_user_default
echo "set_app_options -as_user_default -name file.oasis.text_layer_map -value \{$oasis_pin_text_list\}" >> ${create_ndm_commands}

if {$oasis_exclude_layers!=""} {
   set_app_options -name file.oasis.exclude_layers -value $oasis_exclude_layers -as_user_default
   echo "set_app_options -as_user_default -name file.oasis.exclude_layers -value \{$oasis_exclude_layers\}" >> ${create_ndm_commands}
}

 if {$oasis_layer_map_file!="" && $oasis_block_map_file!=""} {
   read_oasis $lib_oasis -layer_map $oasis_layer_map_file -block_map $oasis_block_map_file -trace_option $oasis_trace_option -keep_text
   echo "read_oasis {$lib_oasis} -layer_map $oasis_layer_map_file -block_map $oasis_block_map_file -trace_option $oasis_trace_option -keep_text" >> ${create_ndm_commands}
 } elseif {$oasis_layer_map_file!=""} {
   read_oasis $lib_oasis -layer_map $oasis_layer_map_file -trace_option $oasis_trace_option -keep_text      
   echo "read_oasis {$lib_oasis} -layer_map $oasis_layer_map_file -trace_option $oasis_trace_option -keep_text" >> ${create_ndm_commands}
 } elseif {$oasis_block_map_file!=""} {
   read_oasis $lib_oasis -block_map $oasis_block_map_file -trace_option $oasis_trace_option -keep_text       
   echo "read_oasis {$lib_oasis} -block_map $oasis_block_map_file -trace_option $oasis_trace_option -keep_text" >> ${create_ndm_commands}
 } elseif {$oasis_layer_map_file=="" && $oasis_block_map_file==""} {
   read_oasis $lib_oasis -trace_option $oasis_trace_option -keep_text
   echo "read_oasis {$lib_oasis} -trace_option $oasis_trace_option -keep_text" >> ${create_ndm_commands}
 }

  if {$oasis_all_cell_type!=""} {
     echo "## set oasis_all_cell_type \"$oasis_all_cell_type\"" >> ${create_ndm_commands}
     set_attribute [get_lib_cells */*/design] design_type $oasis_all_cell_type
     echo "set_attribute \[get_lib_cells \*\/\*\/design\] design_type $oasis_all_cell_type" >> ${create_ndm_commands}
  }
}

#########################################################
# Define orientation   
#########################################################

  if {$allow_orien!=""} {
     echo "## set allow_orien \"$allow_orien\"" >> ${create_ndm_commands}
     set_attribute [get_lib_cells */*/design] allowable_orientation $allow_orien
     echo "set_attribute \[get_lib_cells \*\/\*\/design\] allowable_orientation \{$allow_orien\}" >> ${create_ndm_commands}
  }

  if {$pad_rotation!=""} {
     echo "## set pad_rotation \"$pad_rotation\"" >> ${create_ndm_commands}
     echo "## I/O cells must have one of the design_type attribute: corner, pad, pad_spacer, flip_chip_driver, and flip_chip_pad" >> ${create_ndm_commands}
     set_attribute [get_lib_cells */*/design] reference_orientation $pad_rotation
     echo "set_attribute \[get_lib_cells \*\/\*\/design\] reference_orientation \{$pad_rotation\}" >> ${create_ndm_commands}
  }

}
#########################################################
# Define all ndm/ETM libraries to use.
#########################################################
#read_ndm ".ndm file name(s)"

if {$source_type == "ndm" && $frame_files != ""} {
  set lib_ndm ""
  if {[string match {*\**} $frame_files ]} {
     foreach lib_ndm_temp $frame_files {
     append lib_ndm [glob $lib_ndm_temp]
     }
  } else {
     set lib_ndm $frame_files 
  }
  foreach i $lib_ndm {
   read_ndm $i
   echo "read_ndm $i" >> ${create_ndm_commands}
  }
}

echo "### END_COMMAND from read_physical.tcl" >> ${create_ndm_commands}
