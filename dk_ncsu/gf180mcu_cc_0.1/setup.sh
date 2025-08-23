export PDK_DIR=/home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu

if [ ! -f ${PWD}/lib.defs ]; then
  cp $PDK_DIR/setup/lib.defs .
fi
export EDITOR=vi

# loads versions used for freepdk3
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

