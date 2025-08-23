record_softchk : required function (
    viol : violation,
    name : string
)
    returning void
{
    if (exit_on_softchk != NONE) {
        if (!violation_empty(viol)) {
            softchk_violations.push_back(name);
            if (exit_on_softchk == ONE) {
                error(name + " produced violations.  Exiting.\n");
            }
        }
    }
}

dump_softchk_violations : required function (void) returning void
{
    msg : string = "";
    if (!softchk_violations.empty()) {
        foreach (name in softchk_violations) {
            msg = msg + "    " + name + " produced violations.\n";
        }
        error("One or more SOFTCHK rules produced violations.  Exiting.\n\n" + msg);
    }
}
port_depth_cell_list : list of string = {};
infinity : const double = 1.0 / 0.0;
create_port_items : list of port_item_s = {};
create_port_text_items : list of port_text_item_s = {};
cal_text_layer_item_h : newtype hash of string to text_layer_item_s;
cal_text_layer_items_h : newtype hash of string to list of text_layer_item_s;
attach_text_net_items : cal_text_layer_items_h = {};
connect_text_net_items : cal_text_layer_item_h = {};
presort_text_net_items : list of text_layer_item_s = {};




user_functions_path : string = "cmos018hv.3p3.6v.lvs.ctl.1.user_functions";


trunc : published function (
    value : double
)
    returning trunc_result : double
{
    trunc_result = round(value - 0.4999);
}

attach : published function (
    label : string,
    dlayer : polygon_layer,
    tlayer : text_layer
)
    returning void
{
    if (!attach_text_net_items.contains_key(label)) {
        attach_text_net_items[label] = {};
    }
    attach_text_net_items[label].push_back( { dlayer, tlayer } );
}

nar_funcs_e : newtype enum of {
    UNKNOWN,
    NAR_SAVE_NET_1
};
nar_void_func_s : newtype struct of {
    func : function (void) returning void;
};
nar_void_func_h : newtype hash of nar_funcs_e to nar_void_func_s;
nar_constrained_area_s : newtype struct of {
    area    : constraint of double = > 0;
    layer1  : string               = "";
    factor1 : double               = 1.0;
    layer2  : string               = "";
    factor2 : double               = 1.0;
};
nar_constrained_areas_h : newtype hash of string to nar_constrained_area_s;

net_area_ratio : published function (
    cdb_in            : connect_database,
    con               : constraint of double,
    layer_groups      : layer_groups_h,
    denominator_start : integer,
    denominator_end   : integer,
    constrained_areas : nar_constrained_areas_h = { },
    func_enum         : nar_funcs_e             = UNKNOWN,
    expr_is_default   : boolean                 = false
)
    returning net_area_ratio_result : polygon_layer
{
    nar_funcs   : nar_void_func_h = { };
    nar_func    : function (void) returning void;
    con2any     : list of polygon_layer = { };
    not_con2any : list of polygon_layer = { };
    n_layer_0   : polygon_layer;

    
    nar_save_net_1 : function (void) returning void
    {
        areaL1 = ns_net_area("layer1");
        areaL2 = ns_net_area("layer2");

        ratio = (areaL1 / areaL2);

        if (dblccon(con, ratio) && !isinf(ratio) && !isnan(ratio)) {
            ns_save_net({"ratio"}, {ratio});
        }
    }
    nar_funcs[NAR_SAVE_NET_1] = { nar_save_net_1 };

    
    nar_func = nar_funcs[func_enum].func;

    n_layer_0 = layer_groups["layer1"][0];

    if (expr_is_default && (layer_groups.size() > 1)) {
        d_layers : list of polygon_layer = { };

        for (i = denominator_start to denominator_end) {
            d_layers.push_back(layer_groups["layer" + i][0]);
        }

        if ((con.category() == CONSTRAINT_EQ) && !((con.lo() > 0.0) || (con.lo() < 0.0))) {
            not_con2any = d_layers;
        }
        else {
            con2any = d_layers;
        }
    }

    net_area_ratio_result = net_select(
        connect_sequence     = cdb_in,
        net_function         = nar_func,
        layer_groups         = layer_groups,
        connected_to_all     = { n_layer_0 },
        connected_to_any     = con2any,
        not_connected_to_any = not_con2any,
        output_from_layers   = { n_layer_0 }
    );
}

collect_text_net_items : published function (
    attach_items : cal_text_layer_items_h,
    connect_items : cal_text_layer_item_h,
    presort_items : list of text_layer_item_s
)
    returning text_net_items : list of text_layer_item_s
{
    
    text_net_items = {};

    
    foreach (text_layer_items in attach_items.values()) {
        foreach (text_layer_item in text_layer_items) {
            text_net_items.push_back(text_layer_item);
        }
    }

    
     foreach (text_layer_str in connect_items.keys()) {
        if (!attach_items.contains_key(text_layer_str)) {
            text_net_items.push_back(connect_items[text_layer_str]);
        }
    }

    
    foreach (text_layer_item in presort_items) {
        text_net_items.push_back(text_layer_item);
    }
}




dev_func_MOS_PROPERTY_COUNT : function (void) returning void
{
    vA1             : double;
    vA1_REF         : double;
    vA2             : double;
    vA2_REF         : double;
    vAD             : double;
    vAS             : double;
    vFAC_SHR_DIFF_D : double;
    vFAC_SHR_DIFF_S : double;
    vFW             : double;
    vL              : double;
    vM              : double;
    vNF             : double;
    vNF_OE          : double;
    vNF_OE_1        : double;
    vNRD            : double;
    vNRS            : double;
    vP1             : double;
    vP2             : double;
    vPAR            : double;
    vPD             : double;
    vPI_D_ACTIVE    : double;
    vPI_SHR_DIFF_D  : double;
    vPI_SHR_DIFF_S  : double;
    vPI_S_ACTIVE    : double;
    vPS             : double;
    vSC             : double;
    vW              : double;
    vWT             : double;

    vGATE_SEED = dev_pin("GATE");
    vACTIVE_SEED = dev_processing_layer("layer3");
    vS = dev_pin("SRC");
    vPN_ACTIVE = dev_processing_layer("layer1");
    vD = dev_pin("DRN");
    vEXT_SHARE_SD_SEED = dev_processing_layer("layer2");
    
    vM = 1;
    vPAR = vM;
    vNF = dev_count_polygons ( vGATE_SEED );
    vWT = dev_inside_length ( vGATE_SEED , vACTIVE_SEED ) / 2;
    vW = vWT;
    vFW = vWT / vNF;
    vL = dev_polygon_area ( vGATE_SEED ) / vWT;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;
    if ( dblcmp( vNF, 1, DBL_EQ ) ) {
        vPI_S_ACTIVE = dev_inside_length ( vS , vPN_ACTIVE );
        if ( dblcmp( vPI_S_ACTIVE * 1e15, 0, DBL_GT ) ) {
            vAS = vNF * dev_polygon_area ( vS ) * vFW / vPI_S_ACTIVE;
            vPS = vNF * dev_polygon_perim ( vS ) * vFW / vPI_S_ACTIVE;
        }
        else {
            vAS = 0;
            vPS = 0;
        }
        vPI_D_ACTIVE = dev_inside_length ( vD , vPN_ACTIVE );
        if ( dblcmp( vPI_D_ACTIVE * 1e15, 0, DBL_GT ) ) {
            vAD = vNF * dev_polygon_area ( vD ) * vFW / vPI_D_ACTIVE;
            vPD = vNF * dev_polygon_perim ( vD ) * vFW / vPI_D_ACTIVE;
        }
        else {
            vAD = 0;
            vPD = 0;
        }
    }
    else {
        vNF_OE_1 = trunc ( vNF / 2 );
        vNF_OE = vNF_OE_1 * 2;
        vPI_S_ACTIVE = dev_touch_length ( vS , vEXT_SHARE_SD_SEED );
        if ( dblcmp( vPI_S_ACTIVE * 1e15, 0, DBL_GT ) ) {
            vA1_REF = vFW * 0.002e-6;
            if ( dblcmp( dev_polygon_area ( vEXT_SHARE_SD_SEED ), vA1_REF, DBL_GT ) ) {
                vSC = dev_count_polygons ( vEXT_SHARE_SD_SEED );
                if ( dblcmp( vNF_OE, vNF, DBL_EQ ) ) {
                    vA1 = dev_polygon_area ( vEXT_SHARE_SD_SEED );
                    vP1 = dev_polygon_perim ( vEXT_SHARE_SD_SEED );
                }
                else {
                    vA1 = ( dev_polygon_area ( vEXT_SHARE_SD_SEED ) ) / vSC;
                    vP1 = ( dev_polygon_perim ( vEXT_SHARE_SD_SEED ) ) / vSC;
                }
            }
            else {
                vA1 = 0;
                vSC = 0.001;
                vP1 = 0;
            }
            vPI_SHR_DIFF_S = ( dev_inside_length ( vEXT_SHARE_SD_SEED , vPN_ACTIVE ) ) / vSC;
            vFAC_SHR_DIFF_S = ( vPI_SHR_DIFF_S - vFW ) / vPI_SHR_DIFF_S;
            vAS = dev_polygon_area ( vS ) - ( vA1 * vFAC_SHR_DIFF_S );
            vPS = dev_polygon_perim ( vS ) - ( vP1 * vFAC_SHR_DIFF_S );
        }
        else {
            vAS = dev_polygon_area ( vS );
            vPS = dev_polygon_perim ( vS );
        }
        vPI_D_ACTIVE = dev_touch_length ( vD , vEXT_SHARE_SD_SEED );
        if ( dblcmp( vPI_D_ACTIVE * 1e15, 0, DBL_GT ) ) {
            vA2_REF = vFW * 0.002e-6;
            if ( dblcmp( dev_polygon_area ( vEXT_SHARE_SD_SEED ), vA2_REF, DBL_GT ) ) {
                vSC = dev_count_polygons ( vEXT_SHARE_SD_SEED );
                if ( dblcmp( vNF_OE, vNF, DBL_EQ ) ) {
                    vA2 = dev_polygon_area ( vEXT_SHARE_SD_SEED );
                    vP2 = dev_polygon_perim ( vEXT_SHARE_SD_SEED );
                }
                else {
                    vA2 = ( dev_polygon_area ( vEXT_SHARE_SD_SEED ) ) / vSC;
                    vP2 = ( dev_polygon_perim ( vEXT_SHARE_SD_SEED ) ) / vSC;
                }
            }
            else {
                vA2 = 0;
                vSC = 0.001;
                vP2 = 0;
            }
            vPI_SHR_DIFF_D = ( dev_inside_length ( vEXT_SHARE_SD_SEED , vPN_ACTIVE ) ) / vSC;
            vFAC_SHR_DIFF_D = ( vPI_SHR_DIFF_D - vFW ) / vPI_SHR_DIFF_D;
            vAD = dev_polygon_area ( vD ) - ( vA2 * vFAC_SHR_DIFF_D );
            vPD = dev_polygon_perim ( vD ) - ( vP2 * vFAC_SHR_DIFF_D );
        }
        else {
            vAD = dev_polygon_area ( vD );
            vPD = dev_polygon_perim ( vD );
        }
    }
    vNRS = vAS / vW / vW;
    vNRD = vAD / vW / vW;

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },




        { "as", vAS },




        { "ad", vAD },




        { "ps", vPS },




        { "pd", vPD },
        { "NRS", vNRS },
        { "NRD", vNRD },
        { "M", vM },
        { "nf", vNF },
        { "par", vPAR }
    });
}
dev_func_MOS_PROPERTY : function (void) returning void
{
    vAD  : double;
    vAS  : double;
    vL   : double;
    vM   : double;
    vNF  : double;
    vNRD : double;
    vNRS : double;
    vPAR : double;
    vPD  : double;
    vPS  : double;
    vW   : double;

    vSEEDLAYER = dev_recognition_layer();
    vSDLAYER = dev_or( dev_pin("SRC"), dev_pin("DRN") );
    vS = dev_pin("SRC");
    vAUXILAYER = dev_processing_layer("layer1");
    vD = dev_pin("DRN");
    
    vM = 1;
    vPAR = vM;
    vNF = 1;
    vW = dev_touch_length ( vSEEDLAYER , vSDLAYER ) / 2;
    vL = dev_polygon_area ( vSEEDLAYER ) / vW;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;
    vAS = dev_polygon_area ( vS ) * ( vW / dev_inside_length ( vS , vAUXILAYER ) );
    vAD = dev_polygon_area ( vD ) * ( vW / dev_inside_length ( vD , vAUXILAYER ) );
    vPS = dev_polygon_perim ( vS ) * ( vW / dev_inside_length ( vS , vAUXILAYER ) );
    vPD = dev_polygon_perim ( vD ) * ( vW / dev_inside_length ( vD , vAUXILAYER ) );
    vNRS = vAS / vW / vW;
    vNRD = vAD / vW / vW;

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },




        { "as", vAS },




        { "ad", vAD },




        { "ps", vPS },




        { "pd", vPD },
        { "NRS", vNRS },
        { "NRD", vNRD },
        { "M", vM },
        { "nf", vNF },
        { "par", vPAR }
    });
}
dev_func_MOS_PROPERTY_GRID : function (void) returning void
{
    vAD  : double;
    vAS  : double;
    vL   : double;
    vM   : double;
    vNF  : double;
    vNRD : double;
    vNRS : double;
    vPAR : double;
    vPD  : double;
    vPS  : double;
    vW   : double;
    vWT  : double;

    vCOUNTNFLAYER = dev_processing_layer("layer2");
    vGATELAYER = dev_pin("GATE");
    vAUXILAYER = dev_processing_layer("layer1");
    vCOUNTLLAYER = dev_processing_layer("layer3");
    vS = dev_pin("SRC");
    vD = dev_pin("DRN");
    
    vM = 1;
    vPAR = vM;
    vNF = dev_count_polygons ( vCOUNTNFLAYER ) / 2;
    vWT = dev_inside_length ( vGATELAYER , vAUXILAYER ) / 2;
    vW = vWT;
    vL = dev_touch_length ( vGATELAYER , vAUXILAYER ) / dev_count_polygons ( vCOUNTLLAYER );
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;
    vAS = dev_polygon_area ( vS );
    vAD = dev_polygon_area ( vD );
    vPS = dev_polygon_perim ( vS );
    vPD = dev_polygon_perim ( vD );
    vNRS = vAS / vW / vW;
    vNRD = vAD / vW / vW;

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },




        { "as", vAS },




        { "ad", vAD },




        { "ps", vPS },




        { "pd", vPD },
        { "NRS", vNRS },
        { "NRD", vNRD },
        { "M", vM },
        { "nf", vNF },
        { "par", vPAR }
    });
}
dev_func_ESD_MOS_MULTI_PROPERTY : function (void) returning void
{
    vA1             : double;
    vA1_D           : double;
    vA1_REF         : double;
    vAD             : double;
    vAS             : double;
    vD_SAB          : double;
    vFAC_SHR_DIFF_D : double;
    vFAC_SHR_DIFF_S : double;
    vFW             : double;
    vL              : double;
    vM              : double;
    vNF             : double;
    vNRD            : double;
    vNRS            : double;
    vP1             : double;
    vP1_D           : double;
    vPAR            : double;
    vPD             : double;
    vPI_D_ACTIVE    : double;
    vPI_SHR_DIFF_D  : double;
    vPI_SHR_DIFF_S  : double;
    vPI_S_ACTIVE    : double;
    vPS             : double;
    vSC             : double;
    vSC_D           : double;
    vS_SAB          : double;
    vW              : double;
    vWT             : double;

    vSEEDLAYER = dev_pin("GATE");
    vSDLAYER = dev_pin("SRC");
    vS = dev_pin("SRC");
    vEXT_SHARE_SD_SEED = dev_processing_layer("layer2");
    vEXT_SHARE_NSD_NOTSAB_SEED = dev_processing_layer("layer6");
    vMARKER_SRC = dev_processing_layer("layer5");
    vEXT_SHARE_NSD_NOTSAB_SEED_vMARKER_SRC_common = dev_and(vEXT_SHARE_NSD_NOTSAB_SEED, vMARKER_SRC);
    vACTIVE_SEED = dev_processing_layer("layer1");
    vAUXILAYER_S = dev_processing_layer("layer4");
    vD = dev_pin("DRN");
    vEXT_SHARE_SD_SEED_vEXT_SHARE_NSD_NOTSAB_SEED_common = dev_and(vEXT_SHARE_SD_SEED, vEXT_SHARE_NSD_NOTSAB_SEED);
    vEXT_SHARE_SD_SEED_vMARKER_SRC_common = dev_and(vEXT_SHARE_SD_SEED, vMARKER_SRC);
    vAUXILAYER_D = dev_processing_layer("layer3");
    vAUXILAYER = dev_processing_layer("layer7");
    vAUXILAYER_vD_common = dev_and(vAUXILAYER, vD);
    vAUXILAYER_vS_common = dev_and(vAUXILAYER, vS);
    
    vM = 1;
    vPAR = vM;
    vNF = dev_count_polygons ( vSEEDLAYER );
    vWT = dev_touch_length ( vSEEDLAYER , vSDLAYER );
    vW = vWT;
    vFW = vWT / vNF;
    vL = dev_polygon_area ( vSEEDLAYER ) / vW;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;
    vPI_S_ACTIVE = dev_touch_length ( vS , vEXT_SHARE_SD_SEED );
    if ( dblcmp( vPI_S_ACTIVE * 1e15, 0, DBL_GT ) ) {
        vA1_REF = vFW * 0.002e-6;
        if ( dblcmp( dev_polygon_area ( vEXT_SHARE_SD_SEED ), vA1_REF, DBL_GT ) ) {
            vA1 = dev_polygon_area(vEXT_SHARE_NSD_NOTSAB_SEED_vMARKER_SRC_common);
            vSC = dev_count_polygons ( vEXT_SHARE_SD_SEED );
            vP1 = dev_touch_length ( vEXT_SHARE_NSD_NOTSAB_SEED , vMARKER_SRC );
        }
        else {
            vA1 = 0;
            vSC = 0.001;
            vP1 = 0;
        }
        vPI_SHR_DIFF_S = ( dev_inside_length ( vEXT_SHARE_SD_SEED , vACTIVE_SEED ) ) / vSC;
        vFAC_SHR_DIFF_S = ( vPI_SHR_DIFF_S - vFW ) / vPI_SHR_DIFF_S;
        vAS = dev_polygon_area ( vAUXILAYER_S ) - ( vA1 * vFAC_SHR_DIFF_S );
        vPS = dev_polygon_perim ( vAUXILAYER_S ) - ( vP1 * vFAC_SHR_DIFF_S );
    }
    else {
        vAS = dev_polygon_area ( vAUXILAYER_S );
        vPS = dev_polygon_perim ( vAUXILAYER_S );
    }
    vPI_D_ACTIVE = dev_touch_length ( vD , vEXT_SHARE_SD_SEED );
    if ( dblcmp( vPI_D_ACTIVE * 1e15, 0, DBL_GT ) ) {
        vA1_REF = vFW * 0.002e-6;
        if ( dblcmp( dev_polygon_area ( vEXT_SHARE_SD_SEED ), vA1_REF, DBL_GT ) ) {
            vA1_D = dev_polygon_area(vEXT_SHARE_SD_SEED_vEXT_SHARE_NSD_NOTSAB_SEED_common) - dev_polygon_area(vEXT_SHARE_SD_SEED_vMARKER_SRC_common);
            vSC_D = dev_count_polygons ( vEXT_SHARE_SD_SEED );
            vP1_D = dev_polygon_perim ( vEXT_SHARE_NSD_NOTSAB_SEED ) - dev_touch_length ( vEXT_SHARE_NSD_NOTSAB_SEED , vMARKER_SRC );
        }
        else {
            vA1_D = 0;
            vSC_D = 0.001;
            vP1_D = 0;
        }
        vPI_SHR_DIFF_D = ( dev_inside_length ( vEXT_SHARE_SD_SEED , vACTIVE_SEED ) ) / vSC_D;
        vFAC_SHR_DIFF_D = ( vPI_SHR_DIFF_D - vFW ) / vPI_SHR_DIFF_D;
        vAD = dev_polygon_area ( vAUXILAYER_D ) - ( vA1_D * vFAC_SHR_DIFF_D );
        vPD = dev_polygon_perim ( vAUXILAYER_D ) - ( vP1_D * vFAC_SHR_DIFF_D );
    }
    else {
        vAD = dev_polygon_area ( vAUXILAYER_D );
        vPD = dev_polygon_perim ( vAUXILAYER_D );
    }
    vNRS = vAS / vW / vW;
    vNRD = vAD / vW / vW;
    vD_SAB = ( dev_polygon_area(vAUXILAYER_vD_common) / vFW ) / vNF;
    vS_SAB = ( dev_polygon_area(vAUXILAYER_vS_common) / vFW ) / vNF;

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },




        { "as", vAS },




        { "ad", vAD },




        { "ps", vPS },




        { "pd", vPD },
        { "NRS", vNRS },
        { "NRD", vNRD },
        { "M", vM },
        { "par", vPAR },
        { "s_sab", vS_SAB },
        { "d_sab", vD_SAB },
        { "nf", vNF }
    });
}
dev_func_ESD_MOS_SINGLE_PROPERTY : function (void) returning void
{
    vAD    : double;
    vAS    : double;
    vD_SAB : double;
    vFW    : double;
    vL     : double;
    vM     : double;
    vNF    : double;
    vNRD   : double;
    vNRS   : double;
    vPAR   : double;
    vPD    : double;
    vPS    : double;
    vS_SAB : double;
    vW     : double;
    vWT    : double;

    vSEEDLAYER = dev_pin("GATE");
    vSDLAYER = dev_pin("SRC");
    vAUXILAYER_S = dev_processing_layer("layer2");
    vAUXILAYER_D = dev_processing_layer("layer1");
    vAUXILAYER = dev_processing_layer("layer3");
    vD = dev_pin("DRN");
    vAUXILAYER_vD_common = dev_and(vAUXILAYER, vD);
    vS = dev_pin("SRC");
    vAUXILAYER_vS_common = dev_and(vAUXILAYER, vS);
    
    vM = 1;
    vPAR = vM;
    vNF = dev_count_polygons ( vSEEDLAYER );
    vWT = dev_touch_length ( vSEEDLAYER , vSDLAYER );
    vW = vWT;
    vFW = vWT / vNF;
    vL = dev_polygon_area ( vSEEDLAYER ) / vW;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;
    vAS = dev_polygon_area ( vAUXILAYER_S );
    vPS = dev_polygon_perim ( vAUXILAYER_S );
    vAD = dev_polygon_area ( vAUXILAYER_D );
    vPD = dev_polygon_perim ( vAUXILAYER_D );
    vNRS = vAS / vW / vW;
    vNRD = vAD / vW / vW;
    vD_SAB = ( dev_polygon_area(vAUXILAYER_vD_common) / vFW ) / vNF;
    vS_SAB = ( dev_polygon_area(vAUXILAYER_vS_common) / vFW ) / vNF;

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },




        { "as", vAS },




        { "ad", vAD },




        { "ps", vPS },




        { "pd", vPD },
        { "NRS", vNRS },
        { "NRD", vNRD },
        { "M", vM },
        { "par", vPAR },
        { "s_sab", vS_SAB },
        { "d_sab", vD_SAB },
        { "nf", vNF }
    });
}
dev_func_MOS_BSIM4_PROPERTY : function (void) returning void
{
    vAD  : double;
    vAS  : double;
    vL   : double;
    vM   : double;
    vNF  : double;
    vPAR : double;
    vPD  : double;
    vPS  : double;
    vW   : double;

    vSEEDLAYER = dev_processing_layer("layer1");
    vSDLAYER = dev_pin("SRC");
    vAUXILAYER = dev_pin("DRN");
    
    vM = 1;
    vPAR = vM;
    vNF = dev_count_polygons ( vSEEDLAYER );
    vW = dev_touch_length ( vSEEDLAYER , vSDLAYER );
    vL = dev_polygon_area ( vSEEDLAYER ) / vW;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;
    vAS = dev_polygon_area ( vSDLAYER );
    vAD = dev_polygon_area ( vAUXILAYER );
    vPS = dev_polygon_perim ( vSDLAYER );
    vPD = dev_polygon_perim ( vAUXILAYER );

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },




        { "as", vAS },




        { "ad", vAD },




        { "ps", vPS },




        { "pd", vPD },
        { "M", vM },
        { "nf", vNF },
        { "par", vPAR }
    });
}
dev_func_DIO_PROPERTY : function (void) returning void
{
    vA : double;
    vM : double;
    vP : double;

    vSEEDLAYER = dev_body();
    
    vM = 1;
    vA = dev_polygon_area ( vSEEDLAYER );
    vP = dev_polygon_perim ( vSEEDLAYER );

    dev_save_double_properties({
        { "area", vA },
        { "pj", vP },
        { "M", vM }
    });
}
dev_func_DIO_PROPERTY__1 : function (void) returning void
{
    vA : double;
    vM : double;
    vP : double;

    vSEEDLAYER = dev_pin("CATHODE");
    
    vM = 1;
    vA = dev_polygon_area ( vSEEDLAYER );
    vP = dev_polygon_perim ( vSEEDLAYER );

    dev_save_double_properties({
        { "area", vA },
        { "pj", vP },
        { "M", vM }
    });
}
dev_func_DIO_PROPERTY__2 : function (void) returning void
{
    vA : double;
    vM : double;
    vP : double;

    vSEEDLAYER = dev_pin("ANODE");
    
    vM = 1;
    vA = dev_polygon_area ( vSEEDLAYER );
    vP = dev_polygon_perim ( vSEEDLAYER );

    dev_save_double_properties({
        { "area", vA },
        { "pj", vP },
        { "M", vM }
    });
}
dev_func_DIO_PROPERTY__3 : function (void) returning void
{
    vA : double;
    vM : double;
    vP : double;

    vSEEDLAYER = dev_processing_layer("layer1");
    
    vM = 1;
    vA = dev_polygon_area ( vSEEDLAYER );
    vP = dev_polygon_perim ( vSEEDLAYER );

    dev_save_double_properties({
        { "area", vA },
        { "pj", vP },
        { "M", vM }
    });
}
dev_func_SCDIO_PROPERTY : function (void) returning void
{
    vL : double;
    vM : double;
    vW : double;

    vSEEDLAYER = dev_body();
    vLENGTH_MK = dev_processing_layer("layer1");
    
    vM = 1;
    vL = dev_touch_length ( vSEEDLAYER , vLENGTH_MK ) / 2;
    vW = dev_polygon_area ( vSEEDLAYER ) / vL;

    dev_save_double_properties({
        { "W", vW },
        { "L", vL },
        { "M", vM }
    });
}
dev_func_BJT_PROPERTY : function (void) returning void
{
    vM   : double;
    vPAR : double;

    
    vM = 1;
    vPAR = vM;

    dev_save_double_properties({
        { "M", vM },
        { "par", vPAR }
    });
}
dev_func_CAP_PROPERTY : function (void) returning void
{
    vA   : double;
    vL   : double;
    vM   : double;
    vP   : double;
    vPAR : double;
    vW   : double;

    vSEEDLAYER = dev_body();
    vAUXLAYER = dev_processing_layer("layer1");
    
    vM = 1;
    vPAR = vM;
    vA = dev_polygon_area ( vSEEDLAYER );
    vP = dev_polygon_perim ( vSEEDLAYER );
    vL = dev_polygon_area ( vAUXLAYER ) * 1e6 / 0.1;
    vW = vA / vL;

    dev_save_double_properties({
        { "L", vL },
        { "W", vW },
        { "M", vM },
        { "par", vPAR }
    });
}
dev_func_RES_PROPERTY : function (void) returning void
{
    vL   : double;
    vM   : double;
    vPAR : double;
    vS   : double;
    vW   : double;

    vSEEDLAYER = dev_body();
    vPINLAYER = dev_or( dev_pin("A"), dev_pin("B") );
    
    vM = 1;
    vPAR = vM;
    vS = 1;
    vW = dev_touch_length ( vSEEDLAYER , vPINLAYER ) / 2.0;
    vL = dev_polygon_area ( vSEEDLAYER ) / vW;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;

    dev_save_double_properties({
        { "M", vM },
        { "W", vW },
        { "L", vL },
        { "par", vPAR },
        { "s", vS }
    });
}
dev_func_2T_RES_PROPERTY : function (void) returning void
{
    vL   : double;
    vM   : double;
    vPAR : double;
    vS   : double;
    vW   : double;

    vPINLAYER = dev_or( dev_pin("A"), dev_pin("B") );
    vTERMLAYER = dev_processing_layer("layer2");
    vSEEDLAYER = dev_processing_layer("layer1");
    
    vM = 1;
    vPAR = vM;
    vS = 1;
    vW = dev_touch_length ( vPINLAYER , vTERMLAYER ) / 2.0;
    vL = dev_polygon_area ( vSEEDLAYER ) / vW;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;

    dev_save_double_properties({
        { "M", vM },
        { "W", vW },
        { "L", vL },
        { "par", vPAR },
        { "s", vS }
    });
}
dev_func_MOSCAP_PROPERTY : function (void) returning void
{
    vL : double;
    vM : double;
    vW : double;

    vSEEDLAYER = dev_pin("A");
    vAUXILAYER = dev_pin("B");
    
    vM = 1;
    vW = dev_touch_length ( vSEEDLAYER , vAUXILAYER ) / 2;
    vL = dev_polygon_area ( vSEEDLAYER ) / vW;
    vW = trunc ( ( vW * 1e+09 ) + 0.5 ) / 1e+09;
    vL = trunc ( ( vL * 1e+09 ) + 0.5 ) / 1e+09;

    dev_save_double_properties({
        { "M", vM },
        { "L", vL },
        { "W", vW }
    });
}




