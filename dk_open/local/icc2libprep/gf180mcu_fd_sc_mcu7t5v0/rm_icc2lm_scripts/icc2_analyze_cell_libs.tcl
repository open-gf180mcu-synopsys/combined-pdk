#######################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <analyze_cell_libs> <icc2_analyze_cell_libs.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

source [sh pwd]/rm_setup/icc2lm_setup.tcl

if {$ndm_flow!="etm" && $ndm_flow!="aggregate"} {

if {$run_pin_access} {

if {$source_type == "combined" || $source_type == "mw" } {
  set all_ndms ""
  set get_ndms [glob ${cell_lib_dir}/*.ndm]
  foreach ndm_temp $get_ndms {
  if {![string match "*${clib_name}_frame*" $ndm_temp]} {
   append all_ndms "$ndm_temp "
  } else {
   echo "\n${flow_info_prefix} Skipping the \"analyze_cell_libs\" step for $ndm_temp when \$source_type is \"combined\" or \"mw\""
  }
  }
  echo "set all_ndms \"$all_ndms\"" >> ${analyze_ndm_commands}
} else {
  echo "set all_ndms \"\[glob $cell_lib_dir\/*.ndm\]\"" >> ${analyze_ndm_commands}
  set all_ndms [glob $cell_lib_dir/*.ndm]
}

set tech_option "-technology"
set tech $techfile
set preplace_tech "[sh pwd]/export_rm_tcl/icc2lm_tech.tcl"
echo "set tech_option \"-technology\"" >> ${analyze_ndm_commands}
echo "set tech $techfile" >> ${analyze_ndm_commands}
echo "set preplace_tech $preplace_tech" >> ${analyze_ndm_commands}

echo "\n${flow_info_prefix} Running script \"icc2_analyze_cell_libs.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Configuration file:         [sh pwd]/rm_setup/icc2lm_setup.tcl"
echo "Library NDM:                $all_ndms"
echo "Tech:                       $tech"
echo "Run routing:                $run_routing"
echo "Analyze macro:              $analyze_macro"
echo "Selected check cells:       $check_cell_list"
echo "Utility:                    [sh pwd]/rm_icc2lm_scripts/check_lib_cell_pin_access_v5.bin" 
echo ""

# Run pin access check for standard/macro cells in the library:
set tcl_file "[sh pwd]/rm_icc2lm_scripts/check_lib_cell_pin_access_v5.bin" 
echo "set tcl_file $tcl_file" >> ${analyze_ndm_commands}
echo "source \$tcl_file" >> ${analyze_ndm_commands}
source $tcl_file

   if {!$analyze_macro} {
      if {$check_cell_list == "" && $run_routing == 1} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file" >> ${analyze_ndm_commands}	
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file
      }
      if {$check_cell_list == "" && $run_routing == 0} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file -skip_routing" >> ${analyze_ndm_commands}
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file -skip_routing
      }
      if {$check_cell_list != "" && $run_routing == 1} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file -cells $check_cell_list -check_against_all_lib_cells" >> ${analyze_ndm_commands}
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file -cells $check_cell_list -check_against_all_lib_cells
      }
      if {$check_cell_list != "" && $run_routing == 0} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file -cells $check_cell_list -check_against_all_lib_cells -skip_routing" >> ${analyze_ndm_commands}
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file -cells $check_cell_list -check_against_all_lib_cells -skip_routing
      }
   } else {
      if {$check_cell_list == "" && $run_routing == 1} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file" >> ${analyze_ndm_commands}
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file
      }   
      if {$check_cell_list == "" && $run_routing == 0} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file -skip_routing" >> ${analyze_ndm_commands}
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file -skip_routing
      }   
      if {$check_cell_list != "" && $run_routing == 1} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file -cells $check_cell_list -check_against_all_lib_cells" >> ${analyze_ndm_commands}
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file -cells $check_cell_list -check_against_all_lib_cells
      }   
      if {$check_cell_list != "" && $run_routing == 0} {
      echo "check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path \$all_ndms \$tech_option \$tech -preplace_option_file \$preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path \$tcl_file -cells $check_cell_list -check_against_all_lib_cells -skip_routing" >> ${analyze_ndm_commands} 
      check_lib_cell_pin_access_icc2 -def_unit $scale_factor -mode single_cell_only -ref_lib_path $all_ndms $tech_option $tech -preplace_option_file $preplace_tech -num_cells_per_parallel_run 100 -pin_access_check_tcl_path $tcl_file -cells $check_cell_list -check_against_all_lib_cells -skip_routing   
      }
   }

echo "exit" >> ${analyze_ndm_commands}

} else {
   echo "\n${flow_info_prefix} Skipping the \"analyze_cell_libs\" step (variable \$run_pin_access = 0)."
}

} else {
   echo "\n${flow_info_prefix} Skipping the \"analyze_cell_libs\" step (variable \$ndm_flow = ${ndm_flow})."
}

exec touch touchfiles/analyze_cell_libs

exit
