##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <load_ant_tcl_for_existing_lib.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\n### BEGIN_COMMAND from load_ant_tcl_for_existing_lib.tcl" >> ${create_ndm_commands}

echo "\n${flow_info_prefix} Running script \"load_ant_tcl_for_existing_lib.tcl\"\n"

echo "\n###########################################################" >> ${create_ndm_commands}
echo "###  Load TCL-based antenna properties by \"edit\" flow" >> ${create_ndm_commands}
echo "###########################################################" >> ${create_ndm_commands}

set all_ndms [glob ${cell_lib_dir}/*.ndm]
  foreach ndm $all_ndms {
      if {![string match "*${clib_name}_tech_only*" $ndm]} {
      create_workspace -scale_factor $scale_factor -flow edit $ndm
      echo "\ncreate_workspace -scale_factor $scale_factor -flow edit $ndm" >> ${create_ndm_commands}
      source $ant_tcl_for_existing_lib
      echo "source $ant_tcl_for_existing_lib" >> ${create_ndm_commands}
      echo "check_workspace -allow_missing" >> ${create_ndm_commands}
      echo "commit_workspace -force -output $ndm" >> ${create_ndm_commands}
      echo "remove_workspace" >> ${create_ndm_commands}
      check_workspace -allow_missing
      commit_workspace -force -output $ndm
      remove_workspace
    }
  }

echo "### END_COMMAND from load_ant_tcl_for_existing_lib.tcl" >> ${create_ndm_commands}
