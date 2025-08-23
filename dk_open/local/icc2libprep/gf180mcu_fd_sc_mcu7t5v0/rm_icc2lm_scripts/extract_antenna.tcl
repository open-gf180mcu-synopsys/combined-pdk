##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <extract_antenna.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\n${flow_info_prefix} Running script \"extract_antenna.tcl\" with the following settings:\n"
echo "Parameter                          Value"
echo "-------------------------------    -------------------"
echo "Enable ICV antenna extraction:     $enable_icv_ant"
echo ""

echo "\n### BEGIN_COMMAND from extract_antenna.tcl" >> ${create_ndm_commands}

if {$enable_icv_ant} { 
echo "### set enable_icv_ant 1, extract antenna properties by in-design ICV" >> ${create_ndm_commands}
echo "### Please use latest ICV-2015.12-SP2 with the ICC2-2016.03 build" >> ${create_ndm_commands}

setenv PATH "/remote/code/Hercules/hercules_arch/archives/image/ICVALIDATOR/2015.12-SP2/latest/Testing/bin/AMD.64:$env(PATH)"
setenv ICV_HOME_DIR "/remote/code/Hercules/hercules_arch/archives/image/ICVALIDATOR/2015.12-SP2/latest/Testing"
setenv ICV_INCLUDES "/remote/code/Hercules/hercules_arch/archives/image/ICVALIDATOR/2015.12-SP2/latest/Testing/include"

set_app_options -as_user_default -name signoff.antenna.enabled -value true
echo "set_app_options -as_user_default -name signoff.antenna.enabled -value true" >> ${create_ndm_commands}

if {$cont_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.contact_layer -value $cont_layer 
echo "set_app_options -as_user_default -name signoff.antenna.contact_layer -value $cont_layer" >> ${create_ndm_commands}
}
if {$diffusion_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.diffusion_layer -value $diffusion_layer
echo "set_app_options -as_user_default -name signoff.antenna.diffusion_layer -value $diffusion_layer" >> ${create_ndm_commands}
}
if {$poly_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.poly_layer -value $poly_layer 
echo "set_app_options -as_user_default -name signoff.antenna.poly_layer -value $poly_layer" >> ${create_ndm_commands}
}
if {$v0_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.v0_layers_between_m1_m0 -value $v0_layer
echo "set_app_options -as_user_default -name signoff.antenna.v0_layers_between_m1_m0 -value $v0_layer" >> ${create_ndm_commands}
}
if {$m0_poly_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.m0_layers_for_poly_connection -value $m0_poly_layer
echo "set_app_options -as_user_default -name signoff.antenna.m0_layers_for_poly_connection -value $m0_poly_layer" >> ${create_ndm_commands}
}
if {$m0_diff_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.m0_layers_for_diffusion_connection -value $m0_diff_layer
echo "set_app_options -as_user_default -name signoff.antenna.m0_layers_for_diffusion_connection -value $m0_diff_layer" >> ${create_ndm_commands}
}
if {$cont_m0_diff_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.contact_layers_between_m0_diffusion -value $cont_m0_diff_layer
echo "set_app_options -as_user_default -name signoff.antenna.contact_layers_between_m0_diffusion -value $cont_m0_diff_layer" >> ${create_ndm_commands}
}
if {$gate_class1_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.gate_class1_layers -value $gate_class1_layer
echo "set_app_options -as_user_default -name signoff.antenna.gate_class1_layers -value $gate_class1_layer" >> ${create_ndm_commands}
}
if {$gate_class2_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.gate_class2_layers -value $gate_class2_layer
echo "set_app_options -as_user_default -name signoff.antenna.gate_class2_layers -value $gate_class2_layer" >> ${create_ndm_commands}
}
if {$gate_class3_layer!=""} {
set_app_options -as_user_default -name signoff.antenna.gate_class3_layers -value $gate_class3_layer
echo "set_app_options -as_user_default -name signoff.antenna.gate_class3_layers -value $gate_class3_layer" >> ${create_ndm_commands}
}
if {$custom_runset_file!=""} {
set_app_options -as_user_default -name signoff.antenna.custom_runset_file -value $custom_runset_file
echo "set_app_options -as_user_default -name signoff.antenna.custom_runset_file -value $custom_runset_file" >> ${create_ndm_commands}
}

set_app_options -as_user_default -name signoff.antenna.treat_source_drain_as_diodes -value true 
echo "set_app_options -as_user_default -name signoff.antenna.treat_source_drain_as_diodes -value true" >> ${create_ndm_commands}
set_app_options -as_user_default -name signoff.antenna.top_cell_pin_only -value true
echo "set_app_options -as_user_default -name signoff.antenna.top_cell_pin_only -value true" >> ${create_ndm_commands}

}

echo "### END_COMMAND from extract_antenna.tcl" >> ${create_ndm_commands}
