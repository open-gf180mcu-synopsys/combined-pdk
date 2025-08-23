
###########################################################
### $source_type is "combined"
###########################################################


###############################################################
### Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology
### Specific NDM flow: frame
###############################################################


### BEGIN_COMMAND from initial_setting.tcl
set sh_continue_on_error true
set_app_options -as_user_default -name lib.workspace.group_libs_naming_strategies -value "common_prefix common_suffix common_prefix_and_common_suffix first_logical_lib_name"
set_app_options -as_user_default -name lib.workspace.allow_commit_workspace_overwrite -value true
set_app_options -as_user_default -name lib.workspace.group_libs_create_slg -value false
set_app_options -as_user_default -name lib.workspace.allow_missing_related_pg_pins -value true
set_app_options -as_user_default -name lib.workspace.remove_frame_bus_properties -value true
set_app_options -as_user_default -name lib.workspace.save_design_views -value false
set_app_options -as_user_default -name lib.workspace.save_layout_views -value false
set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value aggregate_single_cell
set_app_options -as_user_default -name link.require_physical -value true
set_app_options -as_user_default -name design.bus_delimiters -value {[]}
set_app_options -as_user_default -name lib.workspace.keep_all_physical_cells -value true
### END_COMMAND from initial_setting.tcl

###########################################################
### Create "frame" flow NDM
###########################################################

create_workspace -scale_factor 1000 -flow frame -technology ./gf180nm_mcu_5LM_1TM_11K_7t_mw.tf EXPLORE

### BEGIN_COMMAND from tech_only.tcl
set_attribute [get_layers li1 -quiet] routing_direction vertical
set_attribute [get_layers li1 -quiet] track_offset 0.0
set_attribute [get_layers met1 -quiet] routing_direction horizontal
set_attribute [get_layers met1 -quiet] track_offset 0.0
set_attribute [get_layers met2 -quiet] routing_direction vertical
set_attribute [get_layers met2 -quiet] track_offset 0.0
set_attribute [get_layers met3 -quiet] routing_direction horizontal
set_attribute [get_layers met3 -quiet] track_offset 0.0
set_attribute [get_layers met4 -quiet] routing_direction vertical
set_attribute [get_layers met4 -quiet] track_offset 0.0
set_attribute [get_layers met5 -quiet] routing_direction horizontal
set_attribute [get_layers met5 -quiet] track_offset 0.0
set_attribute [get_site_defs] is_default false
set_attribute [get_site_defs unit] is_default true
set_attribute [get_site_defs unit] symmetry Y
### END_COMMAND from tech_only.tcl

### BEGIN_COMMAND from read_logic.tcl
set_app_options -as_user_default -name lib.logic_model.require_same_opt_attrs -value false
set_app_options -as_user_default -name lib.logic_model.use_db_rail_names -value true
set_app_options -as_user_default -name lib.logic_model.auto_remove_timing_only_designs -value true
read_db {/mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0/lib/gf180mcu_fd_sc_mcu7t5v0__ff_n40C_5v50_shortname.db /mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0/lib/gf180mcu_fd_sc_mcu7t5v0__ss_125C_4v50_shortname.db}
### END_COMMAND from read_logic.tcl

### BEGIN_COMMAND from read_physical.tcl
set_app_options -as_user_default -name file.lef.non_real_cut_obs_mode -value true
set_app_options -as_user_default -name file.lef.auto_rename_conflict_sites -value true
read_lef -configure_frame_options -cell_boundary by_overlap_layer {/mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0/lef/gf180mcu_fd_sc_mcu7t5v0.lef}
### END_COMMAND from read_physical.tcl
report_workspace

### BEGIN_COMMAND from extract_frame.tcl
set_app_options -as_user_default -name lib.physical_model.block_all -value auto
set_app_options -as_user_default -name lib.physical_model.connect_within_pin -value true
set_app_options -as_user_default -name lib.physical_model.hierarchical -value true
set_app_options -as_user_default -name lib.physical_model.merge_metal_blockage -value false
set_app_options -as_user_default -name lib.physical_model.preserve_metal_blockage -value auto
set_app_options -as_user_default -name lib.physical_model.include_routing_pg_ports -value {}
### END_COMMAND from extract_frame.tcl

### BEGIN_COMMAND from extract_antenna.tcl
### END_COMMAND from extract_antenna.tcl

### BEGIN_COMMAND from diode_port.tcl
set_attribute [get_lib_pins -quiet -of_objects [get_lib_cells */gf180mcu_fd_sc_mcu7t5v0__antenna/design] -filter "name == I"] is_diode true
### END_COMMAND from diode_port.tcl

### BEGIN_COMMAND from change_site.tcl
### END_COMMAND from change_site.tcl
report_app_options > ./export_creation/EXPLORE_frame_report_app_options.rep
write_workspace -file ./export_creation/EXPLORE_frame_write_workspace.tcl
'process_workspaces -check_options "-allow_missing" -output EXPLORE_frame.ndm'
remove_workspace
sh mv *.ndm /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/icc2_cell_lib

###############################################################
### Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology
### Specific NDM flow: exploration
###############################################################


### BEGIN_COMMAND from initial_setting.tcl
set sh_continue_on_error true
set_app_options -as_user_default -name lib.workspace.group_libs_naming_strategies -value "common_prefix common_suffix common_prefix_and_common_suffix first_logical_lib_name"
set_app_options -as_user_default -name lib.workspace.allow_commit_workspace_overwrite -value true
set_app_options -as_user_default -name lib.workspace.group_libs_create_slg -value false
set_app_options -as_user_default -name lib.workspace.allow_missing_related_pg_pins -value true
set_app_options -as_user_default -name lib.workspace.remove_frame_bus_properties -value true
set_app_options -as_user_default -name lib.workspace.save_design_views -value false
set_app_options -as_user_default -name lib.workspace.save_layout_views -value false
set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value aggregate_single_cell
set_app_options -as_user_default -name link.require_physical -value true
set_app_options -as_user_default -name design.bus_delimiters -value {[]}
set_app_options -as_user_default -name lib.workspace.keep_all_physical_cells -value true
### END_COMMAND from initial_setting.tcl

###########################################################
### Create "exploration" flow NDM
###########################################################

create_workspace -scale_factor 1000 -flow exploration -technology ./gf180nm_mcu_5LM_1TM_11K_7t_mw.tf EXPLORE

### BEGIN_COMMAND from tech_only.tcl
set_attribute [get_layers li1 -quiet] routing_direction vertical
set_attribute [get_layers li1 -quiet] track_offset 0.0
set_attribute [get_layers met1 -quiet] routing_direction horizontal
set_attribute [get_layers met1 -quiet] track_offset 0.0
set_attribute [get_layers met2 -quiet] routing_direction vertical
set_attribute [get_layers met2 -quiet] track_offset 0.0
set_attribute [get_layers met3 -quiet] routing_direction horizontal
set_attribute [get_layers met3 -quiet] track_offset 0.0
set_attribute [get_layers met4 -quiet] routing_direction vertical
set_attribute [get_layers met4 -quiet] track_offset 0.0
set_attribute [get_layers met5 -quiet] routing_direction horizontal
set_attribute [get_layers met5 -quiet] track_offset 0.0
set_attribute [get_site_defs] is_default false
set_attribute [get_site_defs unit] is_default true
set_attribute [get_site_defs unit] symmetry Y
### END_COMMAND from tech_only.tcl

### BEGIN_COMMAND from read_logic.tcl
set_app_options -as_user_default -name lib.logic_model.require_same_opt_attrs -value false
set_app_options -as_user_default -name lib.logic_model.use_db_rail_names -value true
set_app_options -as_user_default -name lib.logic_model.auto_remove_timing_only_designs -value true
read_db {/mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0/lib/gf180mcu_fd_sc_mcu7t5v0__ff_n40C_5v50_shortname.db /mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0/lib/gf180mcu_fd_sc_mcu7t5v0__ss_125C_4v50_shortname.db}
### END_COMMAND from read_logic.tcl
read_ndm /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/icc2_cell_lib/EXPLORE_frame.ndm
report_workspace
group_libs
report_app_options > ./export_creation/EXPLORE_exploration_report_app_options.rep
write_workspace -file ./export_creation/EXPLORE_exploration_write_workspace.tcl
'process_workspaces -check_options "-allow_missing"'
remove_workspace
sh mv *.ndm /mnt/designkits/gf180MCU/dk_open/local/icc2libprep/gf180mcu_fd_sc_mcu7t5v0/icc2_cell_lib
exit
