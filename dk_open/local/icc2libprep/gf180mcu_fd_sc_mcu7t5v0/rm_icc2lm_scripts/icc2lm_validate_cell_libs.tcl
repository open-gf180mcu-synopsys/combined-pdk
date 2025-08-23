##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <validate_cell_libs> <icc2lm_validate_cell_libs.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

source [sh pwd]/rm_setup/icc2lm_setup.tcl

foreach sel_ndm_flow $ndm_flow {

echo "\n${flow_info_prefix} Running script \"icc2lm_validate_cell_libs.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Configuration file:         [sh pwd]/rm_setup/icc2lm_setup.tcl"
echo "Library:                    $cell_lib_dir/$clib_name"

echo "source [sh pwd]\/rm_icc2lm_scripts\/main_validate_cell_libs.tcl" >> ${validate_ndm_commands}
source [sh pwd]/rm_icc2lm_scripts/main_validate_cell_libs.tcl

echo "set all_ndms \[glob $cell_lib_dir\/*.ndm\]" >> ${validate_ndm_commands}
set all_ndms [glob $cell_lib_dir/*.ndm]

if {$detail_report} {
  if {$min_pin_layer != ""} {
    echo "icc2lm_cell_libs_validation -cell_libs \$all_ndms -output_dir export_validation -detail -min_pin_layer $min_pin_layer" >> ${validate_ndm_commands}
    icc2lm_cell_libs_validation -cell_libs $all_ndms -output_dir export_validation -detail -min_pin_layer $min_pin_layer
  } else {
    echo "icc2lm_cell_libs_validation -cell_libs \$all_ndms -output_dir export_validation -detail" >> ${validate_ndm_commands}
    icc2lm_cell_libs_validation -cell_libs $all_ndms -output_dir export_validation -detail 
  }
} else {
  if {$min_pin_layer != ""} {
    echo "icc2lm_cell_libs_validation -cell_libs \$all_ndms -output_dir export_validation -min_pin_layer $min_pin_layer" >> ${validate_ndm_commands}
    icc2lm_cell_libs_validation -cell_libs $all_ndms -output_dir export_validation -min_pin_layer $min_pin_layer
  } else {
    echo "icc2lm_cell_libs_validation -cell_libs \$all_ndms -output_dir export_validation" >> ${validate_ndm_commands}
    icc2lm_cell_libs_validation -cell_libs $all_ndms -output_dir export_validation
  }
} 
}

if {$run_compare_db && $db_files != ""} {
    foreach sel_all_ndms $all_ndms {
        echo "\ncreate_workspace -flow verification $sel_all_ndms" >> ${validate_ndm_commands}
        create_workspace -flow verification $sel_all_ndms
        if {$process_labels !=""} {
            set logic_db ""
            if {[string match {*\**} $db_files]} {
                foreach logic_db_temp $db_files {
                    #set logic_db [glob $logic_db_temp]
                    append logic_db [glob $logic_db_temp]
                    append logic_db " "
                    foreach logic_db $logic_db {
                        echo "compare_db -process_label $process_labels $logic_db" >> ${validate_ndm_commands}
                        compare_db -process_label $process_labels $logic_db
                    }
                }
            } else {
                foreach logic_db $db_files {
                    echo "compare_db -process_label $process_labels $logic_db" >> ${validate_ndm_commands}
                    compare_db -process_label $process_labels $logic_db
                }
            }
        } else {
            set logic_db ""
            if {[string match {*\**} $db_files]} {
                foreach logic_db_temp $db_files {
                    set logic_db [glob $logic_db_temp]
                    foreach logic_db $logic_db {
                        echo "compare_db $logic_db" >> ${validate_ndm_commands}
                        compare_db $logic_db
                    }
                }
            } else {
                foreach logic_db $db_files {
                    echo "compare_db $logic_db" >> ${validate_ndm_commands}
                    compare_db $logic_db
                }
            }
        }
        echo "remove_workspace" >> ${validate_ndm_commands}
        remove_workspace
    }
}


if {$run_compare_ndm && $comparison_ndm !=""} {
    foreach sel_all_ndms $all_ndms {
        echo "\ncreate_workspace -flow verification $sel_all_ndms" >> ${validate_ndm_commands}
        create_workspace -flow verification $sel_all_ndms
        echo "compare_ndm $comparison_ndm" >> ${validate_ndm_commands}
        compare_ndm $comparison_ndm
        echo "remove_workspace" >> ${validate_ndm_commands}
        remove_workspace
    }
}

echo "exit" >> ${validate_ndm_commands}

exec touch touchfiles/validate_cell_libs
exit

