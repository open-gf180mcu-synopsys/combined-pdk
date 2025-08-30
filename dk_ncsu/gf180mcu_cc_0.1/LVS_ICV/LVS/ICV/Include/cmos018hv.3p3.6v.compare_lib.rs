#include <icv_compare.rh>
#include <math.rh>
#include <string.rh>

#pragma PXL define_from_envvar d_ENV_BEOL_STACK BEOL_STACK
#pragma PXL define_from_envvar d_ENV_CONNECT_THRU_DIFF_CHECK CONNECT_THRU_DIFF_CHECK
#pragma PXL define_from_envvar d_ENV_ERC_RUN ERC_RUN
#pragma PXL define_from_envvar d_ENV_EXTRACT_MIM_CAP EXTRACT_MIM_CAP
#pragma PXL define_from_envvar d_ENV_LVSRES_ALT_METHODOLOGY LVSRES_ALT_METHODOLOGY
#pragma PXL define_from_envvar d_ENV_MOS_NF_BY MOS_NF_BY
#pragma PXL define_from_envvar d_ENV_PEX_RUN PEX_RUN
#pragma PXL define_from_envvar d_ENV_POLY_HIGH_RESISTOR POLY_HIGH_RESISTOR
#pragma PXL define_from_envvar d_ENV_TOPMETAL TOPMETAL


/* Hints for use with #IFDEF <identifier> [value] directives */
/* #define d_ENV_BEOL_STACK 1P2M */
/* #define d_ENV_BEOL_STACK 1P3M */
/* #define d_ENV_BEOL_STACK 1P4M */
/* #define d_ENV_BEOL_STACK 1P5M */
/* #define d_ENV_BEOL_STACK 1P6M */
/* #define d_ENV_TOPMETAL 11KA */
/* #define d_ENV_TOPMETAL 30KA */
/* #define d_ENV_TOPMETAL 6KA */
/* #define d_ENV_TOPMETAL 9KA */
/* #define d_ENV_POLY_HIGH_RESISTOR 2K */
/* #define d_ENV_POLY_HIGH_RESISTOR 3K */
/* #define d_ENV_EXTRACT_MIM_CAP 1P0FF_OPT_A */
/* #define d_ENV_EXTRACT_MIM_CAP 1P0FF_OPT_B */
/* #define d_ENV_EXTRACT_MIM_CAP 1P5FF_OPT_A */
/* #define d_ENV_EXTRACT_MIM_CAP 1P5FF_OPT_B */
/* #define d_ENV_EXTRACT_MIM_CAP 2P0FF_OPT_A */
/* #define d_ENV_EXTRACT_MIM_CAP 2P0FF_OPT_B */
/* #define d_EXTRACT_MIM_CAP_1P0FF_OPT_A */
/* #define d_EXTRACT_MIM_CAP_1P5FF_OPT_A */
/* #define d_EXTRACT_MIM_CAP_2P0FF_OPT_A */
/* #define d_ENV_ERC_RUN YES */
/* #define d_ENV_CONNECT_THRU_DIFF_CHECK YES */
/* #define d_ENV_MOS_NF_BY COUNT */
/* #define d_ENV_PEX_RUN YES */
/* #define d_ENV_LVSRES_ALT_METHODOLOGY TRUE */
/* #define d_MOS_NF_BY_COUNT */
/* #define d_POLY_HIGH_RESISTOR_2K */
/* #define d_POLY_HIGH_RESISTOR_3K */
/* #define d_BEOL_1P2M */
/* #define d_TOPMETAL_6KA */
/* #define d_TOPMETAL_9KA */
/* #define d_TOPMETAL_11KA */
/* #define d_TOPMETAL_30KA */
/* #define d_BEOL_1P3M */
/* #define d_BEOL_1P4M */
/* #define d_BEOL_1P5M */
/* #define d_BEOL_1P6M */

/* Explicitly defined (unconditionally) in the original runset */
//#define d_EXTRACT_MIM_CAP_1P0FF_OPT_A     /* Uncomment this line to extract 1.0fF/um*um (Vc <= 20V) MIM capacitor. */
//#define d_EXTRACT_MIM_CAP_1P5FF_OPT_A     /* Uncomment this line to extract 1.5fF/um*um (Vc <= 6V) MIM capacitor. */
//#define d_EXTRACT_MIM_CAP_2P0FF_OPT_A     /* Uncomment this line to extract 2.0fF/um*um (Vc <= 6V) MIM capacitor. */
//#define d_MOS_NF_BY_COUNT                 /* Uncomment this line to extract MOSFET NF by total gate count. */
//#define d_POLY_HIGH_RESISTOR_2K           /* Uncomment this line to define 2K high Rs poly resistor */
//#define d_POLY_HIGH_RESISTOR_3K           /* Uncomment this line to define 3K high Rs poly resistor */
//#define d_BEOL_1P2M                       /* Uncomment this line to define metal2 as the top metal (Poly2,M1,M2). */
//#define d_TOPMETAL_6KA                    /* Uncomment this line to define 6kA as thick top metal thickness. */
//#define d_TOPMETAL_9KA                    /* Uncomment this line to define 9kA as thick top metal thickness. */
//#define d_TOPMETAL_11KA                   /* Uncomment this line to define 11kA as thick top metal thickness. */
//#define d_TOPMETAL_30KA                   /* Uncomment this line to define 30kA as thick top metal thickness. */
//#define d_BEOL_1P3M                       /* Uncomment this line to define metal3 as the top metal (Poly2,M1,M2,M3). */
//#define d_BEOL_1P4M                       /* Uncomment this line to define metal4 as the top metal (Poly2,M1,M2,M3,M4). */
//#define d_BEOL_1P5M                       /* Uncomment this line to define metal5 as the top metal (Poly2,M1,M2,M3,M4,M5). */
//#define d_BEOL_1P6M                       /* Uncomment this line to define metal6 as the top metal (Poly2,M1,M2,M3,M4,M5,M6). */

#ifdef OVERRIDE_FILE
    #include "override_file.rs"
#endif

/* Explicitly defined (conditionally) in the original runset */
#if definition(d_ENV_BEOL_STACK, "1P2M", 0)
   #define d_BEOL_1P2M
#endif
#if definition(d_ENV_BEOL_STACK, "1P3M", 0)
   #define d_BEOL_1P3M
#endif
#if definition(d_ENV_BEOL_STACK, "1P4M", 0)
   #define d_BEOL_1P4M
#endif
#if definition(d_ENV_BEOL_STACK, "1P5M", 0)
   #define d_BEOL_1P5M
#endif
#if definition(d_ENV_BEOL_STACK, "1P6M", 0)
   #define d_BEOL_1P6M
#endif
#if definition(d_ENV_TOPMETAL, "6KA", 0)
   #define d_TOPMETAL_6KA
#endif
#if definition(d_ENV_TOPMETAL, "9KA", 0)
   #define d_TOPMETAL_9KA
#endif
#if definition(d_ENV_TOPMETAL, "11KA", 0)
   #define d_TOPMETAL_11KA
#endif
#if definition(d_ENV_TOPMETAL, "30KA", 0)
   #define d_TOPMETAL_30KA
#endif
#if definition(d_ENV_POLY_HIGH_RESISTOR, "2K", 0)
   #define d_POLY_HIGH_RESISTOR_2K
#endif
#if definition(d_ENV_POLY_HIGH_RESISTOR, "3K", 0)
   #define d_POLY_HIGH_RESISTOR_3K
#endif
#if definition(d_ENV_EXTRACT_MIM_CAP, "1P0FF_OPT_A", 0)
   #define d_EXTRACT_MIM_CAP_1P0FF_OPT_A
#endif
#if definition(d_ENV_EXTRACT_MIM_CAP, "1P5FF_OPT_A", 0)
   #define d_EXTRACT_MIM_CAP_1P5FF_OPT_A
#endif
#if definition(d_ENV_EXTRACT_MIM_CAP, "2P0FF_OPT_A", 0)
   #define d_EXTRACT_MIM_CAP_2P0FF_OPT_A
#endif
#if definition(d_ENV_EXTRACT_MIM_CAP, "1P0FF_OPT_B", 0)
   #define d_EXTRACT_MIM_CAP_1P0FF_OPT_B
#endif
#if definition(d_ENV_EXTRACT_MIM_CAP, "1P5FF_OPT_B", 0)
   #define d_EXTRACT_MIM_CAP_1P5FF_OPT_B
#endif
#if definition(d_ENV_EXTRACT_MIM_CAP, "2P0FF_OPT_B", 0)
   #define d_EXTRACT_MIM_CAP_2P0FF_OPT_B
#endif
#ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
   #define d_MIM_OPTION_A
#endif
#ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
   #define d_MIM_OPTION_A
#endif
#ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
   #define d_MIM_OPTION_A
#endif
#if definition(d_ENV_ERC_RUN, "YES", 0)
   #define d_ERC_RUN
#endif
#if definition(d_ENV_CONNECT_THRU_DIFF_CHECK, "YES", 0)
   #define d_CONNECT_THRU_DIFF_CHECK
#endif
#if definition(d_ENV_MOS_NF_BY, "COUNT", 0)
   #define d_MOS_NF_BY_COUNT
#endif
#if definition(d_ENV_PEX_RUN, "YES", 0)
   #define d_PEX_RUN
#endif
#if definition(d_ENV_LVSRES_ALT_METHODOLOGY, "TRUE", 0)
   #define d_LVSRES_ALT_METHODOLOGY
#endif
#define str(x) #x
#define qstr(x) str(x)


merge_props_func_1 : entrypoint function (void) returning void {
    vL            : double;
    vM            : double;
    vNF           : double;
    vP            : double;
    vQ            : double;
    vW            : double;
    vMIN_1        : double;
    vMIN_2        : double;
    vMIN_3        : double;
    vSUM_1        : double;
    vSUM_PROD_1   : double;
    vSUM_DIV_1    : double;
    vMIN_1_valid        : boolean;
    vMIN_2_valid        : boolean;
    vMIN_3_valid        : boolean;
    vSUM_1_valid        : boolean;
    vSUM_PROD_1_valid   : boolean;
    vSUM_DIV_1_valid    : boolean;
    vDEV_ID = lvs_current_device();
#ifdef d_MOS_NF_BY_COUNT
       vMIN_1_valid = lvs_min(vDEV_ID, "nf", vMIN_1);
       vMIN_2_valid = lvs_min(vDEV_ID, "W", vMIN_2);
       vMIN_3_valid = lvs_min(vDEV_ID, "L", vMIN_3);
       vSUM_1_valid = lvs_sum(vDEV_ID, "M", vSUM_1);
#else
       vSUM_PROD_1_valid = lvs_sum_of_products(vDEV_ID, "W", "L", vSUM_PROD_1);
       vSUM_DIV_1_valid = lvs_sum_of_divisions(vDEV_ID, "W", "L", vSUM_DIV_1);
#endif
#ifdef d_MOS_NF_BY_COUNT
       vNF = vMIN_1;
       vW = vMIN_2;
       vL = vMIN_3;
       vM = vSUM_1;
#else
       vP = vSUM_PROD_1;
       vQ = vSUM_DIV_1;
       vW = sqrt ( vP * vQ );
       vL = sqrt ( vP / vQ );
       vM = 1;
#endif
#ifdef d_MOS_NF_BY_COUNT
       if (vMIN_1_valid) {
           lvs_save_double_property("nf", vNF);
       }
       if (vMIN_2_valid) {
           lvs_save_double_property("W", vW);
       }
       if (vMIN_3_valid) {
           lvs_save_double_property("L", vL);
       }
       if (vSUM_1_valid) {
           lvs_save_double_property("M", vM);
       }
#else
       if (vSUM_PROD_1_valid && vSUM_DIV_1_valid) {
           lvs_save_double_property("L", vL);
           lvs_save_double_property("W", vW);
       }
#endif
}

merge_props_func_2 : entrypoint function (void) returning void {
    vD_SAB   : double;
    vL       : double;
    vM       : double;
    vNF      : double;
    vS_SAB   : double;
    vW       : double;
    vMIN_1   : double;
    vMIN_2   : double;
    vMIN_3   : double;
    vMIN_4   : double;
    vMIN_5   : double;
    vSUM_1   : double;
    vMIN_1_valid   : boolean;
    vMIN_2_valid   : boolean;
    vMIN_3_valid   : boolean;
    vMIN_4_valid   : boolean;
    vMIN_5_valid   : boolean;
    vSUM_1_valid   : boolean;
    vDEV_ID = lvs_current_device();
    vMIN_1_valid = lvs_min(vDEV_ID, "nf", vMIN_1);
    vMIN_2_valid = lvs_min(vDEV_ID, "W", vMIN_2);
    vMIN_3_valid = lvs_min(vDEV_ID, "L", vMIN_3);
    vMIN_4_valid = lvs_min(vDEV_ID, "d_sab", vMIN_4);
    vMIN_5_valid = lvs_min(vDEV_ID, "s_sab", vMIN_5);
    vSUM_1_valid = lvs_sum(vDEV_ID, "M", vSUM_1);
    vNF = vMIN_1;
    vW = vMIN_2;
    vL = vMIN_3;
    vD_SAB = vMIN_4;
    vS_SAB = vMIN_5;
    vM = vSUM_1;
    if (vMIN_1_valid) {
        lvs_save_double_property("nf", vNF);
    }
    if (vMIN_2_valid) {
        lvs_save_double_property("W", vW);
    }
    if (vMIN_3_valid) {
        lvs_save_double_property("L", vL);
    }
    if (vMIN_4_valid) {
        lvs_save_double_property("d_sab", vD_SAB);
    }
    if (vMIN_5_valid) {
        lvs_save_double_property("s_sab", vS_SAB);
    }
    if (vSUM_1_valid) {
        lvs_save_double_property("M", vM);
    }
}

merge_props_func_3 : entrypoint function (void) returning void {
    vL            : double;
    vM            : double;
    vNF           : double;
    vP            : double;
    vQ            : double;
    vW            : double;
    vMIN_1        : double;
    vSUM_1        : double;
    vSUM_PROD_1   : double;
    vSUM_DIV_1    : double;
    vMIN_1_valid        : boolean;
    vSUM_1_valid        : boolean;
    vSUM_PROD_1_valid   : boolean;
    vSUM_DIV_1_valid    : boolean;
    vDEV_ID = lvs_current_device();
    vSUM_1_valid = lvs_sum(vDEV_ID, "M", vSUM_1);
    vMIN_1_valid = lvs_min(vDEV_ID, "nf", vMIN_1);
    vSUM_PROD_1_valid = lvs_sum_of_products(vDEV_ID, "W", "L", vSUM_PROD_1);
    vSUM_DIV_1_valid = lvs_sum_of_divisions(vDEV_ID, "W", "L", vSUM_DIV_1);
    vM = vSUM_1;
    vNF = vMIN_1;
    vP = vSUM_PROD_1;
    vQ = vSUM_DIV_1;
    vL = sqrt ( vP / vQ );
    vW = sqrt ( vP * vQ ) / lvs_count_members(vDEV_ID);
    if (vMIN_1_valid) {
        lvs_save_double_property("nf", vNF);
    }
    if (vSUM_1_valid) {
        lvs_save_double_property("M", vM);
    }
    if (vSUM_PROD_1_valid && vSUM_DIV_1_valid) {
        lvs_save_double_property("L", vL);
        lvs_save_double_property("W", vW);
    }
}

merge_props_func_4 : entrypoint function (void) returning void {
    vA       : double;
    vM       : double;
    vP       : double;
    vMIN_1   : double;
    vMIN_2   : double;
    vSUM_1   : double;
    vMIN_1_valid   : boolean;
    vMIN_2_valid   : boolean;
    vSUM_1_valid   : boolean;
    vDEV_ID = lvs_current_device();
    vSUM_1_valid = lvs_sum(vDEV_ID, "M", vSUM_1);
    vMIN_1_valid = lvs_min(vDEV_ID, "A", vMIN_1);
    vMIN_2_valid = lvs_min(vDEV_ID, "P", vMIN_2);
    vM = vSUM_1;
    vA = vMIN_1;
    vP = vMIN_2;
    if (vMIN_1_valid) {
        lvs_save_double_property("A", vA);
    }
    if (vMIN_2_valid) {
        lvs_save_double_property("P", vP);
    }
    if (vSUM_1_valid) {
        lvs_save_double_property("M", vM);
    }
}

merge_props_func_5 : entrypoint function (void) returning void {
    vL       : double;
    vM       : double;
    vW       : double;
    vMIN_1   : double;
    vMIN_2   : double;
    vSUM_1   : double;
    vMIN_1_valid   : boolean;
    vMIN_2_valid   : boolean;
    vSUM_1_valid   : boolean;
    vDEV_ID = lvs_current_device();
    vSUM_1_valid = lvs_sum(vDEV_ID, "M", vSUM_1);
    vMIN_1_valid = lvs_min(vDEV_ID, "W", vMIN_1);
    vMIN_2_valid = lvs_min(vDEV_ID, "L", vMIN_2);
    vM = vSUM_1;
    vW = vMIN_1;
    vL = vMIN_2;
    if (vMIN_1_valid) {
        lvs_save_double_property("W", vW);
    }
    if (vMIN_2_valid) {
        lvs_save_double_property("L", vL);
    }
    if (vSUM_1_valid) {
        lvs_save_double_property("M", vM);
    }
}

merge_props_func_6 : entrypoint function (void) returning void {
    vL       : double;
    vM       : double;
    vS       : double;
    vW       : double;
    vMIN_1   : double;
    vMIN_2   : double;
    vSUM_1   : double;
    vSUM_2   : double;
    vMIN_1_valid   : boolean;
    vMIN_2_valid   : boolean;
    vSUM_1_valid   : boolean;
    vSUM_2_valid   : boolean;
    vDEV_ID = lvs_current_device();
    vSUM_1_valid = lvs_sum(vDEV_ID, "M", vSUM_1);
    vMIN_1_valid = lvs_min(vDEV_ID, "L", vMIN_1);
    vSUM_2_valid = lvs_sum(vDEV_ID, "W", vSUM_2);
    vMIN_2_valid = lvs_min(vDEV_ID, "s", vMIN_2);
    vM = vSUM_1;
    vL = vMIN_1;
    vW = vSUM_2;
    vS = vMIN_2;
    if (vMIN_1_valid) {
        lvs_save_double_property("L", vL);
    }
    if (vMIN_2_valid) {
        lvs_save_double_property("s", vS);
    }
    if (vSUM_1_valid) {
        lvs_save_double_property("M", vM);
    }
    if (vSUM_2_valid) {
        lvs_save_double_property("W", vW);
    }
}

merge_props_func_7 : entrypoint function (void) returning void {
    vL       : double;
    vM       : double;
    vS       : double;
    vW       : double;
    vMIN_1   : double;
    vMIN_2   : double;
    vMIN_3   : double;
    vSUM_1   : double;
    vMIN_1_valid   : boolean;
    vMIN_2_valid   : boolean;
    vMIN_3_valid   : boolean;
    vSUM_1_valid   : boolean;
    vDEV_ID = lvs_current_device();
    vMIN_1_valid = lvs_min(vDEV_ID, "M", vMIN_1);
    vMIN_2_valid = lvs_min(vDEV_ID, "L", vMIN_2);
    vMIN_3_valid = lvs_min(vDEV_ID, "W", vMIN_3);
    vSUM_1_valid = lvs_sum(vDEV_ID, "s", vSUM_1);
    vM = vMIN_1;
    vL = vMIN_2;
    vW = vMIN_3;
    vS = vSUM_1;
    if (vMIN_1_valid) {
        lvs_save_double_property("M", vM);
    }
    if (vMIN_2_valid) {
        lvs_save_double_property("L", vL);
    }
    if (vMIN_3_valid) {
        lvs_save_double_property("W", vW);
    }
    if (vSUM_1_valid) {
        lvs_save_double_property("s", vS);
    }
}

merge_props_func_8 : entrypoint function (void) returning void {
    vM       : double;
    vSUM_1   : double;
    vSUM_1_valid   : boolean;
    vDEV_ID = lvs_current_device();
    vSUM_1_valid = lvs_sum(vDEV_ID, "M", vSUM_1);
    vM = vSUM_1;
    if (vSUM_1_valid) {
        lvs_save_double_property("M", vM);
    }
}

default_par_cap_props : entrypoint function (void) returning void
{
    vDEV_ID = lvs_current_device();

    vP_valid = lvs_sum_of_products(vDEV_ID, "W", "L", vP);
    vQ_valid = lvs_sum_of_divisions(vDEV_ID, "W", "L", vQ);
    if (vP_valid && vQ_valid) {
        vW = sqrt(vP*vQ);
        vL = sqrt(vP/vQ);
        lvs_save_double_property("W", vW);
        lvs_save_double_property("L", vL);
    }

    vA_valid = lvs_sum(vDEV_ID, "A", vA);
    if (vA_valid) {
        lvs_save_double_property("A", vA);
    }

    vP_valid = lvs_sum(vDEV_ID, "P", vP);
    if (vP_valid) {
        lvs_save_double_property("P", vP);
    }
}

default_par_mos_props : entrypoint function (void) returning void
{
    vDEV_ID = lvs_current_device();

    vP_valid = lvs_sum_of_products(vDEV_ID, "W", "L", vP);
    vQ_valid = lvs_sum_of_divisions(vDEV_ID, "W", "L", vQ);
    if (vP_valid && vQ_valid) {
        vW = sqrt(vP*vQ);
        vL = sqrt(vP/vQ);
        lvs_save_double_property("W", vW);
        lvs_save_double_property("L", vL);
    }

    vAS_valid = lvs_sum(vDEV_ID, "AS", vAS);
    if (vAS_valid) {
        lvs_save_double_property("AS", vAS);
    }

    vAD_valid = lvs_sum(vDEV_ID, "AD", vAD);
    if (vAD_valid) {
        lvs_save_double_property("AD", vAD);
    }

    vPS_valid = lvs_sum(vDEV_ID, "PS", vPS);
    if (vPS_valid) {
        lvs_save_double_property("PS", vPS);
    }

    vPD_valid = lvs_sum(vDEV_ID, "PD", vPD);
    if (vPD_valid) {
        lvs_save_double_property("PD", vPD);
    }
}

default_par_wl_props : entrypoint function (void) returning void
{
    vDEV_ID = lvs_current_device();

    vP_valid = lvs_sum_of_products(vDEV_ID, "W", "L", vP);
    vQ_valid = lvs_sum_of_divisions(vDEV_ID, "W", "L", vQ);

    if (vP_valid && vQ_valid) {
        vW = sqrt(vP * vQ);
        vL = sqrt(vP / vQ);
        lvs_save_double_property("W", vW);
        lvs_save_double_property("L", vL);
    }
}

default_ser_wl_props : entrypoint function (void) returning void
{
    vDEV_ID = lvs_current_device();

    vP_valid = lvs_sum_of_products(vDEV_ID, "L", "W", vP);
    vQ_valid = lvs_sum_of_divisions(vDEV_ID, "L", "W", vQ);

    if (vP_valid && vQ_valid) {
        vW = sqrt(vP / vQ);
        vL = sqrt(vP * vQ);
        lvs_save_double_property("W", vW);
        lvs_save_double_property("L", vL);
    }
}
property_init_mn_nfet_03v3 : entrypoint function (void) returning void
{
    vINPUT_COMP : boolean;
    vM : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_COMP = lvs_get_double_property ( vDEV_ID, "M", vM );
    if ( !vINPUT_COMP ) {
        vM = 1;
    }
    else {
        vM = vM;
    }

    lvs_save_double_property("M", vM);
}

property_init_mp_pfet_03v3 : entrypoint function (void) returning void
{
    vINPUT_COMP : boolean;
    vM : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_COMP = lvs_get_double_property ( vDEV_ID, "M", vM );
    if ( !vINPUT_COMP ) {
        vM = 1;
    }
    else {
        vM = vM;
    }

    lvs_save_double_property("M", vM);
}

property_init_mn_nfet_06v0 : entrypoint function (void) returning void
{
    vINPUT_COMP : boolean;
    vM : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_COMP = lvs_get_double_property ( vDEV_ID, "M", vM );
    if ( !vINPUT_COMP ) {
        vM = 1;
    }
    else {
        vM = vM;
    }

    lvs_save_double_property("M", vM);
}

property_init_mn_nfet_05v0 : entrypoint function (void) returning void
{
    vINPUT_COMP : boolean;
    vM : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_COMP = lvs_get_double_property ( vDEV_ID, "M", vM );
    if ( !vINPUT_COMP ) {
        vM = 1;
    }
    else {
        vM = vM;
    }

    lvs_save_double_property("M", vM);
}

property_init_mp_pfet_06v0 : entrypoint function (void) returning void
{
    vINPUT_COMP : boolean;
    vM : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_COMP = lvs_get_double_property ( vDEV_ID, "M", vM );
    if ( !vINPUT_COMP ) {
        vM = 1;
    }
    else {
        vM = vM;
    }

    lvs_save_double_property("M", vM);
}

property_init_mp_pfet_05v0 : entrypoint function (void) returning void
{
    vINPUT_COMP : boolean;
    vM : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_COMP = lvs_get_double_property ( vDEV_ID, "M", vM );
    if ( !vINPUT_COMP ) {
        vM = 1;
    }
    else {
        vM = vM;
    }

    lvs_save_double_property("M", vM);
}

property_init_r_nwell : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_nplus_u : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_nplus_u_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_pplus_u : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_pplus_u_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_nplus_s : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_nplus_s_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_pplus_s : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_pplus_s_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_npolyf_u : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_npolyf_u_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_ppolyf_u : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_ppolyf_u_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_3k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_3k_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_3k_6p0 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_3k_6p0_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_1k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_1k_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_1k_6p0 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifndef d_POLY_HIGH_RESISTOR_3K
property_init_r_ppolyf_u_1k_6p0_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
property_init_r_ppolyf_u_2k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
property_init_r_ppolyf_u_2k_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
property_init_r_ppolyf_u_2k_6p0 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
property_init_r_ppolyf_u_2k_6p0_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
property_init_r_npolyf_s : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_npolyf_s_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_ppolyf_s : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_ppolyf_s_dw : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_rm1 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

property_init_r_rm2 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_6KA
property_init_r_tm6k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_9KA
property_init_r_tm9k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_11KA
property_init_r_tm11k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_30KA
property_init_r_tm30k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_6KA
property_init_r_tm6k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_9KA
property_init_r_tm9k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_11KA
property_init_r_tm11k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_TOPMETAL_30KA
property_init_r_tm30k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P4M
property_init_r_rm3 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_6KA
property_init_r_tm6k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_9KA
property_init_r_tm9k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_11KA
property_init_r_tm11k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_TOPMETAL_30KA
property_init_r_tm30k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P5M
property_init_r_rm3 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_6KA
property_init_r_tm6k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_9KA
property_init_r_tm9k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_11KA
property_init_r_tm11k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_TOPMETAL_30KA
property_init_r_tm30k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P6M
property_init_r_rm3 : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_6KA
property_init_r_tm6k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_9KA
property_init_r_tm9k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_11KA
property_init_r_tm11k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_TOPMETAL_30KA
property_init_r_tm30k : entrypoint function (void) returning void
{
    vINPUT_S : boolean;
    vS : double;

    vDEV_ID = lvs_current_device();
    
    vINPUT_S = lvs_get_double_property ( vDEV_ID, "s", vS );
    if ( !vINPUT_S ) {
        vS = 1;
    }
    else {
        vS = vS;
    }

    lvs_save_double_property("s", vS);
}

   #endif
#endif

