##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <extract_frame.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################
# Name                                                      Type                    Value     User-default     System-default     Scope
# --------------------------------------------------------- ----------------------- --------- ---------------- ------------------ --------
# lib.physical_model.block_all                              enum                    --        {}               false              block
# lib.physical_model.block_core_margin                      list_of {string float}  --        {}               --                 block
# lib.physical_model.connect_within_pin                     bool                    --        --               true               block
# lib.physical_model.convert_metal_blockage_to_zero_spacing list_of {string float}  --        {}               --                 block
# lib.physical_model.design_rule_via_blockage_layers        list_of string          --        {}               --                 block
# lib.physical_model.drc_distances                          list_of {string float}  --        {}               --                 block
# lib.physical_model.hierarchical                           bool                    --        --               true               block
# lib.physical_model.include_nondefault_via                 list_of string          --        {}               {}                 block
# lib.physical_model.include_routing_pg_ports               list_of string          --        {}               --                 block
# lib.physical_model.merge_metal_blockage                   bool                    --        --               false              block
# lib.physical_model.pin_must_connect_area_layers           list_of {string string} --        {}               --                 block
# lib.physical_model.pin_must_connect_area_thresholds       list_of {string float}  --        {}               --                 block
# lib.physical_model.port_contact_selections                list_of string          --        {}               {}                 block
# lib.physical_model.preserve_metal_blockage                enum                    --        {}               auto               block
# lib.physical_model.remove_non_pin_shapes                  list_of {string string} --        {}               --                 block
# lib.physical_model.source_drain_annotation                string                  --        {}               --                 block
# lib.physical_model.trim_metal_blockage_around_pin         list_of {string string} --        {}               --                 block
# --------------------------------------------------------- ----------------------- --------- ---------------- ------------------ --------

echo "\n${flow_info_prefix} Running script \"extract_frame.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Advanced frame setup:       $adv_frame_setup"
echo ""

echo "\n### BEGIN_COMMAND from extract_frame.tcl" >> ${create_ndm_commands}

   set min_blkg_list ""
   foreach tech_layer [get_attribute [get_layers] name] {
     set layer_name [get_attribute [get_layers $tech_layer] name]
     set mask_layer [get_attribute [get_layers $tech_layer] mask_name]
     set min_spacing [get_attribute [get_layers $tech_layer] min_spacing]
         foreach min_blkg [array names track_offset] {
           if {$mask_layer!= "" && $mask_layer== $min_blkg} {
              lappend min_blkg_list [list $layer_name $min_spacing]
           }
         }
   }

proc get_routing_pg_pins {routing_pg_list primary_power primary_ground primary_ground1} {
   if {$routing_pg_list == ""} {
      #set lct [get_lib_cells */*/timing -quiet]
      set lcd [get_lib_cells */*/design -quiet]
      set routing_pg ""
      set power [get_lib_pins -quiet -of_object $lcd -all -filter "port_type==power && name!=$primary_power"]
      set ground [get_lib_pins -quiet -of_object $lcd -all -filter "port_type==ground && name!=$primary_ground && name!=$primary_ground1"]
      set name_power [get_attribute $power name]
      set name_ground [get_attribute $ground name]
      append routing_pg "$name_power $name_ground"
      set routing_pg_list [lsort -unique $routing_pg]
   }
}

if {!$adv_frame_setup} {
   set_app_options -as_user_default -name lib.physical_model.block_all -value auto
   echo "set_app_options -as_user_default -name lib.physical_model.block_all -value auto" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.connect_within_pin -value true
   echo "set_app_options -as_user_default -name lib.physical_model.connect_within_pin -value true" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.hierarchical -value true
   echo "set_app_options -as_user_default -name lib.physical_model.hierarchical -value true" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.merge_metal_blockage -value false
   echo "set_app_options -as_user_default -name lib.physical_model.merge_metal_blockage -value false" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.preserve_metal_blockage -value auto
   echo "set_app_options -as_user_default -name lib.physical_model.preserve_metal_blockage -value auto" >> ${create_ndm_commands}

   foreach_in_collection lib_cell [get_lib_cells */*/design] {
   set design_name [get_attribute $lib_cell name]
   set type [get_attribute [get_lib_cells $lib_cell] design_type]
      if {$convert_blockage_to_zero_by_min_spacing && $type == "macro"} {
         set_app_options -block [get_lib_cells */$design_name/design] -name lib.physical_model.convert_metal_blockage_to_zero_spacing -value $min_blkg_list
         echo "set_app_options -block \[get_lib_cells *\/$design_name\/design\] -name lib.physical_model.convert_metal_blockage_to_zero_spacing -value \{$min_blkg_list\}" >> ${create_ndm_commands}
      }
   }
   
   get_routing_pg_pins $routing_pg_list VDD VSS GND
   set_app_options -as_user_default -name lib.physical_model.include_routing_pg_ports -value $routing_pg_list
   echo "set_app_options -as_user_default -name lib.physical_model.include_routing_pg_ports -value \{$routing_pg_list\}" >> ${create_ndm_commands}

} else {
   source ./rm_setup/adv_frame_setup.tcl
   set_app_options -as_user_default -name lib.physical_model.block_all -value $block_option 
   echo "set_app_options -as_user_default -name lib.physical_model.block_all -value $block_option" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.preserve_metal_blockage -value $preserve_blockage
   echo "set_app_options -as_user_default -name lib.physical_model.preserve_metal_blockage -value $preserve_blockage" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.connect_within_pin -value $connect_within_pin
   echo "set_app_options -as_user_default -name lib.physical_model.connect_within_pin -value $connect_within_pin" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.hierarchical -value $hierarchical
   echo "set_app_options -as_user_default -name lib.physical_model.hierarchical -value $hierarchical" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.merge_metal_blockage -value $merge_metal_blockage
   echo "set_app_options -as_user_default -name lib.physical_model.merge_metal_blockage -value $merge_metal_blockage" >> ${create_ndm_commands}
   
   set_app_options -as_user_default -name lib.physical_model.block_core_margin -value $block_core_margin
   echo "set_app_options -as_user_default -name lib.physical_model.block_core_margin -value \{$block_core_margin\}" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.trim_metal_blockage_around_pin -value $trim_blockage
   echo "set_app_options -as_user_default -name lib.physical_model.trim_metal_blockage_around_pin -value \{$trim_blockage\}" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.drc_distances -value $drc_distance
   echo "set_app_options -as_user_default -name lib.physical_model.drc_distances -value \{$drc_distance\}" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.pin_must_connect_area_layers -value $connect_layer
   echo "set_app_options -as_user_default -name lib.physical_model.pin_must_connect_area_layers -value \{$connect_layer\}" >> ${create_ndm_commands}
   set_app_options -as_user_default -name lib.physical_model.pin_must_connect_area_thresholds -value $connect_threshold
   echo "set_app_options -as_user_default -name lib.physical_model.pin_must_connect_area_thresholds -value \{$connect_threshold\}" >> ${create_ndm_commands}

   if {$non_default_contacts!=""} {
      set_app_options -as_user_default -name lib.physical_model.include_nondefault_via -value $non_default_contacts
      echo "set_app_options -as_user_default -name lib.physical_model.include_nondefault_via -value \{$non_default_contacts\}" >> ${create_ndm_commands}
   }
   if {$design_rule_via_blockages!=""} {
      set_app_options -as_user_default -name lib.physical_model.design_rule_via_blockage_layers -value $design_rule_via_blockages
      echo "set_app_options -as_user_default -name lib.physical_model.design_rule_via_blockage_layers -value \{$design_rule_via_blockages\}" >> ${create_ndm_commands}
   }
   foreach_in_collection lib_cell [get_lib_cells */*/design] {
   set design_name [get_attribute $lib_cell name]
   set type [get_attribute -quiet [get_lib_cells $lib_cell] design_type]
      if {$convert_blockage_to_zero_by_min_spacing && $type == "macro"} {
         set_app_options -block [get_lib_cells */$design_name/design] -name lib.physical_model.convert_metal_blockage_to_zero_spacing -value $min_blkg_list
         echo "set_app_options -block \[get_lib_cells *\/$design_name\/design\] -name lib.physical_model.convert_metal_blockage_to_zero_spacing -value \{$min_blkg_list\}" >> ${create_ndm_commands}
      } elseif {!$convert_blockage_to_zero_by_min_spacing && $convert_blockage!="" && $type == "macro"} {
         set_app_options -block [get_lib_cells */$design_name/design] -name lib.physical_model.convert_metal_blockage_to_zero_spacing -value $convert_blockage
         echo "set_app_options -block \[get_lib_cells *\/$design_name\/design\] -name lib.physical_model.convert_metal_blockage_to_zero_spacing -value \{$convert_blockage\}" >> ${create_ndm_commands}
      }
   }

   get_routing_pg_pins $routing_pg_list VDD VSS GND
   set_app_options -as_user_default -name lib.physical_model.include_routing_pg_ports -value $routing_pg_list
   echo "set_app_options -as_user_default -name lib.physical_model.include_routing_pg_ports -value \{$routing_pg_list\}" >> ${create_ndm_commands}
   
   if {$remove_non_pin_shapes != ""} {
     foreach_in_collection lib_cell [get_lib_cells */*/design] {
       set design_name [get_attribute $lib_cell name]
       set type [get_attribute -quiet [get_lib_cells $lib_cell] design_type]
       if {$type == "macro"} {
         set_app_options -block [get_lib_cells */$design_name/design] -name lib.physical_model.remove_non_pin_shapes -value $remove_non_pin_shapes
         echo "set_app_options -block \[get_lib_cells *\/$design_name\/design\] -name lib.physical_model.remove_non_pin_shapes -value \{$remove_non_pin_shapes\}" >> ${create_ndm_commands}
       }
     }
   }

   if {$create_zero_spacing_blockages_around_pins != ""} {
     set_app_options -as_user_default -name lib.physical_model.create_zero_spacing_blockages_around_pins -value $create_zero_spacing_blockages_around_pins
     echo "set_app_options -as_user_default -name lib.physical_model.create_zero_spacing_blockages_around_pins -value \{$create_zero_spacing_blockages_around_pins\}" >> ${create_ndm_commands}
   }
   if {$keepout_spacing_for_non_pin_shapes != ""} {
     set_app_options -as_user_default -name lib.physical_model.keepout_spacing_for_non_pin_shapes -value $keepout_spacing_for_non_pin_shapes
     echo "set_app_options -as_user_default -name lib.physical_model.keepout_spacing_for_non_pin_shapes -value \{$keepout_spacing_for_non_pin_shapes\}" >> ${create_ndm_commands}
   }
   if {$create_frame_for_subblocks != ""} {
     set_app_options -as_user_default -name lib.physical_model.create_frame_for_subblocks -value $create_frame_for_subblocks
     echo "set_app_options -as_user_default -name lib.physical_model.create_frame_for_subblocks -value \{$create_frame_for_subblocks\}" >> ${create_ndm_commands}
   }
   if {$color_based_dpt_flow != ""} {
     set_app_options -as_user_default -name lib.physical_model.color_based_dpt_flow -value $color_based_dpt_flow
     echo "set_app_options -as_user_default -name lib.physical_model.color_based_dpt_flow -value \{$color_based_dpt_flow\}" >> ${create_ndm_commands}
   }
}

echo "### END_COMMAND from extract_frame.tcl" >> ${create_ndm_commands}
