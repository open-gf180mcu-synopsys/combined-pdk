library(
    cell         = "cell",
    format       = GDSII,
    library_name = "inlib"
);

icv_unit_file = gICV_LVS + "/unit.cdl";
schematic_netlist_db = schematic(
     uppercase = !schematic_case_sensitive,
     expand_multiple_devices = true,
     schematic_file          = {{ "xxx.cdl", SPICE }},
     schematic_library_file = {{icv_unit_file, SPICE}},
     spice_settings          = { slash_is_space = true,
     ignore_cdl_resi = true
     }
);
run_options( 
    instance_prefix  = "I_",
    lvs_netlist_flow = SPICE,
    lvs_user_unit    = METER,
    uppercase        = run_options_uppercase
);
compatibility_options( 
    device_extraction = {
        preprocess_same_body_layers = true,
        require_processing_layers = true
    },
    drc               = {
        boolean_ancestry = CONSTRUCTOR,
        fixed_violation_width = true,
        remove_opposite_edges = true,
        spacing = {
            combine_edge_pair_violations = true,
            merge_spacing_violations = true,
            orphan_edge_membership = NONE,
            point_touch = MEASURE_EDGES
        }
    }
);




error_options( 
    error_limit_per_check   = 1000,
    output_violation_shapes = { NET_POLYGON },
    report_empty_violations = false
);
gds_options( 
    duplicate_cell = DROP
);
resolution_options( 
    drc_angle_precision     = 0.0,
    drc_length_precision    = 0.0,
    internal_resolution     = 0.001,
    layout_resolution_check = {
        action = ABORT,
        resolution = 0.001
    },
    spacing_tolerance       = 0.0
);
#ifdef d_LAYOUT_CHECK
layout_drawn_options( 
    self_intersect_action = FILL
);
#endif
layout_grid_options( 
    check_45 = {},
    check_90 = {}
);

LVS_GROUND_NAMES: list of string = {};
LVS_POWER_NAMES: list of string = {};

#ifdef d_ERC_RUN

//Below are the list of POWER / GROUND settings available for this runset  
//Please update the default values, as desired for the run
GND : list of string = { "GND", "GND!", "gnd", "gnd!", "VSS", "VSS!"};
PWR : list of string = { "PWR", "VDD", "VDD!", "vdd", "vdd!"};
PWR3P3 : list of string = { "PWR3P3" };
PWR5 : list of string = { "PWR5" };
PWR6 : list of string = { "PWR6" };
PWR10 : list of string = { "PWR10" };
PWR = PWR.merge(PWR3P3).merge(PWR5).merge(PWR6).merge(PWR10);

LVS_GROUND_NAMES = GND;
LVS_POWER_NAMES = PWR;

#endif


text_options( 
    allow_all_numeric = true,
    colon_text        = REGULAR_TEXT,
    edtext            = edtext_items,
    layout_ground     = LVS_GROUND_NAMES,
    layout_power      = LVS_POWER_NAMES,
    replace_text_characters_regex = { { { { search_string = "[\\s\\*\"={},]", replace_string = "_" } } } },    
    semicolon_text    = REGULAR_TEXT
);

lvs_options( 
    extract_single_terminal_mos_src_properties = EMPTY,
    spice_multiplier_names                     = { "M" },
    lvs_property_epsilon = E5_EPSILON 

);

net_options( 
    schematic_ground = LVS_GROUND_NAMES,
    schematic_power  = LVS_POWER_NAMES
);

// Control reporting of text errors. Following is the default value in runset
report_errors_text_override : list of text_error_e = {/*UNUSED,*/ SHORTED,/*MERGED,*/  RENAMED, REASSIGN_SHORTED};

// Controls text_net options values. 
use_text_override : text_use_e = ALL;
attach_text_override : attach_text_e = TOP;
opens_override : text_open_e = MERGE_CONNECTED_AND_TOP;

//VIRTUAL CONNECT Settings: All texts are considered for virtual connection by default
merge_open_net_names_items : list of string = { " " };
#if definition(d_ENV_VIRTUAL_CONNECT, "TRUE", 0)
    merge_open_net_names_items = { "*" };
#endif

//ERC text check control
texted_at_override : net_texted_location_e = TOP_CELL;
//texted_at_override : net_texted_location_e = ANY_LEVEL;
//texted_at_override : net_texted_location_e = HIGHEST_TEXT;

//Settings for Case-based Compare
//compare_case_sensitive: boolean = { DEVICE_NAME, NET_PORT, PROPERTY };

//Tolerance variable for properties with 0 tolerance
vZERO_TOLERANCE_VALUE : const double = 1e-05;


//FILTER Settings
nmos_filter : list of filter_option_e = {};
pmos_filter : list of filter_option_e = {};
cap_filter  : list of filter_option_e = {};
np_filter   : list of filter_option_e = {};
pn_filter   : list of filter_option_e = {};
npn_filter  : list of filter_option_e = {};
pnp_filter  : list of filter_option_e = {};
res_filter  : list of filter_option_e = {};
generic_filter  : list of filter_option_e = {};

cap_filter =  {  };
res_filter =  {  };
nmos_filter = {  };
pmos_filter = {  };
np_filter =   {  };
pn_filter =   {  };
npn_filter =  {  };
pnp_filter =  {  };
generic_filter =  {  };


