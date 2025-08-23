##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <initial_setting.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\n${flow_info_prefix} Running script \"initial_setting.tcl\" with the following settings:\n"
echo ""

echo "\n### BEGIN_COMMAND from initial_setting.tcl" >> ${create_ndm_commands}

set sh_continue_on_error true
echo "set sh_continue_on_error true" >> ${create_ndm_commands}

set_app_options -as_user_default -name lib.workspace.group_libs_naming_strategies -value "common_prefix common_suffix common_prefix_and_common_suffix first_logical_lib_name"
echo "set_app_options -as_user_default -name lib.workspace.group_libs_naming_strategies -value \"common_prefix common_suffix common_prefix_and_common_suffix first_logical_lib_name\"" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.workspace.allow_commit_workspace_overwrite -value true
echo "set_app_options -as_user_default -name lib.workspace.allow_commit_workspace_overwrite -value true" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.workspace.group_libs_create_slg -value false
echo "set_app_options -as_user_default -name lib.workspace.group_libs_create_slg -value false" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.workspace.allow_missing_related_pg_pins -value true
echo "set_app_options -as_user_default -name lib.workspace.allow_missing_related_pg_pins -value true" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.workspace.remove_frame_bus_properties -value true
echo "set_app_options -as_user_default -name lib.workspace.remove_frame_bus_properties -value true" >> ${create_ndm_commands}

if {$save_layout_design_views} {
set_app_options -as_user_default -name lib.workspace.save_design_views -value true 
echo "set_app_options -as_user_default -name lib.workspace.save_design_views -value true" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.workspace.save_layout_views -value true 
echo "set_app_options -as_user_default -name lib.workspace.save_layout_views -value true" >> ${create_ndm_commands}
} else {
set_app_options -as_user_default -name lib.workspace.save_design_views -value false
echo "set_app_options -as_user_default -name lib.workspace.save_design_views -value false" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.workspace.save_layout_views -value false
echo "set_app_options -as_user_default -name lib.workspace.save_layout_views -value false" >> ${create_ndm_commands}
}

if {$macro_grouping_strategy != "minimize_libs" && $macro_grouping_strategy != "single_cell_per_lib" && $macro_grouping_strategy != "aggregate_single_cell" } {
echo "\n${flow_warn_prefix} The variable \"$macro_grouping_strategy\": $macro_grouping_strategy is not a valid value.\n"
}

if {$macro_grouping_strategy == "minimize_libs"} {
set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value minimize_libs
echo "set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value minimize_libs" >> ${create_ndm_commands}
} elseif {$macro_grouping_strategy == "single_cell_per_lib"} {
set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value single_cell_per_lib
echo "set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value single_cell_per_lib" >> ${create_ndm_commands}
} elseif {$macro_grouping_strategy == "aggregate_single_cell"} {
set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value aggregate_single_cell 
echo "set_app_options -as_user_default -name lib.workspace.group_libs_macro_grouping_strategy -value aggregate_single_cell" >> ${create_ndm_commands}
}

set_app_options -as_user_default -name link.require_physical -value true
echo "set_app_options -as_user_default -name link.require_physical -value true" >> ${create_ndm_commands}
set_app_options -as_user_default -name design.bus_delimiters -value $bus_delimeter
echo "set_app_options -as_user_default -name design.bus_delimiters -value {$bus_delimeter}" >> ${create_ndm_commands}

if {$include_design_filters != ""} {
set_app_options -as_user_default -name lib.workspace.include_design_filters -value $include_design_filters
echo "set_app_options -as_user_default -name lib.workspace.include_design_filters -value {$include_design_filters}" >> ${create_ndm_commands}
}

if {$exclude_design_filters != ""} {
set_app_options -as_user_default -name lib.workspace.exclude_design_filters -value $exclude_design_filters
echo "set_app_options -as_user_default -name lib.workspace.exclude_design_filters -value {$exclude_design_filters}" >> ${create_ndm_commands}
}

if {$keep_phy_cells} {
set_app_options -as_user_default -name lib.workspace.keep_all_physical_cells -value true
echo "set_app_options -as_user_default -name lib.workspace.keep_all_physical_cells -value true" >> ${create_ndm_commands}
}

if {$explore_create_aggregate} {
set_app_options -as_user_default -name lib.workspace.explore_create_aggregate -value true
echo "set_app_options -as_user_default -name lib.workspace.explore_create_aggregate -value true" >> ${create_ndm_commands}
}

echo "### END_COMMAND from initial_setting.tcl" >> ${create_ndm_commands}
#exec touch touchfiles/initial_setting
