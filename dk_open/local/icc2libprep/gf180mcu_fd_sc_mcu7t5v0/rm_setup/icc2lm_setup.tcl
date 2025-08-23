puts "RM-Info: Running script [info script]\n"

set LIBDIR "/mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0"

##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <icc2lm_setup.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

#########################################################
# START SETTING for SOURCE TYPE
#########################################################

# Define source types
# -----------------------------------------
# Supports 4 source types
# 1) gds_lef_oasis
#    - Supports flows: normal, physical, frame, explorartion, etm
# 2) ndm
#    - Supports flows: normal, explorartion. etm, aggregate
# 3) combined (hard-fixed flow) 
#    Step 1: create frame ndm library using frame flow
#    Step 2: read frame ndm and import logic db files using explorartion flow 
# 4) mw (hard-fixed flow)
#    Step 1: create frame ndm library using MW2NDM migration flow 
#    Step 2: read frame ndm and import logic db files using explorartion flow 
set source_type "combined" ; # gds_lef_oasis | ndm | combined | mw
 
#########################################################
# START SETTING for TECH definition to reference NDM
#########################################################

# Load technology attributes to reference NDMs?
# -----------------------------------------
# This variable is to set technology attributes below to reference NDMs
# - layer: routing_direction, track_offset
# - site_def: is_default, symmetry
# If turn OFF this variable, the wire tracks checking in 'validate_cell_libs'
# and pin access checking in 'analyze_cell_libs' could be incorrect due to no 
# routing direction and wire tracks information
set load_tech 1 ; # 1=yes 0=no

# The name of the ICC2 technology file:
# -----------------------------------------
#set techfile "/mnt/designkits/gf180MCU/dk_synopsys/pdk-180/PnR/PR-000178_ECN-00915776_1752848205990/5LM_1TM_11K/gf180nm_mcu_5LM_1TM_11K_7t_mw.tf"
set techfile "./gf180nm_mcu_5LM_1TM_11K_7t_mw.tf"

# Specify route layer, routing direction and track offset
# -----------------------------------------
# For layer attributes: routing_direction and track_offset
# This variable should be defined for all metal routing layers in technology file. 
# Format: set tech_info(ROUTE,LAYER_DIRECTIONS,OFFSET) "{layer_name direction offset} ... }" 
# Example: set tech_info(ROUTE,LAYER_DIRECTIONS,OFFSET) "{M1 vertical 0.2} {M2 horizontal 0.0} {M3 vertical 0.2} {M4 horizontal 0.0} {M5 vertical 0.2} {M6 horizontal 0.0} {M7 vertical 0.4} {M8 horizontal 0.0}"
set tech_info(ROUTE,LAYER_DIRECTIONS,OFFSET) " \
  {li1 vertical 0.0} \
  {met1 horizontal 0.0} \
  {met2 vertical 0.0} \
  {met3 horizontal 0.0} \
  {met4 vertical 0.0} \
  {met5 horizontal 0.0} \
"

# Specify default site for tech-only NDM:
# -----------------------------------------
# Example: set site_default "unit"
set site_default "unit"

# Specify site symmetry for tech-only NDM:
# -----------------------------------------
# The valid values: {site_name symmetry}
# You can sepecify symmetry for multiple sites 
# Example: set site_symmetry "{unit Y} {unit1 Y}"
set site_symmetry "{unit Y}"

# Specify the number of masks for tech-only NDM:
# -----------------------------------------
# Example: set mask_info(ROUTE,NUM_MASK) "{CM0 2} {CM1 2} {CM2 2} {M0 2} {M1 2} {M2 2}"
set mask_info(ROUTE,NUM_MASK) ""

#########################################################
# START SETTING for WORKSPACE
#########################################################

# Specify NDM flow for library preparation:
# -----------------------------------------
# For command: create_workspace -flow $ndm_flow
# Valid values:  You can specify one flow or list of flows
# When $source_type is "combined" or "mw", this flow entry will be ignored.
# 1) normal 
#    - source_type: gds_lef_oasis | ndm                  
# 2) physical 
#    - source_type: gds_lef_oasis
# 3) frame 
#    - source_type: gds_lef_oasis
# 4) exploration 
#    - source_type: gds_lef_oasis | ndm
# 5) etm 
#    - source_type: gds_lef_oasis | ndm
# 6) aggregate 
#    - source_type: ndm
# Example: set ndm_flow "exploration"
# Example: set ndm_flow "normal"
set ndm_flow "frame"

# Name of the library to be created:
# ----------------------------------
set clib_name "EXPLORE"

# Specify to save layout and deisgn views or not:
# ----------------------------------
# For app option: lib.workspace.save_design_views
# For app option: lib.workspace.save_layout_views
set save_layout_design_views 0  ; # 1=yes 0=no

# Specify macro grouping strategy for group_libs:
# ----------------------------------
# For app option: lib.workspace.group_libs_macro_grouping_strategy
# Valid value: aggregate_single_cell | single_cell_per_lib
# - aggregate_single_cell: This builds on the single_cell_per_lib 
#   strategy by taking the individual NDM reference libraries and 
#   aggregating them into a single NDM. 
# - single_cell_per_lib: this strategy will  generate 1 ndm
#   reference library for  each  macro  cell
set macro_grouping_strategy "aggregate_single_cell"

# Specifies the bus delimiters to be used in port, pin, and net names:
# ---------------------------------------------------------------------
# For app option: design.bus_delimiters 
# Enclose the entry in curly brackets.
# Valid values are {[]}, {{}}, {()}, and {<>}
# Example: set bus_delimeter {<>}
set bus_delimeter {[]}

# Specify the length precision by scale factor:
# ---------------------------------------------
# For command: create_workspace -scale_factor
# Specifies the length precision for this library. The length pre-
# cision for the library and all of its reference  libraries  must
# be  identical.   The  value  is  specified in terms of units per
# micron. By default, a length precision of 10000 is  used,  which
# implies one internal unit is equal to one Angstrom or 0.1 nm
# For  example,  if  your  
# minimum  grid spacing is 1 nm, the default scale_factor of 10000
# dbu per micron could be used. But if your minimum  grid  spacing
# is  0.25  nm,  a  scale  factor  of, for example, 4000, would be
# needed to avoid rounding errors.
set scale_factor "1000"

# This is to use tcl to change the site definition in the library 
# ----------------------------------
# if change_site 0, do nothing
# if change_site 1, replace site definition for all lib cells by $site_default 
set change_site 0 ; # 1=yes 0=no

# Specify to include/exclude designs
# ----------------------------------
# For app option: lib.workspace.include_design_filters
# For app option: lib.workspace.exclude_design_filters
# o If a design name matches any exclude filter, the design is not loaded
#   into the library workspace.
# o If a design name matches any include  filter  (or  if  there  are  no
#   include  filters),  the  design is loaded into the library workspace.
#   Note that if you specify an include filter, any design that does  not
#   match the filter is not loaded into the library workspace.
# Example: set include_design_filters "AND*"
# Example: set exclude_design_filters "BUF*"
set include_design_filters ""
set exclude_design_filters "" 

# Specify to keep all physical cells
# ----------------------------------
# For app option: lib.workspace.keep_all_physical_cells
# When  set  to false, The generated reference library contains the cells
# that exist in both the logic and physical library files. If the  physi-
# cal  library  files  contain additional cells that are not in the logic
# library files,  they  are  not  included  in  the  generated  reference
# library.   When  set  to true, the additional cells that are not in the
# logic library files, they will be built into  the  generated  reference
# library, but no timing view.
set keep_phy_cells 1 ; # 1=true 0=false

# Specify whether to use process_workspaces command in exploration flow
# ---------------------------------------------------------------------
# When there are multiple workspaces to check and commit, comparing to use
# check_workspace and commit_workspace commands separately, this command
# will have lower peak memory usage. For a normal flow, there is no this
# kind of benefit.  
set use_process_workspaces 1 ; # 1=true 0=false

# Specifies whether to generate an aggregate library in exploration flow
# ---------------------------------------------------------------------
# For app option: lib.workspace.explore_create_aggregate
# When set to true, the commit_workspace and process_workspaces  commands
# will  create  an  aggregate  library containing all libraries generated
# from specified workspaces. The write_workspace command will  append  an
# aggregate workspace at the end of the outputted tcl file if single file
# should be outputted, or create a separate tcl file containing an aggre-
# gate  workspace  if  multiple  files should be outputted. The aggregate
# workspace containing all libraries of the specified workspaces.
# When set to false, no aggregate library will be generated.
set explore_create_aggregate 0 ; # 1=true, 0=false

#########################################################
# START SETTING for read_db
#########################################################

# Load .db files 
# -------------------------------
# Accept single file, list of file or wildcard
# Example: set db_files "all.db" 
# Example: set db_files "std.db mem.db" 
# Example: set db_files "./DB/*.db" 
set db_files "${LIBDIR}/lib/gf180mcu_fd_sc_mcu7t5v0__ff_n40C_5v50_shortname.db ${LIBDIR}/lib/gf180mcu_fd_sc_mcu7t5v0__ss_125C_4v50_shortname.db"   

# Sets the allowable PVTs
# -------------------------------
# For command: set_pvt_configuration
# The set_pvt_configuration library manager command  is used to limit the
# process, voltage, and temperature combinations which a  DB file
# can have in the library manager session. 
# Note that the configuration does not apply to the aggregate or edit flows.
# Example: set pvt_configuration 1
#          set process_labels "FF SS"
#          set voltages "0.8 0.9"
#          set temperatures "0 125 -40"
set pvt_configuration 0 ; # 1=yes 0=no
set process_labels ""
set process_numbers ""
set voltages ""
set temperatures ""

# Sets the process_label mapping  base on file name
# -------------------------------
# For command: read_db -process_label
# Attach a process label to the libraries read. By default the process label is the empty string.
# The process label can be used in library aging (ie; NBTI – Negative Bias Temperature Instability)
# Process labels are a means of grouping libraries together for scaling.
# You can map one process label to multiple filters.
# Example: set process_label_mapping "{FF ffg} {SS ssg ssx}"
# The tool attaches process label 'FF' to logic libraries file name matches 'ffg'.
# And the tool attaches process label 'SS' to logic libraries file name matches 'ssg' or 'ssx'.
set process_label_mapping ""

# Specify mode lable for ETM flow
# -------------------------------
# Attach a process label to the libraries read. This option is
# required in the ETM flow, and it  is  disallowed  in  all  other flows.
# Enter the list of {mode db} pairs
# Example: set etm_mode_label_wi_db "{mode1 a.db} {mode2 b.db} {mode3 c.db}"
set etm_mode_label_wi_db ""

#########################################################
# START SETTING for read_gds
#########################################################

# Specify GDS files containing the library cells:
# -------------------------------------------------
# Accept single file, list of file or wildcard
# Example: set gds_files "all.gds" 
# Example: set gds_files "std.gds mem.gds" 
# Example: set gds_files "./GDS/*.gds" 
set gds_files ""   

# Cell type definition globally for the entire library:
# -----------------------------------------------------
# For attribute 'design_type'
# This setting will override any cell type mapping file content.
# It only works when gds_file is not empty
# Valid values (the same as in the block map file, if used):
# - abstract, analog, black_box, corner, cover, diode, end_cap,  
# - fill, filler, flip_chip_driver, flip_chip_pad, lib_cell, macro, 
# - module, pad, pad_spacer, physical_only, well_tap
# Leave empty if no global cell type is to be used.
# Example: set gds_all_cell_type "lib_cell"
set gds_all_cell_type ""     

# Block definition file for stream in:
# ----------------------------------------
# For command: read_gds -block_map
# The block map file provides a mapping for a given block name  or  block
# name  pattern  to  a specific type. This also provides a way to control
# the way blocks are read into the tool's data model  and  written  to  a
# GDSII file.
# You can also use the variable "gds_all_cell_type" to set one
# type for all cells in the library.
# Example: set gds_block_map_file "block.map"
set gds_block_map_file ""

# Layer mapping file for stream in/out:
# ---------------------------------
# For command: read_gds -layer_map
# Leave empty if none is to be used
# A layer map file provides a mapping between the tool and the GDS layers
# The  same  layer  map  file  can  be  used  for both read_gds and
# write_gds commands.
# Example: set gds_layer_map_file "layer.map"
set gds_layer_map_file ""

# Define trace connectivity mode for stream in:
# ---------------------------------
# For command: read_gds -trace_option
# Builds the connectivity by tracing  the  overlapping  geometries
# and propagating the connectivity
# Valid values:
# - none, pins_only, all_layers, same_layer, auto
# Example: set trace_option "same_layer"
set gds_trace_option "auto"    

# Define exclude layers for stream in:
# ---------------------------------
# For app option: file.gds.exclude_layers
# Specifies the rules for mapping between the input layers and the
# layers which are to be used for excluding  geometries  from  the
# specified input layers.
# Example: set gds_exclude_layers "{M1 EM1:mask_one} {M2 EM2}"
set gds_exclude_layers ""

# Power/Ground pins definition:
# ---------------------------
# For app option: file.gds.port_type_map 
# Do not modify the type, it must be one of the "power", "ground", "nwell" and "pwell"
# Modify the port/lib_pin name according to your libraries
# Example: {power "VDD VDDA"}
#          {ground "VSS VSSA"}
set gds_std_cell_port_types { \
        {power ""} \
        {ground ""} \
        {nwell ""} \
        {pwell ""} \
}

# Layers containing pin texts:
# ----------------------------
# For app option: file.gds.text_layer_map
# Specifies the mapping between metal layers and text layers
# that is used for tracing ports by the read_gds and 
# trace_connectivity commands.
# Leave empty if no mapping is to be used, i.e. when the
# pin texts are on the same layers as the metal polygons.
# Enter the pin text layer name which is defined in techfile
# Format: set gds_pin_text_list "{layer_name text_name} ...}"
# Example: set gds_pin_text_list "{M1 M1TXT} {M2 M2TXT M2TXT1}"
set gds_pin_text_list ""

#########################################################
# START SETTING for read_lef
#########################################################

# Specify LEF files containing the library cells:
# -------------------------------------------------
# Accept single file, list of file or wildcard
# Example: set lef_files "all.lef" 
# Example: set lef_files "tech.lef cell.lef" 
# Example: set lef_files "./LEF/*.lef" 
set lef_files "${LIBDIR}/lef/gf180mcu_fd_sc_mcu7t5v0.lef"

# Specify whether to automatically distinguish cut routing blockage:
# -------------------------------------------------
# For app option: file.lef.non_real_cut_obs_mode
# When this app option  is  true,  the  read_lef  command  will  set  cut
# obstruction to zero-spacing cut routing blockage if the cut obstruction
# in lef does not have SPACING and DESIGNRULEWIDTH  syntax  and  the  cut
# obstruction meets any of the following conditions:
# o is not rectangular
# o the  width and height attributes does not match any of the following values
#   o the minimum width of the layer
#   o the default width of the layer
#   o the values in cutHeightTbl and cutWidthTbl of the layer
#   o the values of cut size of any simple via definitions of the layer
set lef_non_real_cut_obs_mode 1 ; # 1=true 0=false

# Specifies whether to automatically rename a conflict site definition:
# -------------------------------------------------
# For app option: file.lef.auto_rename_conflict_sites
# A conflict site definition means a same  name  site  definition  exists
# with  different  size. The conflict site definition is usually an error
# condition (LEFR-018) and will  cause  read_lef  to  fail.  However,  if
# file.lef.auto_rename_conflict_sites  is  set  to  true,  an  attempt to
# rename the site definition will be tried. The renamed  site  definition
# will  have a name like <lefFileName>.<siteName>.
set lef_auto_rename_conflict_sites 1 ; # 1=true 0=false

# Specify a list of site name for conversion:
# -------------------------------------------------
# For command: read_lef -convert_sites
# All LEF macros associated with this site name list are
# associated with $site_default instead
# Example:  Convert site name "CORE","CORE1" to "unit"
# set site_default "unit", and
# set lef_convert_site "CORE CORE1"
set lef_convert_site ""

# Specify whether to use overlap layer or cell size to extract cell boundary
# -------------------------------------------------
# For command: read_lef -cell_boundary by_overlap_layer | by_cell_size
# Specifies  whether  to  extract  rectangular or rectilinear cell
# boundaries for macro cells.  With  the  by_overlap_layer  option
# setting,  a rectilinear cell boundary (possibly non-rectangular)
# will be derived from the OVERLAP layer in the LEF file. If there
# is no OVERLAP layer geometry, then cell boundary will be derived
# from the SIZE statement.  With the by_cell_size option  setting,
# a rectangular cell boundary will be derived from the SIZE param-
# eter in the LEF file.
# Valid value: by_overlap_layer (default) | by_cell_size
set lef_cell_boundary "by_overlap_layer" ; 

#########################################################
# START SETTING for read_oasis
#########################################################

# Specify OASIS files containing the library cells:
# -------------------------------------------------
# Accept single file, list of file or wildcard
# Example: set oasis_files "all.oas" 
# Example: set oasis_files "std.oas mem.oas" 
# Example: set oasis_files "./OASIS/*.oas" 
set oasis_files ""   

# Cell type definition globally for the entire library:
# -----------------------------------------------------
# For attribute 'design_type'
# This setting will override any cell type mapping file content.
# It only works when oasis_files is not empty
# Valid values (the same as in the block map file, if used):
# - abstract, analog, black_box, corner, cover, diode, end_cap,  
# - fill, filler, flip_chip_driver, flip_chip_pad, lib_cell, macro, 
# - module, pad, pad_spacer, physical_only, well_tap
# Leave empty if no global cell type is to be used.
# Example: set oasis_all_cell_type "lib_cell"
set oasis_all_cell_type ""     

# Block definition file for stream in:
# ----------------------------------------
# For command: read_oasis -block_map
# The block map file provides a mapping for a given block name  or  block
# name  pattern  to  a specific type. This also provides a way to control
# the way blocks are read into the tool's data model  and  written  to  a
# GDSII file.
# You can also use the variable "oasis_all_cell_type" to set one
# type for all cells in the library.
# Example: set oasis_block_map_file "block.map"
set oasis_block_map_file ""

# Layer mapping file for stream in/out:
# ---------------------------------
# For command: read_oasis -layer_map
# Leave empty if none is to be used
# A layer map file provides a mapping between the tool and the GDS layers
# The  same  layer  map  file  can  be  used  for both read_oasis and
# write_oasis commands.
# Example: set oasis_layer_map_file "layer.map"
set oasis_layer_map_file ""

# Define trace connectivity mode for stream in:
# ---------------------------------
# For command: read_oasis -trace_option
# Builds the connectivity by tracing  the  overlapping  geometries
# and propagating the connectivity
# Valid values:
# - none, pins_only, all_layers, same_layer, auto
# Example: set trace_option "same_layer"
set oasis_trace_option "auto"    

# Define exclude layers for stream in:
# ---------------------------------
# For app option: file.oasis.exclude_layers
# Specifies the rules for mapping between the input layers and the
# layers which are to be used for excluding  geometries  from  the
# specified input layers.
# Example: set oasis_exclude_layers "{M1 EM1:mask_one} {M2 EM2}"
set oasis_exclude_layers ""

# Power/Ground pins definition:
# ---------------------------
# For app option: file.oasis.port_type_map 
# Do not modify the type, it must be one of the "power", "ground", "nwell" and "pwell"
# Modify the port/lib_pin name according to your libraries
# Example: {power "VDD VDDA"}
#          {ground "VSS VSSA"}
set oasis_std_cell_port_types { \
        {power ""} \
        {ground ""} \
        {nwell ""} \
        {pwell ""} \
}

# Layers containing pin texts:
# ----------------------------
# For app option: file.oasis.text_layer_map
# Specifies the mapping between metal layers and text layers
# that is used for tracing ports by the read_oasis and 
# trace_connectivity commands.
# Leave empty if no mapping is to be used, i.e. when the
# pin texts are on the same layers as the metal polygons.
# Enter the pin text layer name which is defined in techfile
# Format: set oasis_pin_text_list "{layer_name text_name} ...}"
# Example: set oasis_pin_text_list "{M1 M1TXT} {M2 M2TXT M2TXT1}"
set oasis_pin_text_list ""

#########################################################
# START SETTING for read_ndm
#########################################################

# Specify the list of aggregate NDM libraries:
# -------------------------------------------------
# Inputs the existing libraries that are to be part of the aggregate
# Example: set aggre_ndm "./LIBRARIES/NDM/hvt_lib.ndm ./LIBRARIES/NDM/lvt_lib.ndm"
set aggre_ndm ""

# Specify the order of aggregate NDM libraries:
# -------------------------------------------------
# Define the aggregate library search order
# Example: set aggre_lib_order "hvt_lib lvt_lib"
set aggre_lib_order ""

# Specify frame NDM or ETM library:
# -------------------------------------------------
# Accept single NDM, list of NDM or wildcard
# Example: set frame_files "frame.ndm" 
# Example: set frame_files "frame_1.ndm frame_2.ndm" 
# Example: set frame_files "./FRAME-ONLY/*.ndm" 
set frame_files ""

#########################################################
# START SETTING for MW2NDM migration
#########################################################

# Specify MW library:
# -------------------------------------------------
# Accept single MW, list of MWs or wildcard
# Example: set mw_file "MW" 
# Example: set mw_file "MW_1 MW_2" 
# Example: set mw_file "./MW_LIB/*" 
set mw_file ""

#########################################################
# START SETTING for FRAME extraction
#########################################################

# Auto or advanced frame setup:
# ----------------------------------------------
# If set to 0, it is auto-mode. the frame extarction will be applied by embedded options
# If set to 1, it is advanced-mode. Please specify frame options in 'adv_frame_setup.tcl'  
set adv_frame_setup 0 ; # 1=advanced 0=auto

# Convert regular metal blocakage to zero-spacing:
# ----------------------------------------------
# For app option: lib.physical_model.convert_metal_blockage_to_zero_spacing 
# If set to 1, all regular metal blockages in design view will be converted to zero-spacing
# blockages in frame view with bloating minimum spacing
# This setting is for 'macro' type only, user can specify enlarging value in 'adv_frame_setup.tcl' by advanced-mode
# For details: SolvNet #2157543: How to Resolve diff net spacing Violation around Macro Pins
set convert_blockage_to_zero_by_min_spacing 0 ; # 1=yes 0=no

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

#########################################################
# START SETTING for read_physical globally 
#########################################################

# Define cell orientation  globally for the entire library:
# -----------------------------------------------------
# For attribute 'allowable_orientation'
# This setting will overwrite any cell allowable_orientation content.
# Valid values:
# For X: R0 MX
# For Y: R0 MY
# For X Y: R0 R180 MX MY
# For R90: R0 R90
# For X Y R90: R0 R90 R180 R270 MX MXR90 MY MYR90
# For X R90: R0 R90 MX MXR90
# For Y R90: R0 R90 MY MYR90
# Example: set allow_orien "R0 R180 MX MY"
set allow_orien ""

# Define pad rotation globally for the entire library:
# -----------------------------------------------------
# For attribute 'reference_orientation'
# This setting will overwrite I/O cell reference_orientation content.
# I/O cells must have one of the following settings for the design_type attribute:
# - corner, pad, pad_spacer, flip_chip_driver, and flip_chip_pad.
# Valid values: R0, R90, R180, R270 
set pad_rotation ""

#########################################################
# START SETTING for In-Design ICV antenna extraction
#########################################################

# The switch of ICV antenna property extraction:
# ---------------------------------------
# For app option: signoff.antenna.enabled
set enable_icv_ant 0 ; # 1=yes 0=no

# Specify layers for ICV antenna extraction:
# ---------------------------------------
# For app options: signoff.antenna.*layer*
# Enter one single layer, or several layers separated by commas.
# Example: set diffusion_layer "16,18"
set diffusion_layer ""
set poly_layer ""
set cont_layer ""
set v0_layer ""
set m0_poly_layer ""
set m0_diff_layer ""
set cont_m0_diff_layer ""

# Specify a custom runset file:
# ---------------------------------------
# For app option: signoff.antenna.custom_runset_file
# To give layers as a combination of many layers, a custom runset 
# is included in the main runset. The user writes the custom runset
# that has layer definition of main layers that are used in main runset.
# There are fixed layer names in runset that need to be overridden in the custom runset, 
# Below is the list:
# o DIFF  for diffusion layer
# o POLY  for poly layer
# o METAL1  for metal1
# o VIA12   for via1
# o METAL2  for metal2
# o VIA23   for via2
# o M0_POLY  for m0_layers_for_poly_connection
# o M0_DIFF  for m0_layers_for_diffusion_connection 
# o M0_DIFF_CONT   for contact_layers_between_m0_diffusion 
# o VIA01  for v0_layers_between_m1_m0
# Example: set custom_runset_file "custom.rs"
set custom_runset_file ""

# Specify gate class layer:
# --------------------------------------
set gate_class1_layer ""
set gate_class2_layer ""
set gate_class3_layer ""

#########################################################
# START SETTING for diode 
#########################################################

# List of diode cells in the library:
# -----------------------------------
# Enter list with spaces as delimiters.
# Leave empty if there are no diode cells.
# Example: set diode_cells "diode1 diode2 diode4 diode8"
set diode_cells "gf180mcu_fd_sc_mcu7t5v0__antenna"

# Diode pin name:
# ---------------
# Enter the name of the diode pins.
set diode_pin "I"

#########################################################
# START SETTING for TCL antenna loading
#########################################################

# Antenna TCL file to load:
# -------------------------
# Instead of using ICV to extract antenna properties,
# you can enter a tcl-base antenna property file here. 
set ant_tcl_for_new_lib "" ; # load to new library within a workspace
set ant_tcl_for_existing_lib "" ; # load to existing library within a workspace using edit flow

#########################################################
# START SETTING for CLF antenna loading
#########################################################

# Antenna CLF file to load:
# -------------------------
# Instead of using ICV to extract antenna properties,
# you can enter a CLF antenna property file here. 
set ant_clf_for_existing_lib "" ; # load to existing library within a workspace using edit flow

#########################################################
# START SETTING for proper site  
#########################################################

# Set proper site automaticaly by script
# --------------------------------------
# Functionalities;
# - Skip NDM which has no std. cell
# - Check std. cells and default-site heights first
# - If match default-site height, use default site
# - If not match default-site height
#   - Find proper site in TF/NDM based on height
#     - Proper site not exist, report the lib_cell
#     - Proper site exists, use the proper site
#     - Proper site not in TF, record it
# - Output NDMs with proper site assiciation
# - Report a Summary
# - Output site creation tcl file for P&R flow
# - Output a detailed report of site info. of the NDMs
set set_proper_site 1 ; # 1=yes 0=no
 
#########################################################
# START SETTING for pin access check setup
#########################################################
# The "Pin Access Checking Utility" analyze a physical library 
# and find potential pin accessibility issues in 'analyze_cell_libs'
# stage. The detault is OFF.
# The estimated runtime with routing to analyze all stdcells in a library:
# - around 24 hours for 1000 cell counts in 4 threads run
# - around 5 hours for 250 cell counts in 4 threads run
set run_pin_access 0 ;# 1=run 0=skip

# Analyze for stdcell or macro. 
# The mixed 'macro' and 'lib_cell' types in one NDM library is NOT supported.
set analyze_macro 0 ;# 1=for macro 0=for stdcell

# Run or skip routing for all pin access checking cells
set run_routing 0 ; # 1=run 0=skip

# Check selected cell(s) against all cells in the input standard cell library or libraries
# Example: set check_cell_list {cell1 cell2 cell3}
set check_cell_list {}

#########################################################
# START SETTING for library validation
#########################################################

# The detail setting for report_lib command:
# -------------------------------------
# For command: report_lib -verbose ... 
set detail_report 0 ; # 1=true 0=false

# The min_pin_layer setting for report_lib -min_pin_layer
# Report terminals on layers lower than minimum pin layer
# -------------------------------------
# Example: set min_pin_layer "M2"
set min_pin_layer ""

# The compare_db command is used to compare a DB with the NDM. 
# It is very important that you get the DB's process_label to match what is in the NDM. 
# ------------------------------------
# For command: compare_db
set run_compare_db 0 ; # 1=run 0=skip

# The compare_ndm compares the physical information between two reference libraries. 
# Each reference library can be either a committed reference library or a frame-only library
# -----------------------------------
# For command: compare_ndm
set run_compare_ndm 0 ; # 1=run 0=skip

# Specifies the name of one comparison library file
# ------------------------------------
# Example: set comparison_ndm "lib2.ndm"
set comparison_ndm "" 

##############################################################################
#    Flow control data - normally you should not have to change these.       #
##############################################################################

# The directory where the NDM library will go:
# -------------------------------------------------
set cell_lib_dir "[sh pwd]/icc2_cell_lib"

# Files created in the flow:
# --------------------------
set create_tech_commands "[sh pwd]/export_rm_tcl/icc2lm_tech.tcl"
set create_ndm_commands "[sh pwd]/export_rm_tcl/icc2lm_create_cell_libs_export.tcl"
set set_proper_site_commands "[sh pwd]/export_rm_tcl/icc2lm_set_proper_site_export.tcl"
set validate_ndm_commands "[sh pwd]/export_rm_tcl/icc2lm_validate_cell_libs_export.tcl"
set analyze_ndm_commands "[sh pwd]/export_rm_tcl/icc2_analyze_cell_libs_export.tcl"

# Message prefixes:
# -----------------
set flow_info_prefix "ICCII LM PREP FLOW INFO >>"
set flow_warn_prefix "ICCII LM PREP FLOW WARNING >>"
set flow_err_prefix  "ICCII LM PREP FLOW ERROR >>"

