#######################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <Makefile> 
# Version: R-2020.09 (Sep, 2020)
# Copyright (C) 2007-2020 Synopsys, Inc. All rights reserved.
###########################################################################

# Variables:
# ----------
# FLOW_CONFIG points to the configuration file to be used by the flow. By  
# default, this is ./config/setup.tcl; but you may change to another config 
# file by either modifyingthe file name here, or by starting the flow target(s) 
# like this:
# This setting is obsolete in 2016.03 version.
#
# % make complete FLOW_CONFIG=./config/my_config_file.tcl
FLOW_CONFIG=./rm_setup/icc2lm_setup.tcl

# Make the config file location known to the unix shell (don't remove this):
export FLOW_CONFIG

# ACODE contains the Milkyway launch command. You may add a path, but be sure 
# to not remove the -tcl switch.
# If a different path is needed to access Hercules (for example, an Astro 
# installation), change the HCODE variable accordingly.#
ICC2LMCODE = icc2_lm_shell
ICC2CODE = icc2_shell

# VPATH tells the gmake utility to create and look for the target 
# touchfiles in a certain directory. You should not modify this variable.
VPATH=touchfiles

# Here are the flow targets. If you make any changes, be careful to maintain a 
# valid dependency chain.
init:
	/bin/rm -rf touchfiles
	/bin/mkdir -p log export_creation export_validation export_rm_tcl touchfiles
	/bin/grep ^set $(FLOW_CONFIG) > ./export_creation/icc2lm_setup.rep
	/bin/grep ^set ./rm_setup/adv_frame_setup.tcl > ./export_creation/adv_frame_setup.rep

clean:
	/bin/rm -f -r log export_creation export_validation export_rm_tcl touchfiles
	/bin/mkdir -p log export_creation export_validation export_rm_tcl touchfiles

create_cell_libs:
	$(ICC2LMCODE) -file rm_icc2lm_scripts/icc2lm_create_cell_libs.tcl |tee log/icc2lm_create_cell_libs.log 

set_proper_site: create_cell_libs
	$(ICC2LMCODE) -file rm_icc2lm_scripts/icc2lm_set_proper_site.tcl |tee log/icc2lm_set_proper_site.log

validate_cell_libs: set_proper_site
	$(ICC2LMCODE) -file rm_icc2lm_scripts/icc2lm_validate_cell_libs.tcl |tee log/icc2lm_validate_cell_libs.log

analyze_cell_libs: validate_cell_libs
	$(ICC2CODE) -file rm_icc2lm_scripts/icc2_analyze_cell_libs.tcl |tee log/icc2_analyze_cell_libs.log

complete: analyze_cell_libs
	touch touchfiles/complete
        
