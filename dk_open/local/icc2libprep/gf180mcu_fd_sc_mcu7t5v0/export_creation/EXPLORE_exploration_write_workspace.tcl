set_app_options -name lib.logic_model.require_same_opt_attrs -value false
set_app_options -name lib.logic_model.use_db_rail_names -value true
set_app_options -name lib.logic_model.auto_remove_timing_only_designs -value true
set_app_options -name file.lef.non_real_cut_obs_mode -value true
set_app_options -name file.lef.auto_rename_conflict_sites -value true
set_app_options -as_user_default -name lib.physical_model.block_all -value auto
set_app_options -as_user_default -name lib.physical_model.connect_within_pin -value true
set_app_options -as_user_default -name lib.physical_model.hierarchical -value true
set_app_options -as_user_default -name lib.physical_model.merge_metal_blockage -value false
set_app_options -as_user_default -name lib.physical_model.preserve_metal_blockage -value auto
set_app_options -as_user_default -name lib.physical_model.include_routing_pg_ports -value {}
set_app_options -name lib.workspace.group_libs_naming_strategies -value {common_prefix common_suffix common_prefix_and_common_suffix first_logical_lib_name}
set_app_options -name lib.workspace.allow_commit_workspace_overwrite -value true
set_app_options -name lib.workspace.group_libs_create_slg -value false
set_app_options -name lib.workspace.allow_missing_related_pg_pins -value true
set_app_options -name lib.workspace.remove_frame_bus_properties -value true
set_app_options -name lib.workspace.save_design_views -value false
set_app_options -name lib.workspace.save_layout_views -value false
set_app_options -name lib.workspace.group_libs_macro_grouping_strategy -value aggregate_single_cell
set_app_options -as_user_default -name link.require_physical -value true
set_app_options -as_user_default -name design.bus_delimiters -value {[]}
set_app_options -name lib.workspace.keep_all_physical_cells -value true
# workspace gf180mcu_fd_sc_mcu7t5v0:
create_workspace -scale_factor 1000 -technology /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/gf180nm_mcu_5LM_1TM_11K_7t_mw.tf gf180mcu_fd_sc_mcu7t5v0
read_db /mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0/lib/gf180mcu_fd_sc_mcu7t5v0__ff_n40C_5v50_shortname.db
read_db /mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0/lib/gf180mcu_fd_sc_mcu7t5v0__ss_125C_4v50_shortname.db
read_ndm /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/icc2_cell_lib/EXPLORE_frame.ndm
set_attribute -objects [get_site_defs unit] -name is_default -value false
set_attribute -objects [get_site_defs unit] -name is_default -value true
set_attribute -objects [get_site_defs unit] -name symmetry -value Y
check_workspace
commit_workspace -output ./gf180mcu_fd_sc_mcu7t5v0.ndm
remove_workspace


