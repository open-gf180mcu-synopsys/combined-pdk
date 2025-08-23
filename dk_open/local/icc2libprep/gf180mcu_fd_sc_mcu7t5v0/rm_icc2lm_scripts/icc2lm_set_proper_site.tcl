##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <set_proper_site> <icc2lm_set_proper_site.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

source [sh pwd]/rm_setup/icc2lm_setup.tcl

foreach sel_ndm_flow $ndm_flow {

if {$sel_ndm_flow!="etm" && $sel_ndm_flow!="aggregate"} {

if {$set_proper_site} {
set technology $techfile
echo "set technology $techfile" >> ${set_proper_site_commands}
set ndm_list [glob $cell_lib_dir/*.ndm]
echo "set ndm_list \[glob $cell_lib_dir\/*.ndm\]" >> ${set_proper_site_commands}

echo "\n${flow_info_prefix} Running script \"set_proper_site.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Configuration file:         [sh pwd]/rm_setup/icc2lm_setup.tcl"
echo "Technology file:            $techfile"
echo "Library NDM:                $ndm_list"

if {$save_layout_design_views} {
set_app_options -as_user_default -name lib.workspace.save_design_views -value true
echo "set_app_options -as_user_default -name lib.workspace.save_design_views -value true" >> ${set_proper_site_commands}
set_app_options -as_user_default -name lib.workspace.save_layout_views -value true
echo "set_app_options -as_user_default -name lib.workspace.save_layout_views -value true" >> ${set_proper_site_commands}
} else {
set_app_options -as_user_default -name lib.workspace.save_design_views -value false
echo "set_app_options -as_user_default -name lib.workspace.save_design_views -value false" >> ${set_proper_site_commands}
set_app_options -as_user_default -name lib.workspace.save_layout_views -value false
echo "set_app_options -as_user_default -name lib.workspace.save_layout_views -value false" >> ${set_proper_site_commands}
}
 
echo "source [sh pwd]\/rm_icc2lm_scripts\/proc_set_proper_site.tcl" >> ${set_proper_site_commands}
source [sh pwd]/rm_icc2lm_scripts/proc_set_proper_site.tcl
echo "proc_set_proper_site -technology \$technology -ndm_list \$ndm_list" >> ${set_proper_site_commands}
proc_set_proper_site -technology $technology -ndm_list $ndm_list
echo "exit" >> ${set_proper_site_commands}
} else {
  echo "\n${flow_info_prefix} >> Skipping the \"set_proper_site\" step (variable \$set_proper_site = 0)."
}

} else {
   echo "\n${flow_info_prefix} >> Skipping the \"set_proper_site\" step (current \$ndm_flow = ${sel_ndm_flow})."
}

}

exec touch touchfiles/set_proper_site
exit

