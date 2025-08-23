set technology ./gf180nm_mcu_5LM_1TM_11K_7t_mw.tf
set ndm_list [glob /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/icc2_cell_lib/*.ndm]
set_app_options -as_user_default -name lib.workspace.save_design_views -value false
set_app_options -as_user_default -name lib.workspace.save_layout_views -value false
source /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/rm_icc2lm_scripts/proc_set_proper_site.tcl
proc_set_proper_site -technology $technology -ndm_list $ndm_list
exit
