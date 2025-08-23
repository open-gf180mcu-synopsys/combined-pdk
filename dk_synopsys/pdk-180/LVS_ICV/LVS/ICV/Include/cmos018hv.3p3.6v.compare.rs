
if ( cap_filter.size() > 0 ) {
filter(state = compare_settings, device_type = CAPACITOR, filter_options = cap_filter);
}
if ( res_filter.size() > 0 ) {
filter(state = compare_settings, device_type = RESISTOR, filter_options = res_filter);
}
if ( nmos_filter.size() > 0 ) {
filter(state = compare_settings, device_type = NMOS, filter_options = nmos_filter);
}
if ( pmos_filter.size() > 0 ) {
filter(state = compare_settings, device_type = PMOS, filter_options = pmos_filter);
}
if ( np_filter.size() > 0 ) {
filter(state = compare_settings, device_type = NP, filter_options = np_filter);
}
if ( pn_filter.size() > 0 ) {
filter(state = compare_settings, device_type = PN, filter_options = pn_filter);
}
if ( npn_filter.size() > 0 ) {
filter(state = compare_settings, device_type = NPN, filter_options = npn_filter);
}
if ( pnp_filter.size() > 0 ) {
filter(state = compare_settings, device_type = PNP, filter_options = pnp_filter);
}
merge_parallel(state = compare_settings, device_type = NPN, property_functions = { { "default_par_wl_props"} });
merge_parallel(state = compare_settings, device_type = PNP, property_functions = { { "default_par_wl_props"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, property_functions = { { "default_par_cap_props"} });
merge_parallel(state = compare_settings, device_type = NP);
merge_parallel(state = compare_settings, device_type = PN);
merge_parallel(state = compare_settings, device_type = NMOS, property_functions = { { "default_par_mos_props"} });
merge_parallel(state = compare_settings, device_type = PMOS, property_functions = { { "default_par_mos_props"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, property_functions = { { "default_par_wl_props"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "nmos_3p3" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "nmos_3p3_dw" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "pmos_3p3" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "pmos_3p3_dw" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "nmos_6p0" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "nmos_6p0_dw" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "nmos_5p0" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "nmos_5p0_dw" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "pmos_6p0" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "pmos_6p0_dw" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "pmos_5p0" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "pmos_5p0_dw" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { 
#ifdef d_MOS_NF_BY_COUNT
   { property = "L", tolerance = [-1,1] },
   { property = "W", tolerance = [0, 0] },
   { property = "nf", tolerance = [0, 0] },
#else
   { property = "L", tolerance = [-1,1] },
#endif
 }, device_names = { "nmos_6p0_nat" }, property_functions = { { "merge_props_func_1"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "nmos_3p3_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "pmos_3p3_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "nmos_3p3_dw_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "pmos_3p3_dw_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "nmos_5p0_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "pmos_5p0_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "nmos_5p0_dw_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "pmos_5p0_dw_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "nmos_6p0_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "pmos_6p0_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "nmos_6p0_dw_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s_sab", tolerance = [0, 0] }, { property = "d_sab", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "pmos_6p0_dw_sab" }, property_functions = { { "merge_props_func_2"} });
merge_parallel(state = compare_settings, device_type = NMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "nmos_10p0_asym" }, property_functions = { { "merge_props_func_3"} });
merge_parallel(state = compare_settings, device_type = PMOS, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "nf", tolerance = [0, 0] } }, device_names = { "pmos_10p0_asym" }, property_functions = { { "merge_props_func_3"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "np_3p3" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "np_3p3_dw" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "np_6p0" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "np_6p0_dw" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = PN, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "pn_3p3" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = PN, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "pn_3p3_dw" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = PN, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "pn_6p0" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = PN, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "pn_6p0_dw" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "nwp_3p3" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "nwp_6p0" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "dnwpw_3p3" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "dnwpw_6p0" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "dnwps_3p3" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "A", tolerance = [0, 0] }, { property = "P", tolerance = [0, 0] } }, device_names = { "dnwps_6p0" }, property_functions = { { "merge_props_func_4"} });
merge_parallel(state = compare_settings, device_type = NP, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "sc_diode" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "nwell" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "nplus_u" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "nplus_u_dw" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "pplus_u" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "pplus_u_dw" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "nplus_s" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "nplus_s_dw" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "pplus_s" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "pplus_s_dw" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "npolyf_u" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "npolyf_u_dw" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_dw" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "npolyf_s" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "npolyf_s_dw" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_s" }, property_functions = { { "merge_props_func_6"} });
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_s_dw" }, property_functions = { { "merge_props_func_6"} });
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k_dw" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k_6p0" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k_6p0_dw" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k_dw" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k_6p0" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k_6p0_dw" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k_dw" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k_6p0" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k_6p0_dw" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm1" }, property_functions = { { "merge_props_func_6"} });
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_6KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_9KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_11KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_30KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_6"} });
   #ifdef d_TOPMETAL_6KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_9KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_11KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_30KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_6"} });
   merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm3" }, property_functions = { { "merge_props_func_6"} });
   #ifdef d_TOPMETAL_6KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_9KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_11KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_30KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_6"} });
   merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm3" }, property_functions = { { "merge_props_func_6"} });
   #ifdef d_TOPMETAL_6KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_9KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_11KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_30KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_6"} });
   merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "rm3" }, property_functions = { { "merge_props_func_6"} });
   #ifdef d_TOPMETAL_6KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_9KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_11KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_30KA
      merge_parallel(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "s", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_6"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p0fF" }, property_functions = { { "merge_props_func_5"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_1p5fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "W", tolerance = [0, 0] }, { property = "L", tolerance = [0, 0] } }, device_names = { "mim_single_2p0fF" }, property_functions = { { "merge_props_func_5"} });
      #endif
   #endif
#endif
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "nmoscap_3p3" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "nmoscap_3p3_dw" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "nmoscap_6p0" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "nmoscap_6p0_dw" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "pmoscap_3p3" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "pmoscap_3p3_dw" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "pmoscap_6p0" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "pmoscap_6p0_dw" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "nmoscap_3p3_b" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "nmoscap_6p0_b" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "pmoscap_3p3_b" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = CAPACITOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] } }, device_names = { "pmoscap_6p0_b" }, property_functions = { { "merge_props_func_5"} });
merge_parallel(state = compare_settings, device_type = PNP, device_names = { "vpnp_0p42x5" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = PNP, device_names = { "vpnp_0p42x10" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = PNP, device_names = { "vpnp_5x5" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = PNP, device_names = { "vpnp_10x10" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = NPN, device_names = { "vnpn_10x10" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = NPN, device_names = { "vnpn_5x5" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = NPN, device_names = { "vnpn_0p54x16" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = NPN, device_names = { "vnpn_0p54x8" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = NPN, device_names = { "vnpn_0p54x4" }, property_functions = { { "merge_props_func_8"} });
merge_parallel(state = compare_settings, device_type = NPN, device_names = { "vnpn_0p54x2" }, property_functions = { { "merge_props_func_8"} });
merge_series(state = compare_settings, device_type = CAPACITOR);
merge_series_off(state = compare_settings, device_type = NMOS);
merge_series_off(state = compare_settings, device_type = PMOS);
merge_series(state = compare_settings, device_type = RESISTOR, property_functions = { { "default_ser_wl_props"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "nwell" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "nplus_u" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "nplus_u_dw" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "pplus_u" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "pplus_u_dw" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "nplus_s" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "nplus_s_dw" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "pplus_s" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "pplus_s_dw" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "npolyf_u" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "npolyf_u_dw" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_dw" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "npolyf_s" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "npolyf_s_dw" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_s" }, property_functions = { { "merge_props_func_7"} });
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_s_dw" }, property_functions = { { "merge_props_func_7"} });
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k_dw" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k_6p0" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_3k_6p0_dw" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k_dw" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k_6p0" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_1k_6p0_dw" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k_dw" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k_6p0" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "ppolyf_u_2k_6p0_dw" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm1" }, property_functions = { { "merge_props_func_7"} });
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_6KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_9KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_11KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_30KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_7"} });
   #ifdef d_TOPMETAL_6KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_9KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_11KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_30KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_7"} });
   merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm3" }, property_functions = { { "merge_props_func_7"} });
   #ifdef d_TOPMETAL_6KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_9KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_11KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_30KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_7"} });
   merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm3" }, property_functions = { { "merge_props_func_7"} });
   #ifdef d_TOPMETAL_6KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_9KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_11KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_30KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm2" }, property_functions = { { "merge_props_func_7"} });
   merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "rm3" }, property_functions = { { "merge_props_func_7"} });
   #ifdef d_TOPMETAL_6KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm6k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_9KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm9k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_11KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm11k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_30KA
      merge_series(state = compare_settings, device_type = RESISTOR, exclude_tolerances = { { property = "L", tolerance = [0, 0] }, { property = "W", tolerance = [0, 0] }, { property = "M", tolerance = [0, 0] } }, device_names = { "tm30k" }, property_functions = { { "merge_props_func_7"} });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p0fF" });
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_1p5fF" });
      #endif
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
      #endif
      #ifndef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
         merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "mim_single_2p0fF" });
      #endif
   #endif
#endif
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "nmoscap_3p3" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "nmoscap_3p3_dw" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "nmoscap_6p0" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "nmoscap_6p0_dw" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "pmoscap_3p3" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "pmoscap_3p3_dw" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "pmoscap_6p0" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "pmoscap_6p0_dw" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "nmoscap_3p3_b" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "nmoscap_6p0_b" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "pmoscap_3p3_b" });
merge_series_off(state = compare_settings, device_type = CAPACITOR, device_names = { "pmoscap_6p0_b" });
recognize_gate(state = compare_settings, type = ALL);
short_equivalent_nodes(state = compare_settings, device_type = NMOS, exclude_tolerances = { { "W", [ -infinity, infinity ], RELATIVE, RATIO } });
short_equivalent_nodes(state = compare_settings, device_type = PMOS, exclude_tolerances = { { "W", [ -infinity, infinity ], RELATIVE, RATIO } });





































































#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   #else
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   #endif
#endif
























#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_6KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_9KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_11KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_30KA
      
      
      
      
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_6KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_9KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_11KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_30KA
      
      
      
      
   #endif
#endif
#ifdef d_BEOL_1P4M
   
   
   
   
   #ifdef d_TOPMETAL_6KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_9KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_11KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_30KA
      
      
      
      
   #endif
#endif
#ifdef d_BEOL_1P5M
   
   
   
   
   #ifdef d_TOPMETAL_6KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_9KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_11KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_30KA
      
      
      
      
   #endif
#endif
#ifdef d_BEOL_1P6M
   
   
   
   
   #ifdef d_TOPMETAL_6KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_9KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_11KA
      
      
      
      
   #endif
   #ifdef d_TOPMETAL_30KA
      
      
      
      
   #endif
#endif
recalculate_property(state = compare_settings, device_type = NMOS, device_names = { "nmos_3p3" }, property_function = "property_init_mn_nmos_3p3");
recalculate_property(state = compare_settings, device_type = PMOS, device_names = { "pmos_3p3" }, property_function = "property_init_mp_pmos_3p3");
recalculate_property(state = compare_settings, device_type = NMOS, device_names = { "nmos_6p0" }, property_function = "property_init_mn_nmos_6p0");
recalculate_property(state = compare_settings, device_type = NMOS, device_names = { "nmos_5p0" }, property_function = "property_init_mn_nmos_5p0");
recalculate_property(state = compare_settings, device_type = PMOS, device_names = { "pmos_6p0" }, property_function = "property_init_mp_pmos_6p0");
recalculate_property(state = compare_settings, device_type = PMOS, device_names = { "pmos_5p0" }, property_function = "property_init_mp_pmos_5p0");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "nwell" }, property_function = "property_init_r_nwell");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "nplus_u" }, property_function = "property_init_r_nplus_u");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "nplus_u_dw" }, property_function = "property_init_r_nplus_u_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "pplus_u" }, property_function = "property_init_r_pplus_u");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "pplus_u_dw" }, property_function = "property_init_r_pplus_u_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "nplus_s" }, property_function = "property_init_r_nplus_s");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "nplus_s_dw" }, property_function = "property_init_r_nplus_s_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "pplus_s" }, property_function = "property_init_r_pplus_s");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "pplus_s_dw" }, property_function = "property_init_r_pplus_s_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "npolyf_u" }, property_function = "property_init_r_npolyf_u");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "npolyf_u_dw" }, property_function = "property_init_r_npolyf_u_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u" }, property_function = "property_init_r_ppolyf_u");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_dw" }, property_function = "property_init_r_ppolyf_u_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "npolyf_s" }, property_function = "property_init_r_npolyf_s");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "npolyf_s_dw" }, property_function = "property_init_r_npolyf_s_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_s" }, property_function = "property_init_r_ppolyf_s");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_s_dw" }, property_function = "property_init_r_ppolyf_s_dw");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "rm1" }, property_function = "property_init_r_rm1");
recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "rm2" }, property_function = "property_init_r_rm2");
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_2k" }, property_function = "property_init_r_ppolyf_u_2k");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_2k_dw" }, property_function = "property_init_r_ppolyf_u_2k_dw");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_2k_6p0" }, property_function = "property_init_r_ppolyf_u_2k_6p0");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_2k_6p0_dw" }, property_function = "property_init_r_ppolyf_u_2k_6p0_dw");
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_9KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm9k" }, property_function = "property_init_r_tm9k");
   #endif
   #ifdef d_TOPMETAL_6KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm6k" }, property_function = "property_init_r_tm6k");
   #endif
   #ifdef d_TOPMETAL_30KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm30k" }, property_function = "property_init_r_tm30k");
   #endif
   #ifdef d_TOPMETAL_11KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm11k" }, property_function = "property_init_r_tm11k");
   #endif
   recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "rm3" }, property_function = "property_init_r_rm3");
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_9KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm9k" }, property_function = "property_init_r_tm9k");
   #endif
   #ifdef d_TOPMETAL_6KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm6k" }, property_function = "property_init_r_tm6k");
   #endif
   #ifdef d_TOPMETAL_30KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm30k" }, property_function = "property_init_r_tm30k");
   #endif
   #ifdef d_TOPMETAL_11KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm11k" }, property_function = "property_init_r_tm11k");
   #endif
   recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "rm3" }, property_function = "property_init_r_rm3");
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_9KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm9k" }, property_function = "property_init_r_tm9k");
   #endif
   #ifdef d_TOPMETAL_6KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm6k" }, property_function = "property_init_r_tm6k");
   #endif
   #ifdef d_TOPMETAL_30KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm30k" }, property_function = "property_init_r_tm30k");
   #endif
   #ifdef d_TOPMETAL_11KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm11k" }, property_function = "property_init_r_tm11k");
   #endif
   recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "rm3" }, property_function = "property_init_r_rm3");
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_9KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm9k" }, property_function = "property_init_r_tm9k");
   #endif
   #ifdef d_TOPMETAL_6KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm6k" }, property_function = "property_init_r_tm6k");
   #endif
   #ifdef d_TOPMETAL_30KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm30k" }, property_function = "property_init_r_tm30k");
   #endif
   #ifdef d_TOPMETAL_11KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm11k" }, property_function = "property_init_r_tm11k");
   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_9KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm9k" }, property_function = "property_init_r_tm9k");
   #endif
   #ifdef d_TOPMETAL_6KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm6k" }, property_function = "property_init_r_tm6k");
   #endif
   #ifdef d_TOPMETAL_30KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm30k" }, property_function = "property_init_r_tm30k");
   #endif
   #ifdef d_TOPMETAL_11KA
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "tm11k" }, property_function = "property_init_r_tm11k");
   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_3k" }, property_function = "property_init_r_ppolyf_u_3k");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_3k_dw" }, property_function = "property_init_r_ppolyf_u_3k_dw");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_3k_6p0" }, property_function = "property_init_r_ppolyf_u_3k_6p0");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_3k_6p0_dw" }, property_function = "property_init_r_ppolyf_u_3k_6p0_dw");
   #else
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_1k" }, property_function = "property_init_r_ppolyf_u_1k");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_1k_dw" }, property_function = "property_init_r_ppolyf_u_1k_dw");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_1k_6p0" }, property_function = "property_init_r_ppolyf_u_1k_6p0");
      recalculate_property(state = compare_settings, device_type = RESISTOR, device_names = { "ppolyf_u_1k_6p0_dw" }, property_function = "property_init_r_ppolyf_u_1k_6p0_dw");
   #endif
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "nmos_3p3" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "nmos_3p3" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "nmos_3p3_dw" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3_dw" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3_dw" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3_dw" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "nmos_3p3_dw" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3_dw" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_3p3_dw" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "pmos_3p3" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "pmos_3p3" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "pmos_3p3_dw" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3_dw" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3_dw" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3_dw" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "pmos_3p3_dw" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3_dw" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_3p3_dw" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "nmos_6p0" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "nmos_6p0" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "nmos_6p0_dw" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_dw" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_dw" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_dw" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "nmos_6p0_dw" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_dw" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_dw" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "nmos_5p0" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "nmos_5p0" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "nmos_5p0_dw" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0_dw" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0_dw" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0_dw" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "nmos_5p0_dw" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0_dw" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_5p0_dw" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "pmos_6p0" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "pmos_6p0" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "pmos_6p0_dw" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0_dw" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0_dw" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0_dw" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "pmos_6p0_dw" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0_dw" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_6p0_dw" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "pmos_5p0" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "pmos_5p0" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "pmos_5p0_dw" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0_dw" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0_dw" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0_dw" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "pmos_5p0_dw" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0_dw" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "pmos_5p0_dw" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
#ifdef d_MOS_NF_BY_COUNT
   check_property( device_names = { "nmos_6p0_nat" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_nat" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_nat" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_nat" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#else
   check_property( device_names = { "nmos_6p0_nat" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_nat" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
   check_property( device_names = { "nmos_6p0_nat" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
#endif
check_property( device_names = { "nmos_3p3_sab" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_sab" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_sab" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_sab" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_sab" }, device_type = NMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_sab" }, device_type = NMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_sab" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_sab" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_sab" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_sab" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_sab" }, device_type = PMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_sab" }, device_type = PMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_dw_sab" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_dw_sab" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_dw_sab" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_dw_sab" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_dw_sab" }, device_type = NMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_3p3_dw_sab" }, device_type = NMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_dw_sab" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_dw_sab" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_dw_sab" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_dw_sab" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_dw_sab" }, device_type = PMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_3p3_dw_sab" }, device_type = PMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_sab" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_sab" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_sab" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_sab" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_sab" }, device_type = NMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_sab" }, device_type = NMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_sab" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_sab" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_sab" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_sab" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_sab" }, device_type = PMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_sab" }, device_type = PMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_5p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_5p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_sab" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_sab" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_sab" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_sab" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_sab" }, device_type = NMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_sab" }, device_type = NMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_sab" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_sab" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_sab" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_sab" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_sab" }, device_type = PMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_sab" }, device_type = PMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "nmos_6p0_dw_sab" }, device_type = NMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "L", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "W", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "d_sab", [- 1, 1] } }, state = compare_settings );
check_property( device_names = { "pmos_6p0_dw_sab" }, device_type = PMOS, property_tolerances = { { "s_sab", [- 1, 1] } }, state = compare_settings );



check_property( device_names = { "nmos_10p0_asym" }, device_type = NMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_10p0_asym" }, device_type = NMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmos_10p0_asym" }, device_type = NMOS, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "nmos_10p0_asym" }, device_type = NMOS, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "pmos_10p0_asym" }, device_type = PMOS, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_10p0_asym" }, device_type = PMOS, property_tolerances = { { "nf", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmos_10p0_asym" }, device_type = PMOS, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "pmos_10p0_asym" }, device_type = PMOS, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );



check_property( device_names = { "np_3p3" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_3p3" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_3p3" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "np_3p3_dw" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_3p3_dw" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_3p3_dw" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "np_6p0" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_6p0" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_6p0" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "np_6p0_dw" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_6p0_dw" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "np_6p0_dw" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "pn_3p3" }, device_type = PN, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_3p3" }, device_type = PN, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_3p3" }, device_type = PN, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "pn_3p3_dw" }, device_type = PN, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_3p3_dw" }, device_type = PN, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_3p3_dw" }, device_type = PN, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "pn_6p0" }, device_type = PN, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_6p0" }, device_type = PN, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_6p0" }, device_type = PN, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "pn_6p0_dw" }, device_type = PN, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_6p0_dw" }, device_type = PN, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "pn_6p0_dw" }, device_type = PN, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "nwp_3p3" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "nwp_3p3" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "nwp_3p3" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "nwp_6p0" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "nwp_6p0" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "nwp_6p0" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "dnwpw_3p3" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwpw_3p3" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwpw_3p3" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "dnwpw_6p0" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwpw_6p0" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwpw_6p0" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "dnwps_3p3" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwps_3p3" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwps_3p3" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "dnwps_6p0" }, device_type = NP, property_tolerances = { { "M", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwps_6p0" }, device_type = NP, property_tolerances = { { "area", [- vTRACE_AREA, vTRACE_AREA] } }, state = compare_settings );
check_property( device_names = { "dnwps_6p0" }, device_type = NP, property_tolerances = { { "pj", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_names = { "sc_diode" }, device_type = NP, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "sc_diode" }, device_type = NP, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "sc_diode" }, device_type = NP, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );



check_property( device_type = RESISTOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_type = RESISTOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
check_property( device_type = RESISTOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
check_property( device_type = RESISTOR, property_tolerances = { { "s", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_1p5fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
      check_property( device_names = { "mim_single_2p0fF" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vTRACE_LENGTH, vTRACE_LENGTH] } }, state = compare_settings );
   #endif
#endif



check_property( device_names = { "nmoscap_3p3" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3_dw" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3_dw" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3_dw" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0_dw" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0_dw" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0_dw" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3_dw" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3_dw" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3_dw" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0_dw" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0_dw" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0_dw" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3_b" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3_b" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_3p3_b" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0_b" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0_b" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "nmoscap_6p0_b" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3_b" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3_b" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_3p3_b" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0_b" }, device_type = CAPACITOR, property_tolerances = { { "M", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0_b" }, device_type = CAPACITOR, property_tolerances = { { "W", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );
check_property( device_names = { "pmoscap_6p0_b" }, device_type = CAPACITOR, property_tolerances = { { "L", [- vZERO_TOLERANCE_VALUE, vZERO_TOLERANCE_VALUE] } }, state = compare_settings );



check_property( device_type = NPN, property_tolerances = { { "M", [- vTRACE_VALUE, vTRACE_VALUE] } }, state = compare_settings );    
#ifdef d_PEX_RUN
filter(state = compare_settings, device_type = NP, device_names = { "nwp_3p3_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "nwp_6p0_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "dnwpw_3p3_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "dnwpw_6p0_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "dnwps_3p3_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "dnwps_6p0_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "np_3p3_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "np_3p3_dw_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "np_6p0_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = NP, device_names = { "np_6p0_dw_p" }, layout_filter_options = { NP_0 });
filter(state = compare_settings, device_type = PN, device_names = { "pn_3p3_p" }, layout_filter_options = { PN_0 });
filter(state = compare_settings, device_type = PN, device_names = { "pn_3p3_dw_p" }, layout_filter_options = { PN_0 });
filter(state = compare_settings, device_type = PN, device_names = { "pn_6p0_p" }, layout_filter_options = { PN_0 });
filter(state = compare_settings, device_type = PN, device_names = { "pn_6p0_dw_p" }, layout_filter_options = { PN_0 });
#endif
#ifdef d_ERC_RUN
   #ifdef d_MOS_NF_BY_COUNT
      rERC_PATHCHK_NOGND_NOPWR @= { @ "ERC_pathchk_nognd_nopwr";
          sPATH_CHECK1 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = NONE );
          sERC_PATHCHK_NOGND_NOPWR_12i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_NOPWR_11i = sERC_PATHCHK_NOGND_NOPWR_12i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_10i = sERC_PATHCHK_NOGND_NOPWR_11i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_NOPWR_9i = sERC_PATHCHK_NOGND_NOPWR_10i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_NOPWR_8i = sERC_PATHCHK_NOGND_NOPWR_9i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_7i = sERC_PATHCHK_NOGND_NOPWR_8i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_NOPWR_6i = sERC_PATHCHK_NOGND_NOPWR_7i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_5i = sERC_PATHCHK_NOGND_NOPWR_6i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_4i = sERC_PATHCHK_NOGND_NOPWR_5i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_3i = sERC_PATHCHK_NOGND_NOPWR_4i or gGATE_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_2i = sERC_PATHCHK_NOGND_NOPWR_3i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_1i = sERC_PATHCHK_NOGND_NOPWR_2i or gGATE_SHIFT_2_MOS_LOGIC;
          sPATH_CHECK1 not sERC_PATHCHK_NOGND_NOPWR_1i;
      } 
      rERC_PATHCHK_NOGND_NOPWR_EDL @= { @ "ERC_pathchk_nognd_nopwr_EDL";
          sPATH_CHECK1 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = NONE );
          sERC_PATHCHK_NOGND_NOPWR_EDL_14i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_NOPWR_EDL_13i = sERC_PATHCHK_NOGND_NOPWR_EDL_14i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_12i = sERC_PATHCHK_NOGND_NOPWR_EDL_13i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_11i = sERC_PATHCHK_NOGND_NOPWR_EDL_12i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_NOPWR_EDL_10i = sERC_PATHCHK_NOGND_NOPWR_EDL_11i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_9i = sERC_PATHCHK_NOGND_NOPWR_EDL_10i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_8i = sERC_PATHCHK_NOGND_NOPWR_EDL_9i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_EDL_7i = sERC_PATHCHK_NOGND_NOPWR_EDL_8i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_EDL_6i = sERC_PATHCHK_NOGND_NOPWR_EDL_7i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_EDL_5i = sERC_PATHCHK_NOGND_NOPWR_EDL_6i or gGATE_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_EDL_4i = sERC_PATHCHK_NOGND_NOPWR_EDL_5i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_EDL_3i = sERC_PATHCHK_NOGND_NOPWR_EDL_4i or gGATE_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOGND_NOPWR_EDL_2i = sERC_PATHCHK_NOGND_NOPWR_EDL_3i or aMETAL_DUMMY;
          sERC_PATHCHK_NOGND_NOPWR_EDL_1i = sERC_PATHCHK_NOGND_NOPWR_EDL_2i or aMETAL_LABEL;
          sPATH_CHECK1 not sERC_PATHCHK_NOGND_NOPWR_EDL_1i;
      } 
      rERC_PATHCHK_GND_NOPWR @= { @ "ERC_pathchk_gnd_nopwr";
          sPATH_CHECK2 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = GROUND );
          sERC_PATHCHK_GND_NOPWR_12i = aCONT or gMFACT_SD;
          sERC_PATHCHK_GND_NOPWR_11i = sERC_PATHCHK_GND_NOPWR_12i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_10i = sERC_PATHCHK_GND_NOPWR_11i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_GND_NOPWR_9i = sERC_PATHCHK_GND_NOPWR_10i or gGATE_ASYM;
          sERC_PATHCHK_GND_NOPWR_8i = sERC_PATHCHK_GND_NOPWR_9i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_7i = sERC_PATHCHK_GND_NOPWR_8i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_GND_NOPWR_6i = sERC_PATHCHK_GND_NOPWR_7i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_GND_NOPWR_5i = sERC_PATHCHK_GND_NOPWR_6i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_GND_NOPWR_4i = sERC_PATHCHK_GND_NOPWR_5i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_GND_NOPWR_3i = sERC_PATHCHK_GND_NOPWR_4i or gGATE_LOGIC;
          sERC_PATHCHK_GND_NOPWR_2i = sERC_PATHCHK_GND_NOPWR_3i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_GND_NOPWR_1i = sERC_PATHCHK_GND_NOPWR_2i or gGATE_SHIFT_2_MOS_LOGIC;
          sPATH_CHECK2 not sERC_PATHCHK_GND_NOPWR_1i;
      } 
      rERC_PATHCHK_GND_NOPWR_EDL @= { @ "ERC_pathchk_gnd_nopwr_EDL";
          sPATH_CHECK2 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = GROUND );
          sERC_PATHCHK_GND_NOPWR_EDL_14i = aCONT or gMFACT_SD;
          sERC_PATHCHK_GND_NOPWR_EDL_13i = sERC_PATHCHK_GND_NOPWR_EDL_14i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_12i = sERC_PATHCHK_GND_NOPWR_EDL_13i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_11i = sERC_PATHCHK_GND_NOPWR_EDL_12i or gGATE_ASYM;
          sERC_PATHCHK_GND_NOPWR_EDL_10i = sERC_PATHCHK_GND_NOPWR_EDL_11i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_9i = sERC_PATHCHK_GND_NOPWR_EDL_10i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_8i = sERC_PATHCHK_GND_NOPWR_EDL_9i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_GND_NOPWR_EDL_7i = sERC_PATHCHK_GND_NOPWR_EDL_8i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_GND_NOPWR_EDL_6i = sERC_PATHCHK_GND_NOPWR_EDL_7i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_GND_NOPWR_EDL_5i = sERC_PATHCHK_GND_NOPWR_EDL_6i or gGATE_LOGIC;
          sERC_PATHCHK_GND_NOPWR_EDL_4i = sERC_PATHCHK_GND_NOPWR_EDL_5i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_GND_NOPWR_EDL_3i = sERC_PATHCHK_GND_NOPWR_EDL_4i or gGATE_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_GND_NOPWR_EDL_2i = sERC_PATHCHK_GND_NOPWR_EDL_3i or aMETAL_DUMMY;
          sERC_PATHCHK_GND_NOPWR_EDL_1i = sERC_PATHCHK_GND_NOPWR_EDL_2i or aMETAL_LABEL;
          sPATH_CHECK2 not sERC_PATHCHK_GND_NOPWR_EDL_1i;
      } 
      rERC_PATHCHK_NOGND_PWR @= { @ "ERC_pathchk_nognd_pwr";
          sPATH_CHECK3 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = POWER );
          sERC_PATHCHK_NOGND_PWR_12i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_PWR_11i = sERC_PATHCHK_NOGND_PWR_12i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_10i = sERC_PATHCHK_NOGND_PWR_11i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_PWR_9i = sERC_PATHCHK_NOGND_PWR_10i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_PWR_8i = sERC_PATHCHK_NOGND_PWR_9i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_7i = sERC_PATHCHK_NOGND_PWR_8i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_PWR_6i = sERC_PATHCHK_NOGND_PWR_7i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_NOGND_PWR_5i = sERC_PATHCHK_NOGND_PWR_6i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_PWR_4i = sERC_PATHCHK_NOGND_PWR_5i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOGND_PWR_3i = sERC_PATHCHK_NOGND_PWR_4i or gGATE_LOGIC;
          sERC_PATHCHK_NOGND_PWR_2i = sERC_PATHCHK_NOGND_PWR_3i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_PWR_1i = sERC_PATHCHK_NOGND_PWR_2i or gGATE_SHIFT_2_MOS_LOGIC;
          sPATH_CHECK3 not sERC_PATHCHK_NOGND_PWR_1i;
      } 
      rERC_PATHCHK_NOGND_PWR_EDL @= { @ "ERC_pathchk_nognd_pwr_EDL";
          sPATH_CHECK3 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = POWER );
          sERC_PATHCHK_NOGND_PWR_EDL_14i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_PWR_EDL_13i = sERC_PATHCHK_NOGND_PWR_EDL_14i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_12i = sERC_PATHCHK_NOGND_PWR_EDL_13i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_11i = sERC_PATHCHK_NOGND_PWR_EDL_12i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_PWR_EDL_10i = sERC_PATHCHK_NOGND_PWR_EDL_11i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_9i = sERC_PATHCHK_NOGND_PWR_EDL_10i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_8i = sERC_PATHCHK_NOGND_PWR_EDL_9i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_NOGND_PWR_EDL_7i = sERC_PATHCHK_NOGND_PWR_EDL_8i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_PWR_EDL_6i = sERC_PATHCHK_NOGND_PWR_EDL_7i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOGND_PWR_EDL_5i = sERC_PATHCHK_NOGND_PWR_EDL_6i or gGATE_LOGIC;
          sERC_PATHCHK_NOGND_PWR_EDL_4i = sERC_PATHCHK_NOGND_PWR_EDL_5i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOGND_PWR_EDL_3i = sERC_PATHCHK_NOGND_PWR_EDL_4i or gGATE_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOGND_PWR_EDL_2i = sERC_PATHCHK_NOGND_PWR_EDL_3i or aMETAL_DUMMY;
          sERC_PATHCHK_NOGND_PWR_EDL_1i = sERC_PATHCHK_NOGND_PWR_EDL_2i or aMETAL_LABEL;
          sPATH_CHECK3 not sERC_PATHCHK_NOGND_PWR_EDL_1i;
      } 
      rERC_PATHCHK_NOLABEL @= { @ "ERC_pathchk_nolabel";
          sPATH_CHECK4 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, ground = { "_no_net_name_" }, path_to = NONE, power = { "*" } );
          sERC_PATHCHK_NOLABEL_12i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOLABEL_11i = sERC_PATHCHK_NOLABEL_12i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_10i = sERC_PATHCHK_NOLABEL_11i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOLABEL_9i = sERC_PATHCHK_NOLABEL_10i or gGATE_ASYM;
          sERC_PATHCHK_NOLABEL_8i = sERC_PATHCHK_NOLABEL_9i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_7i = sERC_PATHCHK_NOLABEL_8i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOLABEL_6i = sERC_PATHCHK_NOLABEL_7i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_NOLABEL_5i = sERC_PATHCHK_NOLABEL_6i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOLABEL_4i = sERC_PATHCHK_NOLABEL_5i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOLABEL_3i = sERC_PATHCHK_NOLABEL_4i or gGATE_LOGIC;
          sERC_PATHCHK_NOLABEL_2i = sERC_PATHCHK_NOLABEL_3i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOLABEL_1i = sERC_PATHCHK_NOLABEL_2i or gGATE_SHIFT_2_MOS_LOGIC;
          sPATH_CHECK4 not sERC_PATHCHK_NOLABEL_1i;
      } 
      rERC_PATHCHK_NOLABEL_EDL @= { @ "ERC_pathchk_nolabel_EDL";
          sPATH_CHECK4 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, ground = { "_no_net_name_" }, path_to = NONE, power = { "*" } );
          sERC_PATHCHK_NOLABEL_EDL_14i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOLABEL_EDL_13i = sERC_PATHCHK_NOLABEL_EDL_14i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_EDL_12i = sERC_PATHCHK_NOLABEL_EDL_13i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOLABEL_EDL_11i = sERC_PATHCHK_NOLABEL_EDL_12i or gGATE_ASYM;
          sERC_PATHCHK_NOLABEL_EDL_10i = sERC_PATHCHK_NOLABEL_EDL_11i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_EDL_9i = sERC_PATHCHK_NOLABEL_EDL_10i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOLABEL_EDL_8i = sERC_PATHCHK_NOLABEL_EDL_9i or gMFACT_SD_LOGIC;
          sERC_PATHCHK_NOLABEL_EDL_7i = sERC_PATHCHK_NOLABEL_EDL_8i or gSD_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOLABEL_EDL_6i = sERC_PATHCHK_NOLABEL_EDL_7i or gSD_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOLABEL_EDL_5i = sERC_PATHCHK_NOLABEL_EDL_6i or gGATE_LOGIC;
          sERC_PATHCHK_NOLABEL_EDL_4i = sERC_PATHCHK_NOLABEL_EDL_5i or gGATE_SHIFT_1_MOS_LOGIC;
          sERC_PATHCHK_NOLABEL_EDL_3i = sERC_PATHCHK_NOLABEL_EDL_4i or gGATE_SHIFT_2_MOS_LOGIC;
          sERC_PATHCHK_NOLABEL_EDL_2i = sERC_PATHCHK_NOLABEL_EDL_3i or aMETAL_DUMMY;
          sERC_PATHCHK_NOLABEL_EDL_1i = sERC_PATHCHK_NOLABEL_EDL_2i or aMETAL_LABEL;
          sPATH_CHECK4 not sERC_PATHCHK_NOLABEL_EDL_1i;
      } 
   #else
      rERC_PATHCHK_NOGND_NOPWR @= { @ "ERC_pathchk_nognd_nopwr";
          sPATH_CHECK1 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = NONE );
          sERC_PATHCHK_NOGND_NOPWR_18i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_NOPWR_17i = sERC_PATHCHK_NOGND_NOPWR_18i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_16i = sERC_PATHCHK_NOGND_NOPWR_17i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_NOPWR_15i = sERC_PATHCHK_NOGND_NOPWR_16i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_NOPWR_14i = sERC_PATHCHK_NOGND_NOPWR_15i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_13i = sERC_PATHCHK_NOGND_NOPWR_14i or gGATE_SHIFT_2_MOS;
          sPATH_CHECK1 not sERC_PATHCHK_NOGND_NOPWR_13i;
      } 
      rERC_PATHCHK_NOGND_NOPWR_EDL @= { @ "ERC_pathchk_nognd_nopwr_EDL";
          sPATH_CHECK1 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = NONE );
          sERC_PATHCHK_NOGND_NOPWR_EDL_22i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_NOPWR_EDL_21i = sERC_PATHCHK_NOGND_NOPWR_EDL_22i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_20i = sERC_PATHCHK_NOGND_NOPWR_EDL_21i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_19i = sERC_PATHCHK_NOGND_NOPWR_EDL_20i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_NOPWR_EDL_18i = sERC_PATHCHK_NOGND_NOPWR_EDL_19i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_17i = sERC_PATHCHK_NOGND_NOPWR_EDL_18i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_NOPWR_EDL_16i = sERC_PATHCHK_NOGND_NOPWR_EDL_17i or aMETAL_DUMMY;
          sERC_PATHCHK_NOGND_NOPWR_EDL_15i = sERC_PATHCHK_NOGND_NOPWR_EDL_16i or aMETAL_LABEL;
          sPATH_CHECK1 not sERC_PATHCHK_NOGND_NOPWR_EDL_15i;
      } 
      rERC_PATHCHK_GND_NOPWR @= { @ "ERC_pathchk_gnd_nopwr";
          sPATH_CHECK2 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = GROUND );
          sERC_PATHCHK_GND_NOPWR_18i = aCONT or gMFACT_SD;
          sERC_PATHCHK_GND_NOPWR_17i = sERC_PATHCHK_GND_NOPWR_18i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_16i = sERC_PATHCHK_GND_NOPWR_17i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_GND_NOPWR_15i = sERC_PATHCHK_GND_NOPWR_16i or gGATE_ASYM;
          sERC_PATHCHK_GND_NOPWR_14i = sERC_PATHCHK_GND_NOPWR_15i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_13i = sERC_PATHCHK_GND_NOPWR_14i or gGATE_SHIFT_2_MOS;
          sPATH_CHECK2 not sERC_PATHCHK_GND_NOPWR_13i;
      } 
      rERC_PATHCHK_GND_NOPWR_EDL @= { @ "ERC_pathchk_gnd_nopwr_EDL";
          sPATH_CHECK2 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = GROUND );
          sERC_PATHCHK_GND_NOPWR_EDL_22i = aCONT or gMFACT_SD;
          sERC_PATHCHK_GND_NOPWR_EDL_21i = sERC_PATHCHK_GND_NOPWR_EDL_22i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_20i = sERC_PATHCHK_GND_NOPWR_EDL_21i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_19i = sERC_PATHCHK_GND_NOPWR_EDL_20i or gGATE_ASYM;
          sERC_PATHCHK_GND_NOPWR_EDL_18i = sERC_PATHCHK_GND_NOPWR_EDL_19i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_17i = sERC_PATHCHK_GND_NOPWR_EDL_18i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_GND_NOPWR_EDL_16i = sERC_PATHCHK_GND_NOPWR_EDL_17i or aMETAL_DUMMY;
          sERC_PATHCHK_GND_NOPWR_EDL_15i = sERC_PATHCHK_GND_NOPWR_EDL_16i or aMETAL_LABEL;
          sPATH_CHECK2 not sERC_PATHCHK_GND_NOPWR_EDL_15i;
      } 
      rERC_PATHCHK_NOGND_PWR @= { @ "ERC_pathchk_nognd_pwr";
          sPATH_CHECK3 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = POWER );
          sERC_PATHCHK_NOGND_PWR_18i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_PWR_17i = sERC_PATHCHK_NOGND_PWR_18i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_16i = sERC_PATHCHK_NOGND_PWR_17i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_PWR_15i = sERC_PATHCHK_NOGND_PWR_16i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_PWR_14i = sERC_PATHCHK_NOGND_PWR_15i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_13i = sERC_PATHCHK_NOGND_PWR_14i or gGATE_SHIFT_2_MOS;
          sPATH_CHECK3 not sERC_PATHCHK_NOGND_PWR_13i;
      } 
      rERC_PATHCHK_NOGND_PWR_EDL @= { @ "ERC_pathchk_nognd_pwr_EDL";
          sPATH_CHECK3 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, path_to = POWER );
          sERC_PATHCHK_NOGND_PWR_EDL_22i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOGND_PWR_EDL_21i = sERC_PATHCHK_NOGND_PWR_EDL_22i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_20i = sERC_PATHCHK_NOGND_PWR_EDL_21i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_19i = sERC_PATHCHK_NOGND_PWR_EDL_20i or gGATE_ASYM;
          sERC_PATHCHK_NOGND_PWR_EDL_18i = sERC_PATHCHK_NOGND_PWR_EDL_19i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_17i = sERC_PATHCHK_NOGND_PWR_EDL_18i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOGND_PWR_EDL_16i = sERC_PATHCHK_NOGND_PWR_EDL_17i or aMETAL_DUMMY;
          sERC_PATHCHK_NOGND_PWR_EDL_15i = sERC_PATHCHK_NOGND_PWR_EDL_16i or aMETAL_LABEL;
          sPATH_CHECK3 not sERC_PATHCHK_NOGND_PWR_EDL_15i;
      } 
      rERC_PATHCHK_NOLABEL @= { @ "ERC_pathchk_nolabel";
          sPATH_CHECK4 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, ground = { "_no_net_name_" }, path_to = NONE, power = { "*" } );
          sERC_PATHCHK_NOLABEL_18i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOLABEL_17i = sERC_PATHCHK_NOLABEL_18i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_16i = sERC_PATHCHK_NOLABEL_17i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOLABEL_15i = sERC_PATHCHK_NOLABEL_16i or gGATE_ASYM;
          sERC_PATHCHK_NOLABEL_14i = sERC_PATHCHK_NOLABEL_15i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_13i = sERC_PATHCHK_NOLABEL_14i or gGATE_SHIFT_2_MOS;
          sPATH_CHECK4 not sERC_PATHCHK_NOLABEL_13i;
      } 
      rERC_PATHCHK_NOLABEL_EDL @= { @ "ERC_pathchk_nolabel_EDL";
          sPATH_CHECK4 = net_path_check( device_db = device_db, filter_nets = { TOP_PORT }, ground = { "_no_net_name_" }, path_to = NONE, power = { "*" } );
          sERC_PATHCHK_NOLABEL_EDL_22i = aCONT or gMFACT_SD;
          sERC_PATHCHK_NOLABEL_EDL_21i = sERC_PATHCHK_NOLABEL_EDL_22i or gSD_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_EDL_20i = sERC_PATHCHK_NOLABEL_EDL_21i or gSD_SHIFT_2_MOS;
          sERC_PATHCHK_NOLABEL_EDL_19i = sERC_PATHCHK_NOLABEL_EDL_20i or gGATE_ASYM;
          sERC_PATHCHK_NOLABEL_EDL_18i = sERC_PATHCHK_NOLABEL_EDL_19i or gGATE_SHIFT_1_MOS;
          sERC_PATHCHK_NOLABEL_EDL_17i = sERC_PATHCHK_NOLABEL_EDL_18i or gGATE_SHIFT_2_MOS;
          sERC_PATHCHK_NOLABEL_EDL_16i = sERC_PATHCHK_NOLABEL_EDL_17i or aMETAL_DUMMY;
          sERC_PATHCHK_NOLABEL_EDL_15i = sERC_PATHCHK_NOLABEL_EDL_16i or aMETAL_LABEL;
          sPATH_CHECK4 not sERC_PATHCHK_NOLABEL_EDL_15i;
      } 
   #endif
#endif







#ifdef d_PEX_RUN
match(
  state = compare_settings,
  detect_permutable_ports = true,
  match_by_net_name = true,
    match_condition = {
    property_mismatch = ERROR, 
            missing_required_property = ERROR,
 	empty_cell_not_defined_as_device = WARNING,
       top_layout_port_net_match_non_port_net = ERROR,
       top_layout_ports_without_name = ERROR,
       top_ports_matched_with_different_name = ERROR,
       top_schematic_port_net_match_non_port_net = ERROR
}
);

xref_db = compare(
  state = compare_settings,
  schematic = schematic_netlist_db,
  layout = layout_netlist_db,
  user_functions_file = gICV_LVS + "/Include/cmos018hv.3p3.6v.compare_lib.rs",
  //case_sensitive = compare_case_sensitive,      
  push_down_pins = true,
  push_down_devices = false,
  memory_array_compare = false,
  top_cell_ports_static = ALL,
	action_on_error = EXPLODE,             
  write_equiv_netlists = FAILED_REDUCED,
  print_messages = {

    all_merged_device_list = true,
    filtered_device_list = true,
    pre_merge_stats = true,
    
  }
, define_empty_cell_as_device = BOTH
);
spice_fh = spice_netlist_file(get_top_cell()+".sp");
#ifdef d_CROSS_REFERENCE
write_xref_spice(device_db, xref_db, spice_fh, include_placement_data = true);
#else
write_spice(
device_db = device_db,
output_file = spice_fh,
model_name_format = SPICE,
precision = 6
);
#endif
#else
match(
  state = compare_settings,
  detect_permutable_ports = true,
  match_by_net_name = true,
  match_condition = {
    empty_cell_not_defined_as_device = WARNING,
       top_layout_port_net_match_non_port_net = ERROR,
       top_layout_ports_without_name = ERROR,
       top_ports_matched_with_different_name = ERROR,
       top_schematic_port_net_match_non_port_net = ERROR
}
);

xref_db = compare(
  state = compare_settings,
  schematic = schematic_netlist_db,
  layout = layout_netlist_db,
  user_functions_file = gICV_LVS + "/Include/cmos018hv.3p3.6v.compare_lib.rs",
  //case_sensitive = compare_case_sensitive,      
  push_down_pins = true,
  push_down_devices = false,
  memory_array_compare = true,
  top_cell_ports_static = ALL,
	action_on_error = EXPLODE,             
  write_equiv_netlists = FAILED_REDUCED,
	print_messages = {

    all_merged_device_list = true,
    filtered_device_list = true,
    pre_merge_stats = true,
    
  }
, define_empty_cell_as_device = BOTH
);
spice_fh = spice_netlist_file(get_top_cell()+".sp");
#ifdef d_CROSS_REFERENCE
write_xref_spice(device_db, xref_db, spice_fh, include_placement_data = true);
#else
write_spice(
device_db = device_db,
output_file = spice_fh,
model_name_format = SPICE,
precision = 6
);
#endif
#endif

 
