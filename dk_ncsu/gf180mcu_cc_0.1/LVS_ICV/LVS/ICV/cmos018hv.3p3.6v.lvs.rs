#define SELECTABLE_VIOLATION_NAMES
#define ICV_ENABLE_LVS_SEN_EXCLUDE_TOLERANCE
#define AUTO_MAP_SCHEMATIC_UNDEFINED_DEVICE
#include <icv.rh>

#ifdef VERSION_LT
#if VERSION_LT(2023, 12, 3, 0)
#error This PXL runset was generated to run with ICV version 2023.12-SP3 and newer.
#endif
#endif

#define str(x) #x
#define qstr(x) str(x)

#pragma PXL define_from_envvar d_ENV_EDTEXT_FILE EDTEXT_FILE

edtext_items : list of edtext_s = {};
#ifdef d_ENV_EDTEXT_FILE
edtext_items = {
    #include qstr(d_ENV_EDTEXT_FILE)
};
#endif

#pragma PXL define_from_envvar d_ENV_BEOL_STACK BEOL_STACK
#pragma PXL define_from_envvar d_ENV_CONNECT_THRU_DIFF_CHECK CONNECT_THRU_DIFF_CHECK
#pragma PXL define_from_envvar d_ENV_ERC_RUN ERC_RUN
#pragma PXL define_from_envvar d_ENV_EXTRACT_MIM_CAP EXTRACT_MIM_CAP
#pragma PXL define_from_envvar d_ENV_INCLUDE_FILE INCLUDE_FILE
#pragma PXL define_from_envvar d_ENV_LVSRES_ALT_METHODOLOGY LVSRES_ALT_METHODOLOGY
#pragma PXL define_from_envvar d_ENV_MOS_NF_BY MOS_NF_BY
#pragma PXL define_from_envvar d_ENV_PEX_RUN PEX_RUN
#pragma PXL define_from_envvar d_ENV_POLY_HIGH_RESISTOR POLY_HIGH_RESISTOR
#pragma PXL define_from_envvar d_ENV_TOPMETAL TOPMETAL
#pragma PXL define_from_envvar d_ENV_BEOL_STACK BEOL_STACK
#pragma PXL define_from_envvar d_ENV_LAYOUT_CHECK LAYOUT_CHECK
#pragma PXL define_from_envvar d_ENV_VIRTUAL_CONNECT VIRTUAL_CONNECT
#pragma PXL define_from_envvar d_ENV_GF_PDK_HOME GF_PDK_HOME
#pragma PXL define_from_envvar d_ENV_ICV_LVS ICV_LVS
#ifdef d_ENV_GF_PDK_HOME
gICV_LVS = qstr(d_ENV_GF_PDK_HOME) + "/LVS/ICV";
#else
#ifndef d_ENV_ICV_LVS
#error Please set the path ICV_LVS to the location of the ICV runset installation directory. Example: setenv ICV_LVS $GF_PDK_HOME/LVS/ICV
#else
gICV_LVS = qstr(d_ENV_ICV_LVS);
#endif
#endif

/* 
###############################################################################################
# Disclaimer:
# -----------
# The information contained herein is confidential and is the property of GLOBALFOUNDRIES and/or
# its licensors.  GLOBALFOUNDRIES reserves all proprietary, design, manufacturing, reproduction,
# use, sales and other rights in the information herein, in its products and services, and to any
# article or process utilizing such information, except to the extent that rights are expressly 
# granted to others.
# This document is for informational purposes only, is current only as of the date of publication
# and is subject to change by GLOBALFOUNDRIES at any time without notice.  While precautions have
# been taken in the preparation of the information herein, it may contain technical inaccuracies,
# omissions and typographical errors. GLOBALFOUNDRIES is under no obligation to update or otherwise
# correct this information.  
# All information contained herein is provided "AS IS."  GLOBALFOUNDRIES makes no representations
# and disclaims all warranties of any kind, express or implied, including without limitation any 
# implied warranties of non-infringement, merchantability or fitness for a particular purpose, 
# with respect to the information contained HEREIN.   
# Terms and conditions applicable to the purchase, quality and use of GLOBALFOUNDRIES' products 
# and services are as set forth in your organization's signed agreement with GLOBALFOUNDRIES or 
# in GLOBALFOUNDRIES' Standard Terms and Conditions of Sale.  Unless otherwise authorized in a 
# signed agreement with GLOBALFOUNDRIES, GLOBALFOUNDRIES' products and services are NOT intended 
# for use in applications such as implantation, life support, or other hazardous uses where 
# malfunction could result in death, bodily injury, or catastrophic property damage.
# GLOBALFOUNDRIES, the GLOBALFOUNDRIES logo and combinations thereof are trademarks of 
# GLOBALFOUNDRIES Inc. in the United States and/or other jurisdictions. Other product or service
# names are for identification purposes only and may be trademarks or service marks of their 
# respective owners.
# © GLOBALFOUNDRIES Inc. 2015. Unless otherwise indicated, all rights reserved. 
# Do not copy or redistribute except as expressly permitted by GLOBALFOUNDRIES.
# 
###############################################################################################
 */

/* Hints for use with #IFDEF <identifier> [value] directives */
/* #define d_BEOL_1P2M */
/* #define d_BEOL_1P3M */
/* #define d_BEOL_1P4M */
/* #define d_BEOL_1P5M */
/* #define d_BEOL_1P6M */
/* #define d_CONNECT_THRU_DIFF_CHECK */
/* #define d_ENV_BEOL_STACK 1P2M */
/* #define d_ENV_BEOL_STACK 1P3M */
/* #define d_ENV_BEOL_STACK 1P4M */
/* #define d_ENV_BEOL_STACK 1P5M */
/* #define d_ENV_BEOL_STACK 1P6M */
/* #define d_ENV_CONNECT_THRU_DIFF_CHECK YES */
/* #define d_ENV_ERC_RUN YES */
/* #define d_ENV_EXTRACT_MIM_CAP 1P0FF_OPT_A */
/* #define d_ENV_EXTRACT_MIM_CAP 1P0FF_OPT_B */
/* #define d_ENV_EXTRACT_MIM_CAP 1P5FF_OPT_A */
/* #define d_ENV_EXTRACT_MIM_CAP 1P5FF_OPT_B */
/* #define d_ENV_EXTRACT_MIM_CAP 2P0FF_OPT_A */
/* #define d_ENV_EXTRACT_MIM_CAP 2P0FF_OPT_B */
/* #define d_ENV_INCLUDE_FILE */
/* #define d_ENV_LVSRES_ALT_METHODOLOGY TRUE */
/* #define d_ENV_MOS_NF_BY COUNT */
/* #define d_ENV_PEX_RUN YES */
/* #define d_ENV_POLY_HIGH_RESISTOR 2K */
/* #define d_ENV_POLY_HIGH_RESISTOR 3K */
/* #define d_ENV_TOPMETAL 11KA */
/* #define d_ENV_TOPMETAL 30KA */
/* #define d_ENV_TOPMETAL 6KA */
/* #define d_ENV_TOPMETAL 9KA */
/* #define d_ERC_RUN */
/* #define d_EXTRACT_MIM_CAP_1P0FF_OPT_A */
/* #define d_EXTRACT_MIM_CAP_1P0FF_OPT_B */
/* #define d_EXTRACT_MIM_CAP_1P5FF_OPT_A */
/* #define d_EXTRACT_MIM_CAP_1P5FF_OPT_B */
/* #define d_EXTRACT_MIM_CAP_2P0FF_OPT_A */
/* #define d_EXTRACT_MIM_CAP_2P0FF_OPT_B */
/* #define d_LVSRES_ALT_METHODOLOGY */
/* #define d_MIM_OPTION_A */
/* #define d_MOS_NF_BY_COUNT */
/* #define d_MOS_NF_BY_SPLIT */
/* #define d_NWRING_SEPARATION */
/* #define d_PEX_RUN */
/* #define d_POLY_HIGH_RESISTOR_2K */
/* #define d_POLY_HIGH_RESISTOR_3K */
/* #define d_TOPMETAL_11KA */
/* #define d_TOPMETAL_30KA */
/* #define d_TOPMETAL_6KA */
/* #define d_TOPMETAL_9KA */

/* Explicitly defined (unconditionally) in the original runset */
/* ******************************************************************************************************** */
/* +----------------------------------------------------------------------------------------------------+  */
/* | SWITCHES SETUP SECTION                                                                             |  */
/* +----------------------------------------------------------------------------------------------------+  */
/* ******************************************************************************************************** */

//
//########################################################################################################//
// Switch: Metallization Option                                                                           //
//########################################################################################################//
// To define the metalization option please use the following environmental variable:
//
//    $BEOL_STACK = 1PxM (x = # of metal layers, 2<=x<=6)
//
// Please refer to DR spec for available metalization options. 
//
//========================================================================================================//
// If environmental variables are being used, do NOT edit the next lines!
// If NOT ... You MUST uncomment ONE metallization option.
//========================================================================================================//
//#define d_BEOL_1P2M                       /* Uncomment this line to define metal2 as the top metal (Poly2,M1,M2). */
//#define d_BEOL_1P3M                       /* Uncomment this line to define metal3 as the top metal (Poly2,M1,M2,M3). */
//#define d_BEOL_1P4M                       /* Uncomment this line to define metal4 as the top metal (Poly2,M1,M2,M3,M4). */
//#define d_BEOL_1P5M                       /* Uncomment this line to define metal5 as the top metal (Poly2,M1,M2,M3,M4,M5). */
//#define d_BEOL_1P6M                       /* Uncomment this line to define metal6 as the top metal (Poly2,M1,M2,M3,M4,M5,M6). */

//
//########################################################################################################//
// Switch: Thick Top Metal Option                                                                         //
//########################################################################################################//
// To define other value as thick top metal thickness please use the following environmental variable:
//
//    $TOPMETAL = 9kA
//
//    e.g.
//    setenv TOPMETAL 9kA # [ 6kA | 9kA | 11kA | 30kA ]
//
// Please refer to DR spec for available topmetal thickness options. 
//
//========================================================================================================//
// If environmental variables are being used, do NOT edit the next lines!                                 //
//========================================================================================================//
//#define d_TOPMETAL_6KA                    /* Uncomment this line to define 6kA as thick top metal thickness. */
//#define d_TOPMETAL_9KA                    /* Uncomment this line to define 9kA as thick top metal thickness. */
//#define d_TOPMETAL_11KA                   /* Uncomment this line to define 11kA as thick top metal thickness. */
//#define d_TOPMETAL_30KA                   /* Uncomment this line to define 30kA as thick top metal thickness. */

//
///########################################################################################################//
// Switch: Ppoly high resistor Option                                                                    //
//########################################################################################################//
// By default,LVS ues 1K high-Rs p+ poly resistor
// To define 2K and 3K p+ poly resistor,please use the following environmental variable:
//
//    $POLY_HIGH_RESISTOR = [1K || 2K || 3K]
//
//    e.g.
//    setenv POLY_HIGH_RESISTOR 1K # [1K || 2K || 3K]
//
//    1K - To define high p+ poly resistor sheet resistance to be 1K
//    2K - To define high p+ poly resistor sheet resistance to be 2K
//    3K - To define high p+ poly resistor sheet resistance to be 3K
//
//========================================================================================================//
// If environmental variables are being used, do NOT edit the next lines!
//========================================================================================================//
//#define d_POLY_HIGH_RESISTOR_2K           /* Uncomment this line to define 2K high Rs poly resistor */
//#define d_POLY_HIGH_RESISTOR_3K           /* Uncomment this line to define 3K high Rs poly resistor */

//
//########################################################################################################//
// Switch: MIM Capacitor Option                                                                           //
//########################################################################################################//
// To extract 1.0fF/um*um or 1.5fF/um*um MIM capacitor please use the following environmental variable:
//
//    $EXTRACT_MIM_CAP = [ 2p0fF_OPT_A | 1p5fF_OPT_A | 1p0fF_OPT_A | 2p0fF_OPT_B | 1p5fF_OPT_B | 1p0fF_OPT_B ]
//
// Note: Currently GLOBALFOUNDRIES offers 1.5fF/um*um (Vc <= 6V) , 1.0fF/um*um (Vc <= 20V) and 2.0fF/um*um (Vc <= 6V)
//       MIM capacitor in nominal process, however, the three devices can NOT co-exist.
//       Please choose one of the three capacitors for LVS.
//
//========================================================================================================//
// If environmental variables are being used, do NOT edit the next lines!
//========================================================================================================//
//#define d_EXTRACT_MIM_CAP_2P0FF_OPT_A     /* Uncomment this line to extract 2.0fF/um*um (Vc <= 6V) MIM capacitor. */
//#define d_EXTRACT_MIM_CAP_1P5FF_OPT_A     /* Uncomment this line to extract 1.5fF/um*um (Vc <= 6V) MIM capacitor. */
//#define d_EXTRACT_MIM_CAP_1P0FF_OPT_A     /* Uncomment this line to extract 1.0fF/um*um (Vc <= 20V) MIM capacitor. */
//#define d_EXTRACT_MIM_CAP_2P0FF_OPT_B     /* Uncomment this line to extract 2.0fF/um*um (Vc <= 6V) MIM capacitor. */
//#define d_EXTRACT_MIM_CAP_1P5FF_OPT_B     /* Uncomment this line to extract 1.5fF/um*um (Vc <= 6V) MIM capacitor. */
//#define d_EXTRACT_MIM_CAP_1P0FF_OPT_B     /* Uncomment this line to extract 1.0fF/um*um (Vc <= 20V) MIM capacitor. */

//
//########################################################################################################//
// Switch: ERC Option                                                                                     //
//########################################################################################################//
// By default, LVS does not run any ERC checks.
// To run ERC checks please use the following environmental variable:
//
//    $LVS_EXECUTE_ERC = YES
//
//========================================================================================================//
// If environmental variables are being used, do NOT edit the next lines!
//========================================================================================================//
//#define d_ERC_RUN                         /* Uncomment this line to run ERC checks in LVS. */

//
//========================================================================================================//
//########################################################################################################//
// Switch: Connect thru diffusion check Option                                                            //
//########################################################################################################//
// By default, CONNECT_THRU_DIFF_CHECK = NO  This means that any ptap ring, ntap ring, nsd ring, and psd ring 
// that sits in the same diffusion will pass CONNECT_THRU_DIFF_CHECK even if there's a metal slit in the ring.    
//
//    $CONNECT_THRU_DIFF_CHECK = [ YES | NO ]
//
//#define d_CONNECT_THRU_DIFF_CHECK         /* uncomment this line to check all diffusion layers that used as connections. */

//
//########################################################################################################//
// Switch: MOSFET Number-of-Finger(NF) Extraction Option                                                  //
//########################################################################################################//
// By default, LVS extract multifinger MOSFET as one device and its NF is extracted base on the connected
// gate numbers over the same diffusion region.
// To extract multifinger MOSFET as separate individual devices, please use the following environmental variable:
//
//    $MOS_NF_BY = SPLIT
//
//    e.g.
//    setenv MOS_NF_BY COUNT # [ COUNT || SPLIT ]
//
//    e.g.
//    By default (MOS_NF_BY_SPLIT), 3-finger MOSFET is extracted as 3 MOSFET with NF=1,
//    while with MOS_NF_BY_COUNT defined, 3-finger MOSFET is extracted as 1 MOSFETs with NF=3 for each MOSFET.
//========================================================================================================//
// If environmental variables are being used, do NOT edit the next lines!                                 //
//========================================================================================================//
//#define d_MOS_NF_BY_COUNT                 /* Uncomment this line to extract MOSFET NF by total gate count. */

//
//########################################################################################################//
// Switch: PEX Option                                                                                     //
//########################################################################################################//
// By default, LVS does not run PEX.
// To run PEX please use the following environmental variable:
//
//    $PEX_RUN = YES
//
//    e.g.
//    setenv PEX_RUN NO # [ NO || YES ]
//
//========================================================================================================//
// If environmental variables are being used, do NOT edit the next lines!                                 //
//========================================================================================================//
//#define d_PEX_RUN                         /* Uncomment this line to run PEX. */

#ifdef OVERRIDE_FILE
    #define "override_file.rs"
#endif




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
#ifndef d_BEOL_1P2M
   #ifndef d_BEOL_1P3M
      #ifndef d_BEOL_1P4M
         #ifndef d_BEOL_1P5M
            #ifndef d_BEOL_1P6M
               #error __NO_VALID_BEOL_STACK_DEFINED__
            #endif
         #endif
      #endif
   #endif
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
   #ifdef d_MOS_NF_BY_SPLIT
      #error __MORE_THAN_ONE_MOS_NF_BY_DEFINED_COUNT_&_SPLIT__
   #endif
#endif
#if definition(d_ENV_PEX_RUN, "YES", 0)
   #define d_PEX_RUN
#endif
#if definition(d_ENV_LVSRES_ALT_METHODOLOGY, "TRUE", 0)
   #define d_LVSRES_ALT_METHODOLOGY
#endif
#if definition(d_ENV_LAYOUT_CHECK, "TRUE", 0)
   #define d_LAYOUT_CHECK
#endif


layout_case_sensitive : boolean = false;
layout_preserve_case : boolean = false;
run_options_uppercase : boolean = !layout_case_sensitive && !layout_preserve_case;
schematic_case_sensitive: boolean = false;

#ifndef d_LVSRES_ALT_METHODOLOGY
   vSIZE_VALUE_m526 : const double = 0.001;
#endif
#ifdef d_BEOL_1P2M
   #ifndef d_LVSRES_ALT_METHODOLOGY
      vSIZE_VALUE_m524 : const double = 0.001;
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifndef d_LVSRES_ALT_METHODOLOGY
      vSIZE_VALUE_m522 : const double = 0.001;
      vSIZE_VALUE_m520 : const double = 0.001;
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifndef d_LVSRES_ALT_METHODOLOGY
      vSIZE_VALUE_m518 : const double = 0.001;
      vSIZE_VALUE_m516 : const double = 0.001;
      vSIZE_VALUE_m514 : const double = 0.001;
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifndef d_LVSRES_ALT_METHODOLOGY
      vSIZE_VALUE_m512 : const double = 0.001;
      vSIZE_VALUE_m510 : const double = 0.001;
      vSIZE_VALUE_m508 : const double = 0.001;
      vSIZE_VALUE_m506 : const double = 0.001;
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifndef d_LVSRES_ALT_METHODOLOGY
      vSIZE_VALUE_m504 : const double = 0.001;
      vSIZE_VALUE_m502 : const double = 0.001;
      vSIZE_VALUE_m500 : const double = 0.001;
      vSIZE_VALUE_m498 : const double = 0.001;
      vSIZE_VALUE_m496 : const double = 0.001;
   #endif
#endif

violation_name_group( "soft_check_rules", { "SOFTCHK_gPSUB_LOWER", "SOFTCHK_gPURENWELL_LOWER", "SOFTCHK_gVPNP_BASE_LOWER", "SOFTCHK_gDN_SUB_LOWER", "SOFTCHK_gVNPN_COL_LOWER", "SOFTCHK_gDN_LP_LOWER", "SOFTCHK_gVNPN_BASE_LOWER", "SOFTCHK_gSUB_UNDER_LOWER", "SOFTCHK_gLDMNDRN_10P0_LOWER", "SOFTCHK_gLDMPDRN_10P0_LOWER", "SOFTCHK_aDNWELL_ALL", "SOFTCHK_gSD_SHIFT_1_MOS_ALL", "SOFTCHK_gSD_SHIFT_2_MOS_ALL", "SOFTCHK_gSD_SHIFT_2_MOS_LOGIC_ALL", "SOFTCHK_gSD_SHIFT_1_MOS_LOGIC_ALL", "SOFTCHK_gLDMPSRC_10P0_ALL", "SOFTCHK_gSAB_PDRN_ALL", "SOFTCHK_gNTAP_ALL", "SOFTCHK_gPSD_ALL", "SOFTCHK_gNTAP_NDDD_ALL", "SOFTCHK_gPTAP_PDDD_ALL", "SOFTCHK_gPMOSCAP_PSD_B_ALL", "SOFTCHK_gSAB_NSRC_ALL", "SOFTCHK_gPTAP_ALL", "SOFTCHK_gSAB_PSRC_ALL", "SOFTCHK_gNMOSCAP_NSD_B_ALL", "SOFTCHK_gNSD_ALL", "SOFTCHK_gSAB_NDRN_ALL", "SOFTCHK_gLDMNSRC_10P0_ALL" } );
#ifdef d_ERC_RUN
   violation_name_select( { "", "soft_check_rules" } );
#endif

#ifdef d_ERC_RUN
   /* ******************************************************************************************************** */
   /* +----------------------------------------------------------------------------------------------------+  */
   /* | ERC CHECK                                                                                          |  */
   /* +----------------------------------------------------------------------------------------------------+  */
   /* ******************************************************************************************************** */
   
   violation_name_select( { "rERC1" } );
   violation_name_select( { "rERC2" } );
   violation_name_select( { "rERC3" } );
   violation_name_select( { "rERC4" } );
   violation_name_select( { "rERC5" } );
   violation_name_select( { "rERC6" } );
   violation_name_select( { "rERC7" } );
   violation_name_select( { "rERC8" } );
   violation_name_select( { "rERC9" } );
   violation_name_select( { "rERC9A" } );
   violation_name_select( { "rERC9B" } );
   violation_name_select( { "rERC9C" } );
   violation_name_select( { "rERC9D" } );
   violation_name_select( { "rERC9E" } );
   violation_name_select( { "rERC10" } );
   violation_name_select( { "rERC10A" } );
   violation_name_select( { "rERC10B" } );
   violation_name_select( { "rERC11" } );
   violation_name_select( { "rNGATE_1", "rPGATE_1" } );
   violation_name_select( { "rRES_1" } );
   violation_name_select( { "rERC_PATHCHK_NOGND_NOPWR" } );
   violation_name_select( { "rERC_PATHCHK_GND_NOPWR" } );
   violation_name_select( { "rERC_PATHCHK_NOGND_PWR" } );
   violation_name_select( { "rERC_PATHCHK_NOLABEL" } );
   violation_name_select( { "rERC_PATHCHK_NOGND_NOPWR_EDL" } );
   violation_name_select( { "rERC_PATHCHK_GND_NOPWR_EDL" } );
   violation_name_select( { "rERC_PATHCHK_NOGND_PWR_EDL" } );
   violation_name_select( { "rERC_PATHCHK_NOLABEL_EDL" } );
#endif

#ifdef DESIGN_OPTIONSFILE
    #include qstr(DESIGN_OPTIONSFILE)
#else
    #include "cmos018hv.3p3.6v.design_inc.rs"
#endif


vTRACE_AREA : const double = vZERO_TOLERANCE_VALUE;             
vTRACE_VALUE : const double = vZERO_TOLERANCE_VALUE;            
vTRACE_LENGTH : const double = vZERO_TOLERANCE_VALUE;           
CONNECT_DB : connect_database = NULL_CONNECT_DATABASE;
soft_connect_layers : list of soft_connect_item_s = { };
exit_on_softchk_e : newtype enum of {
    NONE,
    ONE,
    ALL
};
exit_on_softchk : exit_on_softchk_e = NONE;
softchk_violations : list of string = {};

#include "Include/cmos018hv.3p3.6v.dev_functions.rs"


#include "Include/cmos018hv.3p3.6v.assign.rs"


#include "Include/cmos018hv.3p3.6v.datacreation.rs"
CONNECT_DB = create_ports( CONNECT_DB, port_items = create_port_items, port_text_items = create_port_text_items, report = { UNUSED_MARKERS }, cell_list = port_depth_cell_list, processing_mode = HIERARCHICAL );

dev_matrix : device_matrix = init_device_matrix(CONNECT_DB, dual_hierarchy_extraction = dual_hier_TorF );
#include "Include/cmos018hv.3p3.6v.devices.rs"

compare_settings = init_compare_matrix();
#include "Include/cmos018hv.3p3.6v.compare.rs"
