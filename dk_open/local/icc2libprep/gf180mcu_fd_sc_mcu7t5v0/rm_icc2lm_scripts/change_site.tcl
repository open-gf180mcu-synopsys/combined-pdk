##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <change_site.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\n${flow_info_prefix} Running script \"change_site.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "change_site:                $change_site"
echo ""

echo "\n### BEGIN_COMMAND from change_site.tcl" >> ${create_ndm_commands}

if {$change_site} {
  echo "### set change_site 1, replace site definition for all lib cells by $site_default" >> ${create_ndm_commands} 
  set_attribute [get_lib_cells */*/design] site_name $site_default
  echo "set_attribute \[get_lib_cells \*\/\*\/design\] site_name $site_default" >> ${create_ndm_commands}
}

echo "### END_COMMAND from change_site.tcl" >> ${create_ndm_commands}

