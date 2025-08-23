source /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/rm_icc2lm_scripts/main_validate_cell_libs.tcl
set all_ndms [glob /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/icc2_cell_lib/*.ndm]
icc2lm_cell_libs_validation -cell_libs $all_ndms -output_dir export_validation
exit
