##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <diode_port.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

# Sanity checks:
if {$diode_cells != "" && $diode_pin == ""} {
   echo "\n${flow_err_prefix} No diode pin name defined (\$diode_pin)"
   exit
}

echo "\n${flow_info_prefix} Running script \"diode_port.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Diode cells:                $diode_cells"
echo "Diode pin:                  $diode_pin"
echo ""

echo "\n### BEGIN_COMMAND from diode_port.tcl" >> ${create_ndm_commands}

foreach _current_cell $diode_cells {
  set_attribute [get_lib_pins -quiet -of_objects [get_lib_cells */${_current_cell}/design] -filter "name == $diode_pin"] is_diode true
  echo "set_attribute \[get_lib_pins -quiet -of_objects \[get_lib_cells \*\/${_current_cell}\/design] -filter \"name == $diode_pin\"] is_diode true" >> ${create_ndm_commands}
}

echo "### END_COMMAND from diode_port.tcl" >> ${create_ndm_commands}

