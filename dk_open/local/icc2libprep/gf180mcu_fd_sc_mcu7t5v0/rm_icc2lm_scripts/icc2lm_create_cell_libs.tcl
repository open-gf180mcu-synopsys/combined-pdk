#######################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <icc2lm_create_cell_libs.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

# 0) create necessary directory
file mkdir export_creation
file delete -force export_rm_tcl
file mkdir export_rm_tcl
file mkdir touchfiles
file mkdir log 

# 1) load flow setup:
source [sh pwd]/rm_setup/icc2lm_setup.tcl

# 2) Sanity checks:
if { $source_type != "gds_lef_oasis" && $source_type != "ndm" && $source_type != "combined" && $source_type != "mw"} {
   echo "\n${flow_err_prefix} The source type $source_type is incorrect (valid value: gds_lef_oasis | ndm | combined | mw).\n"
   exit
}

if { $source_type == "gds_lef_oasis" || $source_type == "combined"} {
   if { $gds_files == "" && $lef_files == "" && $oasis_files == ""} {
      echo "\n${flow_err_prefix} The variable \$gds_files or \$lef_files or \$oasis_files needs to be set when \$source_type is \"gds_lef_oasis\" or \"combined\".\n"
      exit
   }
}

if { $source_type == "ndm"} {
   if { $frame_files== ""} {
      echo "\n${flow_err_prefix} The variable \$frame_files needs to be set when \$source_type is \"ndm\".\n"
      exit
   }
}

if { $source_type == "mw"} {
   if { $mw_file == ""} {
      echo "\n${flow_err_prefix} The variable \$mw_file needs to be set when \$source_type is \"mw\".\n"
      exit
   }
}

if { $techfile == "" || [file exists $techfile] == 0 } {
   echo "\n${flow_err_prefix} Tech file not found or variable \$techfile not set.\n"
   exit
}
if { $clib_name == "" || $ndm_flow == "" } {
   echo "\n${flow_err_prefix} Library name variable \$clib_name or ndm flow variable \$ndm_flow not set.\n"
   exit
}

echo "\n${flow_info_prefix} Running script \"icc2lm_create_cell_libs.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Configuration file:         [sh pwd]/rm_setup/icc2lm_setup.tcl"
echo "Source type:                $source_type"
echo "Library:                    $cell_lib_dir/$clib_name"
echo "Technology file:            $techfile"
echo "Input NDM flow:             $ndm_flow"  
echo ""

# 3) Remove cell_lib directory so that we start a new one
file delete -force {*}[glob -nocomplain $cell_lib_dir/*.ndm]
#exec rm -rf $cell_lib_dir

# 4) Create cell_lib directory
if {![file exists $cell_lib_dir]} {
    file mkdir $cell_lib_dir
}

if { [file exists $cell_lib_dir] == 0 } {
   echo "\n${flow_err_prefix} Reference library directory $cell_lib_dir could not be created."
   exit
}

# 5) Create the library

if {$source_type == "combined"} {
   set ndm_flow "frame exploration"
}

if {$source_type == "mw"} {
   set ndm_flow "mw2ndm exploration"
}

echo "\n###########################################################" >> ${create_ndm_commands}
echo "### \$source_type is \"$source_type\"" >> ${create_ndm_commands}
echo "###########################################################\n" >> ${create_ndm_commands}

foreach sel_ndm_flow $ndm_flow {

########################################################
# MW2NDM flow 
########################################################
if {$sel_ndm_flow =="mw2ndm"} {
source ./rm_icc2lm_scripts/mw2ndm.tcl
continue
}

echo "\n###############################################################" >> ${create_ndm_commands}
echo "### Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology" >> ${create_ndm_commands}
echo "### Specific NDM flow: $sel_ndm_flow" >> ${create_ndm_commands}
echo "###############################################################\n" >> ${create_ndm_commands}

#########################################################
# Define library global settings
#########################################################
source ./rm_icc2lm_scripts/initial_setting.tcl

#########################################################
# Create the "normal" or "physical" or "frame" NDMs
#########################################################

if {$sel_ndm_flow == "normal" || $sel_ndm_flow == "physical" || $sel_ndm_flow == "frame" || $sel_ndm_flow == "exploration" || $sel_ndm_flow == "etm"} {
echo "\n###########################################################" >> ${create_ndm_commands}
echo "### Create \"$sel_ndm_flow\" flow NDM" >> ${create_ndm_commands}
echo "###########################################################\n" >> ${create_ndm_commands}
create_workspace -scale_factor $scale_factor -flow $sel_ndm_flow -technology $techfile ${clib_name}
echo "create_workspace -scale_factor $scale_factor -flow $sel_ndm_flow -technology $techfile ${clib_name}" >> ${create_ndm_commands}

if {$load_tech} {
source ./rm_icc2lm_scripts/tech_only.tcl
}

source ./rm_icc2lm_scripts/read_logic.tcl

if {$source_type == "combined" && $sel_ndm_flow == "exploration"} {
read_ndm $cell_lib_dir/${clib_name}_frame.ndm
echo "read_ndm $cell_lib_dir\/${clib_name}_frame.ndm" >> ${create_ndm_commands}
} elseif {$source_type == "mw" && $sel_ndm_flow == "exploration"} {
  set FRAME_LIST "[glob ${cell_lib_dir}/*.ndm]"  
  foreach frame $FRAME_LIST {
    read_ndm $frame
    echo "read_ndm $frame" >> ${create_ndm_commands}
  }
} else { 
  source ./rm_icc2lm_scripts/read_physical.tcl
}

report_workspace
echo "report_workspace" >> ${create_ndm_commands}

if {$sel_ndm_flow == "exploration"} {
group_libs
echo "group_libs" >> ${create_ndm_commands}
}

if {$source_type == "combined" && $sel_ndm_flow == "exploration" || $source_type == "mw"} {
echo "\n${flow_info_prefix} Skipping steps \"extract_frame, extract_antenna, diode_port, change_site\" when \$source_type is \"combined\" in \"exploration\" flow or \$source_type is \"mw\"" 
} else {
source ./rm_icc2lm_scripts/extract_frame.tcl
if {$sel_ndm_flow != "etm"} {
source ./rm_icc2lm_scripts/extract_antenna.tcl
source ./rm_icc2lm_scripts/diode_port.tcl
source ./rm_icc2lm_scripts/change_site.tcl
if {$ant_tcl_for_new_lib != ""  && $enable_icv_ant} {
   echo "\n${flow_info_prefix} Skipping to load \"$ant_tcl_for_new_lib\" when variable \$enable_icv_ant = 1."
} elseif {$ant_tcl_for_new_lib !=  "" } {
echo "source $ant_tcl_for_new_lib" >> ${create_ndm_commands}
source $ant_tcl_for_new_lib
}
}
}

echo "report_app_options > .\/export_creation\/${clib_name}_${sel_ndm_flow}_report_app_options.rep" >> ${create_ndm_commands}
report_app_options > ./export_creation/${clib_name}_${sel_ndm_flow}_report_app_options.rep

if {$sel_ndm_flow == "exploration"} {
    write_workspace -file ./export_creation/${clib_name}_${sel_ndm_flow}_write_workspace.tcl
    echo "write_workspace -file .\/export_creation\/${clib_name}_${sel_ndm_flow}_write_workspace.tcl" >> ${create_ndm_commands}
    if {$use_process_workspaces} {
        echo 'process_workspaces -check_options \"-allow_missing\"' >> ${create_ndm_commands}
        process_workspaces -check_options "-allow_missing" 
    } else {
        echo "check_workspace -allow_missing" >> ${create_ndm_commands}
        check_workspace -allow_missing
        echo "commit_workspace" >> ${create_ndm_commands}
        commit_workspace
    }
    echo "remove_workspace" >> ${create_ndm_commands}
    remove_workspace
    echo "sh mv \*.ndm $cell_lib_dir" >> ${create_ndm_commands}
    sh mv *.ndm $cell_lib_dir
} elseif {$sel_ndm_flow =="frame"} {
    write_workspace -file ./export_creation/${clib_name}_${sel_ndm_flow}_write_workspace.tcl
    echo "write_workspace -file .\/export_creation\/${clib_name}_${sel_ndm_flow}_write_workspace.tcl" >> ${create_ndm_commands}
    if {$use_process_workspaces} {
        echo 'process_workspaces -check_options \"-allow_missing\" -output ${clib_name}_${sel_ndm_flow}.ndm' >> ${create_ndm_commands}
        process_workspaces -check_options "-allow_missing" -output ${clib_name}_${sel_ndm_flow}.ndm 
    } else {
        echo "check_workspace -allow_missing" >> ${create_ndm_commands}
        check_workspace -allow_missing
        echo "commit_workspace -output ${clib_name}_${sel_ndm_flow}.ndm" >> ${create_ndm_commands}
        commit_workspace -output ${clib_name}_${sel_ndm_flow}.ndm
    }
    echo "remove_workspace" >> ${create_ndm_commands}
    remove_workspace
    echo "sh mv \*.ndm $cell_lib_dir" >> ${create_ndm_commands}
    sh mv *.ndm $cell_lib_dir
} else { 
    if {$use_process_workspaces} {
        echo 'process_workspaces -check_options \"-allow_missing\" -force' >> ${create_ndm_commands}
        process_workspaces -check_options "-allow_missing" -force 
    } else {
        echo "check_workspace -allow_missing" >> ${create_ndm_commands}
        check_workspace -allow_missing
        echo "commit_workspace -force -output ${clib_name}.ndm" >> ${create_ndm_commands}
        commit_workspace -force -output ${clib_name}_${sel_ndm_flow}.ndm
    }
    echo "remove_workspace" >> ${create_ndm_commands}
    remove_workspace
    echo "sh mv \*.ndm $cell_lib_dir" >> ${create_ndm_commands}
    sh mv *.ndm $cell_lib_dir
}

#########################################################
# Load TCL-based antenna properties for existing library
#########################################################

if {($ant_tcl_for_existing_lib != "" || $ant_clf_for_existing_lib != "" )&& $enable_icv_ant} {
   echo "\n${flow_info_prefix} Skipping to load \"$ant_tcl_for_existing_lib $ant_clf_for_existing_lib\" when variable \$enable_icv_ant = 1."
}

if {$ant_tcl_for_existing_lib != "" && $ant_tcl_for_new_lib != ""} {
   echo "\n${flow_info_prefix} Skipping to load \"$ant_tcl_for_existing_lib\" when variable \$ant_tcl_for_new_lib is not empty."
}

if {$ant_tcl_for_existing_lib != "" && $ant_tcl_for_new_lib == "" && !$enable_icv_ant} {
   if {($source_type == "combined" || $source_type == "mw") && $sel_ndm_flow == "exploration"} {
   echo "\n${flow_info_prefix} Skipping to load \"$ant_tcl_for_existing_lib\" when \$source_type is \"combined\" in \"exploration\" flow"
   } elseif {$sel_ndm_flow != "etm"} {
   source ./rm_icc2lm_scripts/load_ant_tcl_for_existing_lib.tcl
   }
}

if {$ant_clf_for_existing_lib != "" && !$enable_icv_ant} {
   if {($source_type == "combined" && $sel_ndm_flow == "exploration") || $sel_ndm_flow == "exploration" || $source_type == "mw" } {
   echo "\n${flow_info_prefix} Skipping to load \"$ant_clf_for_existing_lib\" in \"exploration\" flow"
   } elseif {$sel_ndm_flow != "etm"} {
   source ./rm_icc2lm_scripts/load_ant_clf_for_existing_lib.tcl
   }
}

}
}

#########################################################
# Create the "aggregate" NDMs
#########################################################

if {$sel_ndm_flow == "aggregate"} {
  if {$aggre_ndm == ""} {
   echo "\n${flow_err_prefix} The variable \"$aggre_ndm\" not set for aggregate flow.\n"
   exit
  }

echo "\n###########################################################" >> ${create_ndm_commands}
echo "### Create \"$sel_ndm_flow\" flow NDM" >> ${create_ndm_commands}
echo "###########################################################\n" >> ${create_ndm_commands}

create_workspace -scale_factor $scale_factor -flow $sel_ndm_flow ${clib_name}_$sel_ndm_flow
echo "create_workspace -scale_factor $scale_factor -flow $sel_ndm_flow ${clib_name}_$sel_ndm_flow" >> ${create_ndm_commands}

  set lib_ndm ""
  if {[string match {*\**} $aggre_ndm]} {
     foreach aggre_ndm_temp $aggre_ndm {
     append lib_ndm [glob $aggre_ndm_temp]
     }
  } else {
     set lib_ndm $aggre_ndm
  }
  foreach i $lib_ndm {
   read_ndm $i
   echo "read_ndm $i" >> ${create_ndm_commands}
  }

get_libs
echo "get_libs" >> ${create_ndm_commands}

report_workspace
echo "report_workspace" >> ${create_ndm_commands}

echo "check_workspace" >> ${create_ndm_commands}
if {$aggre_lib_order!=""} {
   echo "set_lib_order \{$aggre_lib_order\}" >> ${create_ndm_commands}
}
echo "commit_workspace -force -output $cell_lib_dir/${clib_name}_${ndm_flow}.ndm" >> ${create_ndm_commands}
echo "remove_workspace" >> ${create_ndm_commands}

check_workspace
if {$aggre_lib_order!=""} {
   set_lib_order $aggre_lib_order
}
commit_workspace -force -output $cell_lib_dir/${clib_name}_${ndm_flow}.ndm
remove_workspace
}

exec touch touchfiles/create_cell_libs

echo "exit" >> ${create_ndm_commands}
exit

