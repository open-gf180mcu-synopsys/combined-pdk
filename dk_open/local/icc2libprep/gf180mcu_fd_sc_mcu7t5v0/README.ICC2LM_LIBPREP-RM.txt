#######################################################################
## Synopsys(R) IC Compiler(TM) II Library Manager Library Preparation 
## Reference Methodology 
## <README.ICC2LM_LIBPREP-RM.txt> 
## Version: R-2020.09 (Sep 20, 2020)
## Copyright (C) 2020 Synopsys, Inc. All rights reserved.
###########################################################################

A reference methodology provides a set of reference scripts that serves as a
good starting point for running a tool. These scripts are not designed to run
in their current form. You should use them as a reference and adapt them for
use in your design environment.

The IC Compiler(TM) II Library Manager Library Preparation Reference 
Methodology supports four targets:

1. create_cell_libs: This step generates reference libraries. 
   This step supports the following source types:

   a) source_type:gds_lef_oasis: Uses GDSII, LEF, or OASIS files as input data 
      - The "normal" flow
        Use this flow if you have a single logic library file or a group of 
        logic library files, each of which contains the same set of cells but 
        has timing data for a different characterization point, and physical 
        library files that contain a superset of the cells in the logic library 
        files. You would typically use this flow for all standard cells and 
        pad cells.
   
      - The "exploration" flow
        Use this flow to automatically analyze the library source files 
        and generate a script that you can use to perform library 
        preparation.
   
      - The "physical_only" flow
        Use this flow to create a separate physical-only reference library 
        for the cells that exist only in a physical library file, not 
        in any of the logic library files.
   
      - The "frame" flow
         Use this flow to create a reference library that contains only
         frame views (and optionally, other physical views, controlled
         by application options). 
   
      - "etm" flow
         Use this flow to build a library from the extracted timing models (ETMs).
         Each library loaded with the read_db command requires a
         mode label on the command line. This flow allows you to merge multiple
         PVTs and modes for the same model into a single library cell.
   
   b) source_type: ndm: Uses existing reference libraries as input data
      - The "normal" flow
        Use this flow if you have a single logic library file or a group of 
        logic library files, each of which contains the same set of cells but 
        has timing data for a different characterization point, and physical 
        library files that contain a superset of the cells in the logic library 
        files. You would typically use this flow for all standard cells and 
        pad cells.
   
      - The "exploration" flow
        Use this flow to automatically analyze the library source files and 
        generate a script that you can use to perform library preparation.
   
      - The "aggregate" flow
        Use this flow to create an aggregate library, which combines several 
        separate reference libraries into a single reference library.
   
      - The "etm" flow
         Use this flow to build a library from the extracted timing models (ETMs).  
         Each library loaded with the read_db command requires a 
         mode label on the command line. This flow allows you to merge multiple 
         PVTs and modes for the same model into a single library cell.

   c) source_type: combined: Uses GDSII or LEF files to generate a frame-only 
      library by using the frame flow, and then imports the logic library files 
      by using the exploration flow.

   d) source_type: mw: Uses Milkyway reference libraries to generate a 
      frame-only library by using the Milkyway migration flow, and then 
      imports the logic library files by using the exploration flow.

2. set_proper_site: This step sets the proper sites for existing reference 
   libraries.

3. validate_cell_libs: This step validates library cells and library cell 
   pins for existing reference libraries.

4. analyze_cell_libs: This step analyzes pin access for existing reference 
   libraries.


The IC Compiler(TM) II Library Manager Library Preparation
Reference Methodology includes the following files:
---------------------------------------------------------------------------
README.ICC2LM_LIBPREP-RM.txt
Release_Notes.ICC2LM_LIBPREP-RM.txt
Variable_Lookup.ICC2LM_LIBPREP-RM.xlsx

rm_setup/
rm_setup/adv_frame_setup.tcl
rm_setup/icc2lm_setup.tcl
rm_setup/Makefile

rm_icc2lm_scripts/
rm_icc2lm_scripts/icc2lm_create_cell_libs.tcl
rm_icc2lm_scripts/tech_only.tcl
rm_icc2lm_scripts/initial_setting.tcl
rm_icc2lm_scripts/read_logic.tcl
rm_icc2lm_scripts/read_physical.tcl
rm_icc2lm_scripts/extract_frame.tcl
rm_icc2lm_scripts/extract_antenna.tcl
rm_icc2lm_scripts/diode_port.tcl
rm_icc2lm_scripts/change_site.tcl
rm_icc2lm_scripts/load_antenna_tcl_file.tcl
rm_icc2lm_scripts/load_antenna_clf_file.tcl
rm_icc2lm_scripts/icc2lm_set_proper_site.tcl
rm_icc2lm_scripts/proc_set_proper_site.tcl
rm_icc2lm_scripts/icc2lm_validate_cell_libs.tcl
rm_icc2lm_scripts/main_validate_cell_libs.tcl
rm_icc2lm_scripts/mw2ndm.tcl
rm_icc2lm_scripts/icc2_analyze_cell_libs.tcl
rm_icc2lm_scripts/check_lib_cell_pin_access_icc2_v4.bin

========
Usage
========

icc2lm_setup.tcl:
-----------------
The rm_setup/icc2lm_setup.tcl file is the primary configuration file. 
You must edit this file to set the variables that are used to run the 
flow. You can create several configuration files, and use them by changing 
the FLOW_CONFIG variable either in the Makefile or on the make command line.

adv_frame_setup.tcl:
--------------------
The rm_setup/adv_frame_setup.tcl file is an optional configuration file 
that defines the frame view generation options.

Makefile:
---------
The Makefile controls the overall flow. In general, you do not need to
edit the Makefile, except for specifying the configuration file, as described below.

To run the reference methodology:
---------------------------------
Set up your environment to run the IC Compile II Library Manager and 
IC Validator (optional) executables. 

The reference methodology script writes the log files to the "log" directory. 

* To run the reference methodology script, enter the following command:
   
   % make -f rm_setup/Makefile clean init complete

Should a Makefile target fail, examine the log file, make the 
necessary changes to the configuration file, and rerun the
"make -f rm_setup/Makefile complete" command. You can also
run each target by entering the following command:

   % make -f rm_setup/Makefile <target>

The Makefile touch files are stored in the "touchfiles" directory.

To use a specific configuration file, enter the following command:

   % make -f rm_setup/Makefile <target> FLOW_CONFIG=my_config_file

General Information:
--------------------
The flow writes several files to the export_tcl and export_rep directories. 
These files are reused in several parts of the flow and can be useful for 
debugging. 

/export_rm_tcl:
   icc2lm_create_cell_libs_export.tcl
   icc2lm_set_proper_site_export.tcl
   icc2lm_validate_cell_libs_export.tcl
   icc2_analyze_cell_libs_export.tcl
   icc2lm_tech.tcl

/export_creation:
   icc2lm_setup.rep
   adv_frame_setup.rep
   ${library_name}_${ndm_flow}_report_app_options.rep
   ${library_name}_${ndm_flow}_write_workspace.tcl
	
/export_validation: 
   ${library_name}_${ndm_flow}_report_lib.rep
   ${library_name}_${ndm_flow}_cell_lib_info.rep
   ${library_name}_${ndm_flow}_antenna_prop.tcl
   ${library_name}_${ndm_flow}_via_region.rep
   ${library_name}_${ndm_flow}_cell_frame_options.tcl

Details:
/export_rm_tcl/icc2lm_create_cell_libs_export.tcl:
   - Generated by the create_cell_libs step
   - Tcl script for reference library preparation

/export_rm_tcl/icc2lm_set_proper_site_export.tcl:
   - Generated by the set_proper_site step
   - Tcl script to set the proper sites 

/export_rm_tcl/icc2lm_validate_cell_libs_export.tcl:
   - Generated by the validate_cell_libs step
   - Tcl script for reference library validation

/export_rm_tcl/icc2lm_analyze_cell_libs_export.tcl:
   - Generated by the analyze_cell_libs step
   - Tcl scripts for reference library analysis

/export_rm_tcl/icc2lm_tech.tcl:
   - Generated for wire track checking and pin access checking
   - Tcl scripts can be used for a design library 

/export_creation/icc2lm_setup.rep:
   - Reports the configuration variable settings from icc2lm_setup.tcl

/export_creation/adv_frame_setup.rep:
   - Reports the configuration variable settings from adv_frame_setup.tcl

/export_creation/create_site_def.tcl:
   - Generated by the set_proper_site step
   - Tcl script for site creation

/export_creation/${library_name}_${ndm_flow}_report_app_options.rep
   - Reports all application options

/export_validation/${library_name}_${ndm_flow}_report_lib.rep:
   - Generated by the validate_cell_libs step
   - Validation report generated by the report_lib command for the
     reference libraries

/export_validation/${library_name}_${ndm_flow}_ref_info.rep:
   - Generated by the validate_cell_libs step
   - Script-based validation report for the reference libraries

/export_validation/${library_name}_${ndm_flow}_antenna_prop.tcl:
   - Generated by the validate_cell_libs step
   - Tcl script for pin antenna properties

/export_validation/${library_name}_${ndm_flow}_via_region.rep:
   - Generated by the validate_cell_libs step
   - Pin via region report generated by the report_via_regions command

/export_validation/${library_name}_${ndm_flow}_cell_frame_options.tcl:
   - Generated by the validate_cell_libs step
   - Tcl script for cell frame options

=========================================
A brief description of each Makefile step
=========================================

clean:
------
Cleans up the run environment to get rid of all log files and files created in
the working directory when the IC Compiler II Library Manager tool is run
interactively.

init:
-----
Initializes the library preparation flow. Deletes files created by the previous
operations and creates the directories needed for storing data if those directories 
do not already exist.

complete:
---------
Runs the entire library preparation flow in one operation.

create_cell_libs:
---------------
Creates the reference library within a library workspace.

set_proper_site: 
---------------
Sets the proper sites for the standard cells in the library
workspace.

validate_cell_libs:
-----------------
Reports the contents of the reference libraries by running the
report_lib command and exporting the cell information, pin antenna properties,
and pin via regions.
Compares the generated reference library to an input logic library or an 
existing reference library.

analyze_cell_libs:
----------------
Runs the pin access checking utility for the reference library in
the IC Compiler II tool.




