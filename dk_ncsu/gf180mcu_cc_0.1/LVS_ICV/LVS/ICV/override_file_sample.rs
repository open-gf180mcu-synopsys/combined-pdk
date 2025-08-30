/*###################################
 *
 * NCSU OVERRIDES
 * #################################*/

layout_case_sensitive : boolean = false;
layout_preserve_case : boolean = false;
run_options_uppercase : boolean = !layout_case_sensitive && !layout_preserve_case;


//vFIN_HEIGHT : const double = 30e-9;

vFIN_WIDTH : const double = 8e-9;

//vFIN_SEPARATION : const double = 40e-9;

vWFIN_D : const double = 8e-9;

vWFIN_S : const double = 8e-9;

CONNECT_DB : connect_database = NULL_CONNECT_DATABASE;
soft_connect_layers : list of soft_connect_item_s = { };
abort_on_softchk : boolean = false;
infinity : const double = 1.0 / 0.0;

cal_text_layer_item_h : newtype hash of string to text_layer_item_s;
cal_text_layer_items_h : newtype hash of string to list of text_layer_item_s;

attach_text_net_items : cal_text_layer_items_h = {};
connect_text_net_items : cal_text_layer_item_h = {};
presort_text_net_items : list of text_layer_item_s = {};
merge_open_net_names_items : list of string = { "" };

user_functions_path : string = "FreePDK3_main.lvs.rs.user_functions"; 
vLVS_POWER_NAMES : list of string = { "VDD", "vdd", "vdd!", "VDD!" };
vLVS_GROUND_NAMES : list of string = { "VSS", "GND!", "gnd!", "vss" };

/* Begin of Equation Code-Based Functions definitions */

collect_text_net_items : published function (
    attach_items : cal_text_layer_items_h,
    connect_items : cal_text_layer_item_h,
    presort_items : list of text_layer_item_s
)

returning text_net_items : list of text_layer_item_s
{
    /* Initialize the output list. */
    text_net_items = {};

    /* Append the ATTACH-based items. */
    foreach (text_layer_items in attach_items.values()) {
        foreach (text_layer_item in text_layer_items) {
            text_net_items.push_back(text_layer_item);
        }
    }

    /* Append the CONNECT-based items which are not already present
     * because of an ATTACH.
     */
    foreach (text_layer_str in connect_items.keys()) {
        if (!attach_items.contains_key(text_layer_str)) {
            text_net_items.push_back(connect_items[text_layer_str]);
        }
    }

    /* Append the TEXT-based items. */
    foreach (text_layer_item in presort_items) {
        text_net_items.push_back(text_layer_item);
    }
}

/* End of Equation Code-Based Functions definitions */

/* Begin of Common Device Functions definitions */                                   //Needs to be determined
dev_func_MY_FET_PROPERTIES : function (void) returning void
{
    vADEO   : double;
    vASEO   : double;
    vL      : double;
    vNFIN   : double;
    vPDEO   : double;
    vPSEO   : double;
    vW      : double;


    vGATE = dev_recognition_layer();
    vS = dev_pin("SRC");
    vD = dev_pin("DRN");
    vDUMMY = dev_processing_layer("DUMMY");

    COUNT = dev_count_polygons(vGATE);
    vL = ( ( dev_polygon_perim ( vGATE ) - dev_touch_length ( vGATE , vS ) - dev_touch_length ( vGATE , vD ) ) * 0.5 / COUNT );
    vW = ( ( dev_touch_length ( vGATE , vS ) + dev_touch_length ( vGATE , vD ) ) * 0.5 / COUNT );
    vNFIN = 2 * COUNT;

    // BSIM-CMG subtracts NFIN*TFIN (i.e. NFIN*drawn_width) from perimeter,
    // Which does not work for stacked fins.  To compensate, we add an
    // extra width as a hack, so that BSIM-CMG correctly calculates 
    // a 3-sided perimeter for each stack

    if ( dev_count_polygons(dev_touching( vD, vDUMMY ) ) > 0 ) { 
        vPDEO = ( ( dev_polygon_perim( vD ) + dev_touch_length( vGATE , vD ) ) * 0.5 );
        vADEO = dev_polygon_area( vD ) * 0.5 ;
    }
    else {
        vPDEO = ( ( dev_polygon_perim( vD ) + dev_touch_length( vGATE , vD ) ) );
        vADEO = dev_polygon_area( vD ) ;
    }

    if ( dev_count_polygons(dev_touching( vS, vDUMMY ) ) > 0 ) { 
        vPSEO = ( ( dev_polygon_perim( vS ) + dev_touch_length( vGATE , vS ) ) * 0.5 );
        vASEO = dev_polygon_area( vS ) * 0.5 ;
    }
    else {
        vPSEO = ( ( dev_polygon_perim( vS ) + dev_touch_length( vGATE , vS ) ) );
        vASEO = dev_polygon_area( vS ) ;
    }


    //note("fet_prop perim vPDEO "+dbltostr(vPDEO*1e9));
    //note("fet_prop perim vADEO "+dbltostr(vADEO*1e18));
    //note("fet_prop perim vPSEO "+dbltostr(vPSEO*1e9));
    //note("fet_prop perim vASEO "+dbltostr(vASEO*1e18));

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },
        { "NFIN", vNFIN },
        { "ADEO", vADEO },
        { "ASEO", vASEO },
        { "PDEO", vPDEO },
        { "PSEO", vPSEO }
    });
}
/* End of Common Device Functions definitions */

library(
    cell         = "cell",
    format       = GDSII,
    library_name = "inlib"
);

schematic_db = schematic(
    schematic_file = {{"sch", SPICE}}
);

run_options(
    lvs_netlist_flow = SPICE,
    lvs_user_unit    = METER,
    uppercase        = run_options_uppercase
);

compatibility_options(
    drc = { { orphan_edge_membership = NONE } }
);

error_options(
    error_limit_per_check   = 1000,
    report_empty_violations = true
);

gds_options(
    duplicate_cell = DROP
);

resolution_options(
    drc_angle_precision  = 0.0,
    drc_length_precision = 0.0,
    internal_resolution  = 0.0005,
    spacing_tolerance    = 0.0
);

layout_drawn_options(
    self_intersect_action = FILL
);

layout_grid_options(
    check_45 = {},
    check_90 = {}
);

text_options(
    allow_all_numeric             = true,
    colon_text                    = REGULAR_TEXT,
    layout_ground                 = vLVS_GROUND_NAMES,
    layout_power                  = vLVS_POWER_NAMES,
    replace_text_characters_regex = { { { { search_string = "[\\s\\*\"={},]", replace_string = "_" } } } },
    semicolon_text                = REGULAR_TEXT
);

net_options(
    schematic_ground = vLVS_GROUND_NAMES,
    schematic_power  = vLVS_POWER_NAMES
);

lvs_options(
    spice_multiplier_names = { "M" }
);



/*#########################################################################

		 REQUIRED PREPROCESSOR MACROS 

#########################################################################*/

//*****************************************************************************************
// Please set the path ICV_LVS to $GF_PDK_HOME/LVS/ICV or the ICV LVS Runset path 
// Example: #define d_ENV_ICV_LVS $GF_PDK_HOME/LVS/ICV
//*****************************************************************************************

//#define d_ENV_ICV_LVS $GF_PDK_HOME/ICV/LVS/

//#define d_ENV_BEOL_STACK 1P2M
//#define d_ENV_BEOL_STACK 1P3M
//#define d_ENV_BEOL_STACK 1P4M
//#define d_ENV_BEOL_STACK 1P5M
//#define d_ENV_BEOL_STACK 1P6M

/*#########################################################################

#		 OPTIONAL PREPROCESSOR MACROS 

##########################################################################*/


//#define d_ENV_CONNECT_THRU_DIFF_CHECK YES

//#define d_ENV_ERC_RUN YES

//#define d_ENV_EXTRACT_MIM_CAP 1P0FF_OPT_A
//#define d_ENV_EXTRACT_MIM_CAP 1P0FF_OPT_B
//#define d_ENV_EXTRACT_MIM_CAP 1P5FF_OPT_A
//#define d_ENV_EXTRACT_MIM_CAP 1P5FF_OPT_B
//#define d_ENV_EXTRACT_MIM_CAP 2P0FF_OPT_A
//#define d_ENV_EXTRACT_MIM_CAP 2P0FF_OPT_B

//#define d_ENV_LVSRES_ALT_METHODOLOGY TRUE

//#define d_ENV_MOS_NF_BY COUNT

//#define d_ENV_PEX_RUN YES

//#define d_ENV_POLY_HIGH_RESISTOR 2K
//#define d_ENV_POLY_HIGH_RESISTOR 3K

//#define d_ENV_TOPMETAL 11KA
//#define d_ENV_TOPMETAL 30KA
//#define d_ENV_TOPMETAL 6KA
//#define d_ENV_TOPMETAL 9KA

//#define d_ENV_VIRTUAL_CONNECT TRUE

