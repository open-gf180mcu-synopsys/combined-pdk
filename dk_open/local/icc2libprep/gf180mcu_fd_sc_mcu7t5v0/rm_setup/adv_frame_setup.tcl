##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <adv_frame_setup.tcl>  
#  Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

#########################################################
# START SETTING for advanced FRAME extraction
#########################################################

# Define global block option:
# ----------------------------------------------
# For app option: lib.physical_model.block_all
# Blocks  all  area  except pins on the metal layer. The tool cuts
# the blockage around pins. The detailed  shapes  within  the  DRC
# distance are preserved in the frame and covered by blockage.
# Valid values:  auto | true | false | used_layers | topBlockedLayerName
# Example for topBlockedLayerName: set block_option "M3"
# The tool blocks only up to M3. Zero-spacing routing blockage will not 
# be created for M4 and M5 if this cell has layer PO~M5 defined in TF.
set block_option "auto"

# Define connect within pin option:
# ----------------------------------------------
# For app option: lib.physical_model.connect_within_pin
# Connect within pin via region means via enclosure will not  be  outside
# pin  shape  while  dropping  via  on the via region. When the option is
# false, via enclosure could be outside pin shape while dropping  via  on
# the via reigon.
# Valid values: true | false
set connect_within_pin "true"  

# Define hierarchical option:
# ----------------------------------------------
# For app option: lib.physical_model.hierarchical
# Performs  hierarchical  extraction,  when true. If false, the tool does
# not extract pins, vias and blockages hierarchically while creating  the
# frame view.
# Valid values: true | false
set hierarchical "true"  

# Define merge metal blockage option:
# ----------------------------------------------
# For app option: lib.physical_model.merge_metal_blockage
# Merge metal blockage based on minimum width and minimum spacing. If two
# metal blockages are too close, the space between the two shapes will be
# filled,  thereby  creating  a single  larger  shape for the blockage in
# the frame view.
# Valid values: true | false
set merge_metal_blockage "false" 

# Define preserve metal layer blockages option:
# ----------------------------------------------
# For app option: lib.physical_model.preserve_metal_blockage
# Preserve all metal blockages as they exist  in  the  design  view.   
# If false,  metal  blockages  are  trimmed around pins as needed to prevent
# design rule violations.
# If true, all metal blockages are retained exactly.
# Valid values:  auto | true | false 
set preserve_blockage "auto"

# List of non-default contact codes to be used for std cell pins:
# ---------------------------------------------------
# For app option: lib.physical_model.include_nondefault_via
# Enter the list of contactCode names with space as separator. 
# Only these contacts will be used for std cell pin via regions.
# Leave empty to use the default contacts only. 
# Example: set non_default_contacts "VIA12_LONG VIA12_LARGE"
set non_default_contacts ""

# List of cut layer names to be used for design rule via blockages:
# ---------------------------------------------------
# For app option: lib.physical_model.design_rule_via_blockage_layers
# Convert zero spacing routing blockage in cut layer of frame view to
# design  rule  routing blockage. Usually is for non-stdcells.
# Enter the list of cut layer names with space as separator. 
# Example: set design_rule_via_blockages "VIA1 VIA2"
set design_rule_via_blockages ""

# Define drc distance for each layer:
# ----------------------------------------------
# For app option: lib.physical_model.drc_distances
# Specifies the layer name and distance pair to  preserve  detail  shapes
# from   the   boundary   of   blockage   generated   by   -block_all  or
# -block_core_margin.  By default, tool use  the  maximum  spacing  value
# from technology file as the drc distance.
# Format: set drc_distance "{layer_name value} ...}"
# Example: set drc_distance "{M1 0.5} {M2 0.7}"
set drc_distance ""

# Define block core margin for each layer:
# ----------------------------------------------
# For app option: lib.physical_model.block_core_margin
# Creates  a  core  blockage on a specified layer. However, unlike
# the block all option, there is a margin (open area) between  the
# core blockage and the macro cell boundary. You can enter 0, or a
# positive number for margin.  When margin is a  positive  number,
# the  margin is equal to the value between the macro boundary and
# the blockage created.
# Format: set block_core_margin "{layer_name value} ...}"
# Example: set block_core_margin "{DIFF 0} {PO 0} {M1 0.5} {M2 0.7}"
set block_core_margin ""

# Specify trim metal blockages around pins: 
# ----------------------------------------
# For app option: lib.physical_model.trim_metal_blockage_around_pin 
# This application option specifies how the tool  trims  metal  blockages
# around pins during frame view creation. The supported methods are
# Valid values:  touch | all | none 
# If touch: Trims only the metal blockages that touch a pin.
# If all: Trims all metal blockages around pins.
# If none: Does not trim metal blockages.
# Format: set trim_blockage "{layer_name value} ...}"
# Example: set trim_blockage "{M1 none} {M2 all}"
set trim_blockage ""

# Specify pin connect area layers: 
# ----------------------------------------
# For app option: lib.physical_model.pin_must_connect_area_layers 
# Specifies  for  each  connection layer the associated spare layer being
# used to designate the required via connection area within the pin geom-
# etry.  By default, the router can connect a wire to any part of a large
# pin. To restrict the connection to a subarea of a  large  pin,  specify
# the subarea polygon on a spare layer and specify the spare area associ-
# ated with each connection layer using this option. 
# Format: set connect_layer "{layer_name connection_layer} ...}"
# Example: set connect_layer "{M1 M1_CONN} {M2 M2_CONN}"
set connect_layer ""

# Specify pin connect area thresholds: 
# ----------------------------------------
# For app option: lib.physical_model.pin_must_connect_area_thresholds 
# Specifies the width threshold (in the unit size defined in the technol-
# ogy file) for automatic determination of the  required  via  connection
# area  within  the  pin  geometry.  By default, the router can connect a
# wire to any part of a large pin.  To automatically restrict the connec-
# tion to a subarea of a pin with an irregular shape, use this option and
# specify each layer and its associated width threshold.
# Format: set connect_threshold "{layer_name value} ...}"
# Example: set connect_threshold "{M1 0.06} {M2 0.08}"
set connect_threshold ""

# Convert regular metal blocakage to zero-spacing:
# ----------------------------------------------
# For app option: lib.physical_model.convert_metal_blockage_to_zero_spacing
# Specifies the regular metal blockages in design view to be converted to zero-spacing
# blockages in frame view with bloating value. This setting is applied to 'macro' type only
# For details: SolvNet #2157543: How to Resolve “diff net spacing” Violation around Macro Pins
# Format: set convert_blockage "{layer_name value} ...}"
# Example: set convert_blockage "{M1 0.06} {M2 0.08}"
set convert_blockage ""

# Define signal routing power/ground pins for via region creation:
# ----------------------------------------------
# For app option: lib.physical_model.include_routing_pg_ports
# Specifies the PG ports names that requires via regions and access edges
# in  frame  views.  Usually,  these ports are the secondary PG ports and
# bias PG ports, which are going to be routed by the signal  router.   By
# default,  PG  ports  are skipped when generating via regions and access
# edges.
# If you do not input any signal routing pg pin, the script 'extract_frame.tcl' 
# will look for it automatically. The list will be all pg ports exclude VDD/VSS/GND. 
# We strongly recommend user to input the list of routing pg pins manually.
# Example: set routing_pg_list "VNW VPW"
set routing_pg_list "" ; # if empty, auto search by script(all pg ports exclude VDD/VSS/GND)

# Remove the non-pin shapes on the specified layers:
# ------------------------------------------------
# For app option: lib.physical_model.remove_non_pin_shapes
# Specifies the mode to remove the non-pin shapes on the  specified  layers.
# If set to none, the non-pin shapes are not removed and which is the default behavior. 
# If set to all, all non-pin shapes of the given layers are removed.  
# If set to core, the shapes which are totally covered by the core area are removed. 
# Core area is decided by DRC distance from the block boundary.
# The layer name must be defined in the technology file. This setting is applied to 'macro' type only.
# Format: set remove_non_pin_shapes "{ layer_name none|all|core } ... "
# Example: set remove_non_pin_shapes "{M3 all} {M4 core}"
set remove_non_pin_shapes "" ; 

# Create zero spacing routing blockage around pins:
# ------------------------------------------------
# For app option: lib.physical_model.create_zero_spacing_blockages_around_pins
# Specifies the width for creating zero-spacing routing blockages around pins by layer in the frame view.
# For the pin on cell boundary, the routing blockage will not  be  generated on boundary side.
# For the shallow pin, the routing blockage will not be generated on the
# channel area, which is from pin to cell boundary.
# For the deep pin, all sides of the pin will have routing blockages.
# The layer name must be defined in the technology file.  The width value
# must be no less than zero.
# Format: set create_zero_spacing_blockages_around_pins "{layer_name width} ..." 
# Example: set create_zero_spacing_blockages_around_pins "{M1 0.3} {M2 0.4}" 
set create_zero_spacing_blockages_around_pins "";

# Create keepout spacing for non pin shapes:
# ------------------------------------------------
# For app option: lib.physical_model.keepout_spacing_for_non_pin_shapes
# Specifies the extension_spacing  and  corner_keepout_spacing  for  each
# layer  to  create zero-spacing routing blockages around non-pin shapes.
# An edge_threshold value is also specified for the layer so  that  frame
# can  identify  "edges"  of  non-pin shapes. If the created zero-spacing
# routing blockages are overlap with pins, the overlap region on the non-
# edge sides are trimmed by pins.
# Format: set create_zero_spacing_blockages_around_pins "{layer_name {edge_threshold extension_spacing corner_keepout_spacing}} ..."
# Example: set create_zero_spacing_blockages_around_pins "{M1 {0.07 0.10 0.09}} {M2 {0 0.1 0}}"
set keepout_spacing_for_non_pin_shapes "";

# Create frame for subblocks:
# ------------------------------------------------
# For app option: lib.physical_model.create_frame_for_subblocks
# Controls whether to create frame view  for  subblocks  in  hierarchical designs.
# If true, the tool performs frame view creation not only for the top most block but also for subblocks. 
# If false, the tool only creates frame view for the top most block.
# Valid values:  true | false 
set create_frame_for_subblocks "false";

# Color based dpt flow:
# ------------------------------------------------
# For app option: lib.physical_model.color_based_dpt_flow
# Controls  whether the tool creates the metal shapes beyond the DRC dis-
# tance with attribute mask_constraint or not. The metal shapes are added
# by option block_all or block_core_margin in frame creation.
# If false, the metal shapes beyond the DRC distance are colorless and trimmed by colored shapes.
# If true, for metal layers, the metal shapes beyond the DRC distance  are  col-
# ored and trimmed by both colored and colorless shapes.
# For  poly  and below layers, the metal shapes beyond the DRC distance
# are still colorless and only trimmed by colored shapes.
# If auto, when the following color rules are defined in the technology file,  the
# option is treated as 'true'; otherwise, it is treated as 'false'.
# sameColorSpanTblXMinSpacing
# sameColorSpanTblYMinSpacing
# diffColorSpanTblXMinSpacing
# diffColorSpanTblYMinSpacing
# Valid values:  auto | true | false 
set color_based_dpt_flow "auto";




