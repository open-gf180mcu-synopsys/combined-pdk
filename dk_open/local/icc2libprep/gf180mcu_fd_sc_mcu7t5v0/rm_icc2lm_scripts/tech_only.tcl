##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <tech_only.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

if { $site_default == "" } {
   echo "\n${flow_err_prefix} Default site variable \$site_default not set."
   exit
}
if { $site_symmetry == "" } {
   echo "\n${flow_err_prefix} Site symmetry variable \$site_symmetry not set."
   exit
}

echo "\n${flow_info_prefix} Running script \"tech_only.tcl\" with the following settings:\n"
echo "Parameter                       Value"
echo "-----------------------         -------------------"
echo "Routing direction\/offset:      $tech_info(ROUTE,LAYER_DIRECTIONS,OFFSET)"
echo "Default site:                   $site_default"
echo "Site symmetry:                  $site_symmetry"        
echo ""

echo "\n### BEGIN_COMMAND from tech_only.tcl" >> ${create_ndm_commands}

echo "\n### Export from reference NDM \"${clib_name}_$sel_ndm_flow\"" >> ${create_tech_commands}

foreach layer_list $tech_info(ROUTE,LAYER_DIRECTIONS,OFFSET) {
set layer [lindex $layer_list 0]
set direction [lindex $layer_list 1]
set offset [lindex $layer_list 2]
set_attribute [get_layers $layer -quiet] routing_direction $direction
echo "set_attribute \[get_layers $layer -quiet] routing_direction $direction" >> ${create_tech_commands}
echo "set_attribute \[get_layers $layer -quiet] routing_direction $direction" >> ${create_ndm_commands}
set_attribute [get_layers $layer -quiet] track_offset $offset
echo "set_attribute \[get_layers $layer -quiet] track_offset $offset" >> ${create_tech_commands}
echo "set_attribute \[get_layers $layer -quiet] track_offset $offset" >> ${create_ndm_commands}
}

## set attribute for site
if {$site_default != ""} {
   set_attribute [get_site_defs] is_default false
   echo "set_attribute \[get_site_defs\] is_default false" >> ${create_tech_commands}
   echo "set_attribute \[get_site_defs\] is_default false" >> ${create_ndm_commands}
   set_attribute [get_site_defs $site_default] is_default true
   echo "set_attribute \[get_site_defs $site_default\] is_default true" >> ${create_tech_commands}
   echo "set_attribute \[get_site_defs $site_default\] is_default true" >> ${create_ndm_commands}
}

foreach site_sym_list $site_symmetry {
   set site_name [lindex $site_sym_list 0]
   set site_sym [lindex $site_sym_list 1]
   set_attribute [get_site_defs $site_name] symmetry $site_sym
   echo "set_attribute \[get_site_defs $site_name\] symmetry $site_sym" >> ${create_tech_commands}
   echo "set_attribute \[get_site_defs $site_name\] symmetry $site_sym" >> ${create_ndm_commands}
}   	

## set number of mask for routing layer
if {$mask_info(ROUTE,NUM_MASK) != ""} {
  foreach mask_list $mask_info(ROUTE,NUM_MASK) {
    set layer [lindex $mask_list 0]
    set mask [lindex $mask_list 1]
    set_attribute [get_layers $layer -quiet] number_of_masks $mask
    echo "set_attribute \[get_layers $layer -quiet] number_of_masks $mask" >> ${create_tech_commands}
    echo "set_attribute \[get_layers $layer -quiet] number_of_masks $mask" >> ${create_ndm_commands}
  }
}
echo "### END_COMMAND from tech_only.tcl" >> ${create_ndm_commands}
