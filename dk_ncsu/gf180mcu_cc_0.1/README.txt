gf180n PDK (configured for custom compiler)


install:

# in directory where you want project to live:
cp /mnt/designkits/gf180MCU/dk_ncsu/gf180mcu/setup.sh . 
source setup.sh # will module load relevant files and copy in lib.defs if needed
custom_compiler &


changelog:
v0.1 (jckesle2@ncsu.edu)
- combine dk_synopsys and relevant dk_open tools to unify custom_compiler design kit
- add setup script
