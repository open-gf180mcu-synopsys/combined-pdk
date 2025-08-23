set LIBDIR "/mnt/designkits/gf180MCU/dk_open/share/pdk/gf180mcuA/libs.ref/gf180mcu_fd_sc_mcu7t5v0"
set LEFLIST "${LIBDIR}/lef/gf180mcu_fd_sc_mcu7t5v0.lef"
read_lef -lib_name gf180mcu_fd_sc_mcu7t5v0 -tech_lef_files "${LIBDIR}/techlef/gf180mcu_fd_sc_mcu7t5v0__nom.tlef" -cell_lef_files $LEFLIST
write_mw_lib_files -technology -output milkyway.tf gf180mcu_fd_sc_mcu7t5v0
exit
