export PDK_DIR=$PWD

if [ ! -f ${PWD}/lib.defs ]; then
  cp $PDK_DIR/setup/lib.defs .
fi
export EDITOR=vi

# TODO find newest version that works for everything (no glibc issues)
ml syn
ml primesim
ml icvalidator
ml customcompiler
ml primewave
ml hspice
ml vcs
ml verdi
# unsure if needed
# ml icvalidator/W-2024.09-SP2
# ml icvalidator/


##########################################################################

#		 REQUIRED PREPROCESSOR MACROS 

##########################################################################

# *****************************************************************************************
# Please set the path ICV_LVS to $GF_PDK_HOME/LVS/ICV or the ICV LVS Runset path 
# Example: export ICV_LVS $GF_PDK_HOME/LVS/ICV
#****************************************************************************************** 

export ICV_LVS=$PDK_DIR/LVS_ICV/LVS/ICV

#export BEOL_STACK=1P2M
#export BEOL_STACK=1P3M
#export BEOL_STACK=1P4M
export BEOL_STACK=1P5M
#export BEOL_STACK=1P6M


##########################################################################

#		 OPTIONAL PREPROCESSOR MACROS 

##########################################################################

#export CONNECT_THRU_DIFF_CHECK YES

#export ERC_RUN YES

#export EXTRACT_MIM_CAP=1P0FF_OPT_A
#export EXTRACT_MIM_CAP=1P0FF_OPT_B
#export EXTRACT_MIM_CAP=1P5FF_OPT_A
#export EXTRACT_MIM_CAP=1P5FF_OPT_B
#export EXTRACT_MIM_CAP=2P0FF_OPT_A
export EXTRACT_MIM_CAP=2P0FF_OPT_B

#export LVSRES_ALT_METHODOLOGY=TRUE

#export MOS_NF_BY=COUNT

#export PEX_RUN=YES

#export POLY_HIGH_RESISTOR=2K
#export POLY_HIGH_RESISTOR=3K

export TOPMETAL=11KA
#export TOPMETAL=30KA
#export TOPMETAL=6KA
#export TOPMETAL=9KA


