##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <mw2ndm.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\n${flow_info_prefix} Running script \"mw2ndm.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Input MW library:           $mw_file"
echo ""

echo "\n### BEGIN_COMMAND from mw2ndm.tcl" >> ${create_ndm_commands}
set ICC1CODE "icc_shell"


#########################################################
# Define all the MW files to use.
#########################################################
if {$mw_file != ""} {
  set lib_mw ""
  if {[string match {*\**} $mw_file]} {
     foreach lib_mw_temp $mw_file { 
      append lib_mw [glob $lib_mw_temp]
     }
  } else {
     set lib_mw $mw_file
  }
  # MW2NDM conversion 
  set export_icc2_frame_commands "./export_rm_tcl/export_icc2_frame.tcl" 
  echo "set export_icc2_frame_commands \"./export_rm_tcl/export_icc2_frame.tcl\"" >> ${create_ndm_commands}
  set import_icc_fram_commands "./export_rm_tcl/import_icc_fram.tcl"
  echo "set import_icc_fram_commands \"./export_rm_tcl/import_icc_fram.tcl\"" >> ${create_ndm_commands}

  # Remove MW2NDM directory
  exec rm -rf MW2NDM
  echo "exec rm -rf MW2NDM" >> ${create_ndm_commands}
  
  # export_icc2_frame
  echo "export_icc2_frame -library \{ $lib_mw \} -output_directory MW2NDM" >> ${export_icc2_frame_commands}
  echo "exit" >> ${export_icc2_frame_commands}
  exec ${ICC1CODE} -f ${export_icc2_frame_commands}
  echo "exec ${ICC1CODE} -f ${export_icc2_frame_commands}" >> ${create_ndm_commands}
  
  # import_icc_fram
  set MW2NDM_LIST [glob MW2NDM/data/LEF/*.gz]
  foreach mw2ndm $MW2NDM_LIST {
    set mw2ndm_name [lindex [split $mw2ndm "/"] end]
    set mw2ndm_name [string map {.tar.gz ""} $mw2ndm_name]
    set tech_file "./MW2NDM/data/TF/${mw2ndm_name}.tf"
    append mw2ndm_name "_${clib_name}_frame.ndm"
    echo "create_workspace -technology $tech_file -flow frame ICC_FRAM" >> ${import_icc_fram_commands}
    echo "import_icc_fram $mw2ndm" >> ${import_icc_fram_commands}
    echo "check_workspace" >> ${import_icc_fram_commands}
    echo "commit_workspace -force -output $cell_lib_dir/$mw2ndm_name" >> ${import_icc_fram_commands}
  }
  source ${import_icc_fram_commands}
  echo "source ${import_icc_fram_commands}" >> ${create_ndm_commands}
}

echo "### END_COMMAND from mw2ndm.tcl" >> ${create_ndm_commands}
