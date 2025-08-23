
LIB = gf180mcu_fd_sc_mcu7t5v0
#CORNER = ff_125C_5v50
#CORNER = ff_n40C_5v50
CORNER = ss_125C_4v50
#CORNER = ss_n40C_4v50
#SUFFIX =
SUFFIX = _shortname

# NOTE: We may want to remove the __$(CORNER) suffix from the library names
# in the lib files before compiling.  This seems to be confuse icc2

#LC_SHELL = /mnt/apps/public/COE/synopsys_apps/lc/W-2024.09-SP2/bin/lc_shell
LC_SHELL = /mnt/coe/workspace/ece/ece720-common/tools/synopsys/lc/S-2021.06-SP3/bin/lc_shell

$(LIB)_ccsnoise.db: $(LIB)__$(CORNER)$(SUFFIX).lib
	echo read_lib $(LIB)__$(CORNER)$(SUFFIX).lib > compile.tcl
	echo write_lib $(LIB) -o $(LIB)__$(CORNER)$(SUFFIX).db >> compile.tcl
	echo exit >> compile.tcl
	$(LC_SHELL) -f compile.tcl |& tee $(LIB)__$(CORNER)$(SUFFIX).compile.log



