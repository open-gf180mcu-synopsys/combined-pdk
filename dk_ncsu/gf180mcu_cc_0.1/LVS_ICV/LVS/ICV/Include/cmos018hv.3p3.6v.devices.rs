#ifdef d_MOS_NF_BY_COUNT
   
      
   
   
               gLAYER_25i = gNMOS_3P3_DEV interacting gEFF_DEV_SEED_LOGIC interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_DEV, device_name = "nmos_3p3", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_25i, simulation_model_name = "nmos_3p3", source = gNSD, x_card = true );
   
   
   
               gLAYER_26i = gNMOS_3P3_DW_DEV interacting gEFF_DEV_SEED_LOGIC interacting gDN_LP;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_DW_DEV, device_name = "nmos_3p3_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_26i, simulation_model_name = "nmos_3p3", source = gNSD, x_card = true );
   
      
   
   
               gLAYER_27i = gNMOS_5P0_DEV interacting gEFF_DEV_SEED_LOGIC interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_DEV, device_name = "nmos_5p0", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_27i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
   
   
               gLAYER_28i = gNMOS_5P0_DW_DEV interacting gEFF_DEV_SEED_LOGIC interacting gDN_LP;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_DW_DEV, device_name = "nmos_5p0_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_28i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
      
   
   
               gLAYER_29i = gNMOS_6P0_DEV interacting gEFF_DEV_SEED_LOGIC interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_DEV, device_name = "nmos_6p0", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_29i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
   
   
               gLAYER_30i = gNMOS_6P0_DW_DEV interacting gEFF_DEV_SEED_LOGIC interacting gDN_LP;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_DW_DEV, device_name = "nmos_6p0_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_30i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
      
   
   
               gLAYER_31i = gNMOS_6P0_NAT_DEV interacting gEFF_DEV_SEED_LOGIC interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_NAT_DEV, device_name = "nmos_6p0_nat", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_31i, simulation_model_name = "nmos_6p0_nat", source = gNSD, x_card = true );
   
      
   
   
               gLAYER_32i = gPMOS_3P3_DEV interacting gEFF_DEV_SEED_LOGIC interacting gPURENWELL;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_DEV, device_name = "pmos_3p3", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_32i, simulation_model_name = "pmos_3p3", source = gPSD, x_card = true );
   
   
   
               gLAYER_33i = gPMOS_3P3_DW_DEV interacting gEFF_DEV_SEED_LOGIC interacting gDN_SUB;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_DW_DEV, device_name = "pmos_3p3_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_33i, simulation_model_name = "pmos_3p3", source = gPSD, x_card = true );
   
      
   
   
               gLAYER_34i = gPMOS_5P0_DEV interacting gEFF_DEV_SEED_LOGIC interacting gPURENWELL;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_DEV, device_name = "pmos_5p0", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_34i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
   
   
   
               gLAYER_35i = gPMOS_5P0_DW_DEV interacting gEFF_DEV_SEED_LOGIC interacting gDN_SUB;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_DW_DEV, device_name = "pmos_5p0_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_35i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
   
      
   
   
               gLAYER_36i = gPMOS_6P0_DEV interacting gEFF_DEV_SEED_LOGIC interacting gPURENWELL;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_DEV, device_name = "pmos_6p0", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_36i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
   
   
   
               gLAYER_37i = gPMOS_6P0_DW_DEV interacting gEFF_DEV_SEED_LOGIC interacting gDN_SUB;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_DW_DEV, device_name = "pmos_6p0_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD_LOGIC }, "layer3" => { gACTIVE } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_COUNT, recognition_layer = gLAYER_37i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
#else
   
      
   
   
   	   	   	   gLAYER_38i = gNMOS_3P3_DEV interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_DEV, device_name = "nmos_3p3", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_38i, simulation_model_name = "nmos_3p3", source = gNSD, x_card = true );
   
   
   
   	   	   	   gLAYER_39i = gNMOS_3P3_DW_DEV interacting gDN_LP;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_DW_DEV, device_name = "nmos_3p3_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_39i, simulation_model_name = "nmos_3p3", source = gNSD, x_card = true );
   
      
   
   
   	   	   	   gLAYER_40i = gNMOS_5P0_DEV interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_DEV, device_name = "nmos_5p0", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_40i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
   
   
   	   	   	   gLAYER_41i = gNMOS_5P0_DW_DEV interacting gDN_LP;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_DW_DEV, device_name = "nmos_5p0_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_41i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
      
   
   
   	   	   	   gLAYER_42i = gNMOS_6P0_DEV interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_DEV, device_name = "nmos_6p0", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_42i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
   
   
   	   	   	   gLAYER_43i = gNMOS_6P0_DW_DEV interacting gDN_LP;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_DW_DEV, device_name = "nmos_6p0_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_43i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );
   
      
   
   
   	   	   	   gLAYER_44i = gNMOS_6P0_NAT_DEV interacting gPSUB;




   nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_NAT_DEV, device_name = "nmos_6p0_nat", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_44i, simulation_model_name = "nmos_6p0_nat", source = gNSD, x_card = true );
   
      
   
   
   	   	   	   gLAYER_45i = gPMOS_3P3_DEV interacting gPURENWELL;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_DEV, device_name = "pmos_3p3", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_45i, simulation_model_name = "pmos_3p3", source = gPSD, x_card = true );
   
   
   
   	   	   	   gLAYER_46i = gPMOS_3P3_DW_DEV interacting gDN_SUB;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_DW_DEV, device_name = "pmos_3p3_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_46i, simulation_model_name = "pmos_3p3", source = gPSD, x_card = true );
   
      
   
   
   	   	   	   gLAYER_47i = gPMOS_5P0_DEV interacting gPURENWELL;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_DEV, device_name = "pmos_5p0", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_47i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
   
   
   
   	   	   	   gLAYER_48i = gPMOS_5P0_DW_DEV interacting gDN_SUB;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_DW_DEV, device_name = "pmos_5p0_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_48i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
   
      
   
   
   	   	   	   gLAYER_49i = gPMOS_6P0_DEV interacting gPURENWELL;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_DEV, device_name = "pmos_6p0", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_49i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
   
   
   
   	   	   	   gLAYER_50i = gPMOS_6P0_DW_DEV interacting gDN_SUB;




   pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_DW_DEV, device_name = "pmos_6p0_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY, recognition_layer = gLAYER_50i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );
#endif


gLAYER_51i = gNMOS_3P3_GRID_DEV interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_GRID_DEV, device_name = "nmos_3p3", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_51i, simulation_model_name = "nmos_3p3", source = gNSD, x_card = true );


gLAYER_52i = gNMOS_3P3_GRID_DW_DEV interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_GRID_DW_DEV, device_name = "nmos_3p3_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_52i, simulation_model_name = "nmos_3p3", source = gNSD, x_card = true );


gLAYER_53i = gNMOS_5P0_GRID_DEV interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_GRID_DEV, device_name = "nmos_5p0", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_53i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );


gLAYER_54i = gNMOS_5P0_GRID_DW_DEV interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_GRID_DW_DEV, device_name = "nmos_5p0_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_54i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );


gLAYER_55i = gNMOS_6P0_GRID_DEV interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_GRID_DEV, device_name = "nmos_6p0", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_55i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );


gLAYER_56i = gNMOS_6P0_GRID_DW_DEV interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_GRID_DW_DEV, device_name = "nmos_6p0_dw", drain = gNSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_56i, simulation_model_name = "nmos_6p0", source = gNSD, x_card = true );


gLAYER_57i = gPMOS_3P3_GRID_DEV interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_GRID_DEV, device_name = "pmos_3p3", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_57i, simulation_model_name = "pmos_3p3", source = gPSD, x_card = true );


gLAYER_58i = gPMOS_3P3_GRID_DW_DEV interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_GRID_DW_DEV, device_name = "pmos_3p3_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_58i, simulation_model_name = "pmos_3p3", source = gPSD, x_card = true );


gLAYER_59i = gPMOS_5P0_GRID_DEV interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_GRID_DEV, device_name = "pmos_5p0", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_59i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );


gLAYER_60i = gPMOS_5P0_GRID_DW_DEV interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_GRID_DW_DEV, device_name = "pmos_5p0_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_60i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );


gLAYER_61i = gPMOS_6P0_GRID_DEV interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_GRID_DEV, device_name = "pmos_6p0", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_61i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );


gLAYER_62i = gPMOS_6P0_GRID_DW_DEV interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_GRID_DW_DEV, device_name = "pmos_6p0_dw", drain = gPSD, gate = gGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gGRID_COIN_GATE_SD }, "layer3" => { gGRID_COIN_GATE_COMP } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_PROPERTY_GRID, recognition_layer = gLAYER_62i, simulation_model_name = "pmos_6p0", source = gPSD, x_card = true );




      gLAYER_63i = gNMOS_3P3_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_SAB_MULTI_DEV, device_name = "nmos_3p3_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD }, "layer3" => { gSAB_NDRN0 }, "layer4" => { gSAB_NSRC0 }, "layer5" => { gMARKER_NSRC_DEV }, "layer6" => { gEXT_SHARE_NSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_63i, simulation_model_name = "nmos_3p3_sab", source = gSAB_NSRC, x_card = true );


gLAYER_64i = gNMOS_3P3_SAB_SINGLE_DEV interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_SAB_SINGLE_DEV, device_name = "nmos_3p3_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gSAB_NDRN0 }, "layer2" => { gSAB_NSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_64i, simulation_model_name = "nmos_3p3_sab", source = gSAB_NSRC, x_card = true );




      gLAYER_65i = gNMOS_3P3_DW_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_DW_SAB_MULTI_DEV, device_name = "nmos_3p3_dw_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD }, "layer3" => { gSAB_NDRN0 }, "layer4" => { gSAB_NSRC0 }, "layer5" => { gMARKER_NSRC_DEV }, "layer6" => { gEXT_SHARE_NSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_65i, simulation_model_name = "nmos_3p3_sab", source = gSAB_NSRC, x_card = true );


gLAYER_66i = gNMOS_3P3_DW_SAB_SINGLE_DEV interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_3P3_DW_SAB_SINGLE_DEV, device_name = "nmos_3p3_dw_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gSAB_NDRN0 }, "layer2" => { gSAB_NSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_66i, simulation_model_name = "nmos_3p3_sab", source = gSAB_NSRC, x_card = true );




      gLAYER_67i = gNMOS_5P0_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_SAB_MULTI_DEV, device_name = "nmos_5p0_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD }, "layer3" => { gSAB_NDRN0 }, "layer4" => { gSAB_NSRC0 }, "layer5" => { gMARKER_NSRC_DEV }, "layer6" => { gEXT_SHARE_NSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_67i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );


gLAYER_68i = gNMOS_5P0_SAB_SINGLE_DEV interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_SAB_SINGLE_DEV, device_name = "nmos_5p0_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gSAB_NDRN0 }, "layer2" => { gSAB_NSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_68i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );




      gLAYER_69i = gNMOS_5P0_DW_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_DW_SAB_MULTI_DEV, device_name = "nmos_5p0_dw_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD }, "layer3" => { gSAB_NDRN0 }, "layer4" => { gSAB_NSRC0 }, "layer5" => { gMARKER_NSRC_DEV }, "layer6" => { gEXT_SHARE_NSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_69i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );


gLAYER_70i = gNMOS_5P0_DW_SAB_SINGLE_DEV interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_5P0_DW_SAB_SINGLE_DEV, device_name = "nmos_5p0_dw_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gSAB_NDRN0 }, "layer2" => { gSAB_NSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_70i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );




      gLAYER_71i = gNMOS_6P0_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_SAB_MULTI_DEV, device_name = "nmos_6p0_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD }, "layer3" => { gSAB_NDRN0 }, "layer4" => { gSAB_NSRC0 }, "layer5" => { gMARKER_NSRC_DEV }, "layer6" => { gEXT_SHARE_NSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_71i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );


gLAYER_72i = gNMOS_6P0_SAB_SINGLE_DEV interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_SAB_SINGLE_DEV, device_name = "nmos_6p0_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gSAB_NDRN0 }, "layer2" => { gSAB_NSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_72i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );




      gLAYER_73i = gNMOS_6P0_DW_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_DW_SAB_MULTI_DEV, device_name = "nmos_6p0_dw_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gNDIF }, "layer2" => { gEXT_SHARE_NSD }, "layer3" => { gSAB_NDRN0 }, "layer4" => { gSAB_NSRC0 }, "layer5" => { gMARKER_NSRC_DEV }, "layer6" => { gEXT_SHARE_NSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_73i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );


gLAYER_74i = gNMOS_6P0_DW_SAB_SINGLE_DEV interacting gDN_LP;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_6P0_DW_SAB_SINGLE_DEV, device_name = "nmos_6p0_dw_sab", drain = gSAB_NDRN, gate = gSAB_NGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_LP } }, processing_layer_hash = { "layer1" => { gSAB_NDRN0 }, "layer2" => { gSAB_NSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_74i, simulation_model_name = "nmos_6p0_sab", source = gSAB_NSRC, x_card = true );




      gLAYER_75i = gPMOS_3P3_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_SAB_MULTI_DEV, device_name = "pmos_3p3_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD }, "layer3" => { gSAB_PDRN0 }, "layer4" => { gSAB_PSRC0 }, "layer5" => { gMARKER_PSRC_DEV }, "layer6" => { gEXT_SHARE_PSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_75i, simulation_model_name = "pmos_3p3_sab", source = gSAB_PSRC, x_card = true );


gLAYER_76i = gPMOS_3P3_SAB_SINGLE_DEV interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_SAB_SINGLE_DEV, device_name = "pmos_3p3_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gSAB_PDRN0 }, "layer2" => { gSAB_PSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_76i, simulation_model_name = "pmos_3p3_sab", source = gSAB_PSRC, x_card = true );




      gLAYER_77i = gPMOS_3P3_DW_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_DW_SAB_MULTI_DEV, device_name = "pmos_3p3_dw_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD }, "layer3" => { gSAB_PDRN0 }, "layer4" => { gSAB_PSRC0 }, "layer5" => { gMARKER_PSRC_DEV }, "layer6" => { gEXT_SHARE_PSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_77i, simulation_model_name = "pmos_3p3_sab", source = gSAB_PSRC, x_card = true );


gLAYER_78i = gPMOS_3P3_DW_SAB_SINGLE_DEV interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_3P3_DW_SAB_SINGLE_DEV, device_name = "pmos_3p3_dw_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gSAB_PDRN0 }, "layer2" => { gSAB_PSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_78i, simulation_model_name = "pmos_3p3_sab", source = gSAB_PSRC, x_card = true );




      gLAYER_79i = gPMOS_5P0_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_SAB_MULTI_DEV, device_name = "pmos_5p0_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD }, "layer3" => { gSAB_PDRN0 }, "layer4" => { gSAB_PSRC0 }, "layer5" => { gMARKER_PSRC_DEV }, "layer6" => { gEXT_SHARE_PSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_79i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );


gLAYER_80i = gPMOS_5P0_SAB_SINGLE_DEV interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_SAB_SINGLE_DEV, device_name = "pmos_5p0_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gSAB_PDRN0 }, "layer2" => { gSAB_PSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_80i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );




      gLAYER_81i = gPMOS_5P0_DW_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_DW_SAB_MULTI_DEV, device_name = "pmos_5p0_dw_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD }, "layer3" => { gSAB_PDRN0 }, "layer4" => { gSAB_PSRC0 }, "layer5" => { gMARKER_PSRC_DEV }, "layer6" => { gEXT_SHARE_PSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_81i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );


gLAYER_82i = gPMOS_5P0_DW_SAB_SINGLE_DEV interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_5P0_DW_SAB_SINGLE_DEV, device_name = "pmos_5p0_dw_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gSAB_PDRN0 }, "layer2" => { gSAB_PSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_82i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );




      gLAYER_83i = gPMOS_6P0_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_SAB_MULTI_DEV, device_name = "pmos_6p0_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD }, "layer3" => { gSAB_PDRN0 }, "layer4" => { gSAB_PSRC0 }, "layer5" => { gMARKER_PSRC_DEV }, "layer6" => { gEXT_SHARE_PSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_83i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );


gLAYER_84i = gPMOS_6P0_SAB_SINGLE_DEV interacting gPURENWELL;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_SAB_SINGLE_DEV, device_name = "pmos_6p0_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPURENWELL } }, processing_layer_hash = { "layer1" => { gSAB_PDRN0 }, "layer2" => { gSAB_PSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_84i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );




      gLAYER_85i = gPMOS_6P0_DW_SAB_MULTI_DEV interacting gEFF_DEV_SEED interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_DW_SAB_MULTI_DEV, device_name = "pmos_6p0_dw_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gPDIF }, "layer2" => { gEXT_SHARE_PSD }, "layer3" => { gSAB_PDRN0 }, "layer4" => { gSAB_PSRC0 }, "layer5" => { gMARKER_PSRC_DEV }, "layer6" => { gEXT_SHARE_PSD_NOTSAB }, "layer7" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_MULTI_PROPERTY, recognition_layer = gLAYER_85i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );


gLAYER_86i = gPMOS_6P0_DW_SAB_SINGLE_DEV interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_6P0_DW_SAB_SINGLE_DEV, device_name = "pmos_6p0_dw_sab", drain = gSAB_PDRN, gate = gSAB_PGATE, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gSAB_PDRN0 }, "layer2" => { gSAB_PSRC0 }, "layer3" => { aSAB } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "NRS" }, { "NRD" }, { "M" }, { "par" }, { "s_sab" }, { "d_sab" }, { "nf" } }, property_function = dev_func_ESD_MOS_SINGLE_PROPERTY, recognition_layer = gLAYER_86i, simulation_model_name = "pmos_6p0_sab", source = gSAB_PSRC, x_card = true );



gLAYER_87i = gNMOS_10P0_ASYM_DEV interacting gPSUB;




nmos( bulk_relationship = INTERACT, device_body = gNMOS_10P0_ASYM_DEV, device_name = "nmos_10p0_asym", drain = gLDMNDRN_10P0, gate = gLDMNGATE_10P0, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gPSUB } }, processing_layer_hash = { "layer1" => { gLDMNGATE_10P0_L } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_BSIM4_PROPERTY, recognition_layer = gLAYER_87i, simulation_model_name = "nmos_10p0_asym", source = gLDMNSRC_10P0, x_card = true );



gLAYER_88i = gPMOS_10P0_ASYM_DEV interacting gDN_SUB;




pmos( bulk_relationship = INTERACT, device_body = gPMOS_10P0_ASYM_DEV, device_name = "pmos_10p0_asym", drain = gLDMPDRN_10P0, gate = gLDMPGATE_10P0, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gDN_SUB } }, processing_layer_hash = { "layer1" => { gLDMPGATE_10P0_L } }, properties = { { "W" }, { "L" }, { "as" }, { "ad" }, { "ps" }, { "pd" }, { "M" }, { "nf" }, { "par" } }, property_function = dev_func_MOS_BSIM4_PROPERTY, recognition_layer = gLAYER_88i, simulation_model_name = "pmos_10p0_asym", source = gLDMPSRC_10P0, x_card = true );
np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_3P3_DEV, device_name = "np_3p3", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_3p3" );
np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_3P3_DW_DEV, device_name = "np_3p3_dw", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_3p3" );
np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_6P0_DEV, device_name = "np_6p0", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_6p0" );
np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_6P0_DW_DEV, device_name = "np_6p0_dw", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_6p0" );
pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gPN_3P3_DEV, device_name = "pn_3p3", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_3p3" );
pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gPN_3P3_DW_DEV, device_name = "pn_3p3_dw", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_3p3" );
pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gPN_6P0_DEV, device_name = "pn_6p0", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_6p0" );
pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gPN_6P0_DW_DEV, device_name = "pn_6p0_dw", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_6p0" );
np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gNWP_3P3_DEV, device_name = "nwp_3p3", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__1, simulation_model_name = "nwp_3p3" );
np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gNWP_6P0_DEV, device_name = "nwp_6p0", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__1, simulation_model_name = "nwp_6p0" );
np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPW_3P3_DEV, device_name = "dnwpw_3p3", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__2, simulation_model_name = "dnwpw" );
np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPW_6P0_DEV, device_name = "dnwpw_6p0", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__2, simulation_model_name = "dnwpw" );
np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPS_3P3_DEV, device_name = "dnwps_3p3", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aDNWELL } }, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__3, simulation_model_name = "dnwps" );
np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPS_6P0_DEV, device_name = "dnwps_6p0", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aDNWELL } }, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__3, simulation_model_name = "dnwps" );
np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPS_6P0_SC_DEV, device_name = "dnwps_6p0", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "dnwps" );
np( anode = gNSD, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gSC_DIODE_DEV, device_name = "sc_diode", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gSC_DIODE_COMP } }, properties = { { "W" }, { "L" }, { "M" } }, property_function = dev_func_SCDIO_PROPERTY, simulation_model_name = "sc_diode" );
#ifdef d_PEX_RUN
   np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_3P3_P_DEV, device_name = "np_3p3_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_3p3" );
   np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_3P3_DW_P_DEV, device_name = "np_3p3_dw_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_3p3" );
   np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_6P0_P_DEV, device_name = "np_6p0_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_6p0" );
   np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gNSD, device_body = gNP_6P0_DW_P_DEV, device_name = "np_6p0_dw_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "np_6p0" );
   pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gPN_3P3_P_DEV, device_name = "pn_3p3_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_3p3" );
   pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gPN_3P3_DW_P_DEV, device_name = "pn_3p3_dw_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_3p3" );
   pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gPN_6P0_P_DEV, device_name = "pn_6p0_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_6p0" );
   pn( anode = gPSD, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gPN_6P0_DW_P_DEV, device_name = "pn_6p0_dw_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "pn_6p0" );
   np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gNWP_3P3_P_DEV, device_name = "nwp_3p3_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__1, simulation_model_name = "nwp_3p3" );
   np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gPURENWELL, device_body = gNWP_6P0_P_DEV, device_name = "nwp_6p0_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__1, simulation_model_name = "nwp_6p0" );
   np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPW_3P3_P_DEV, device_name = "dnwpw_3p3_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "dnwpw" );
   np( anode = gDN_LP, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPW_6P0_P_DEV, device_name = "dnwpw_6p0_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "dnwpw" );
   np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPS_3P3_P_DEV, device_name = "dnwps_3p3_p", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aDNWELL } }, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__3, simulation_model_name = "dnwps" );
   np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPS_6P0_P_DEV, device_name = "dnwps_6p0_p", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aDNWELL } }, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY__3, simulation_model_name = "dnwps" );
   np( anode = gPSUB, bulk_relationship = INTERACT, cathode = gDN_SUB, device_body = gDNWPS_6P0_P1_DEV, device_name = "dnwps_6p0_p", matrix = dev_matrix, properties = { { "area" }, { "pj" }, { "M" } }, property_function = dev_func_DIO_PROPERTY, simulation_model_name = "dnwps" );
#endif



pnp( base = gVPNP_BASE, bulk_relationship = INTERACT, collector = gPSUB, device_body = gVPNP_3P3_0P42X5_DEV, device_name = "vpnp_0p42x5", emitter = gVPNP_EMI, matrix = dev_matrix, merge_parallel = true, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gVPNP_3P3_0P42X5_DEV, simulation_model_name = "vpnp_0p42x5", x_card = true );
pnp( base = gVPNP_BASE, bulk_relationship = INTERACT, collector = gPSUB, device_body = gVPNP_3P3_0P42X10_DEV, device_name = "vpnp_0p42x10", emitter = gVPNP_EMI, matrix = dev_matrix, merge_parallel = true, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gVPNP_3P3_0P42X10_DEV, simulation_model_name = "vpnp_0p42x10", x_card = true );
pnp( base = gVPNP_BASE, bulk_relationship = INTERACT, collector = gPSUB, device_body = gVPNP_3P3_5X5_DEV, device_name = "vpnp_5x5", emitter = gVPNP_EMI, matrix = dev_matrix, merge_parallel = true, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gVPNP_3P3_5X5_DEV, simulation_model_name = "vpnp_5x5", x_card = true );
pnp( base = gVPNP_BASE, bulk_relationship = INTERACT, collector = gPSUB, device_body = gVPNP_3P3_10X10_DEV, device_name = "vpnp_10x10", emitter = gVPNP_EMI, matrix = dev_matrix, merge_parallel = true, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gVPNP_3P3_10X10_DEV, simulation_model_name = "vpnp_10x10", x_card = true );



gLAYER_89i = gVNPN_10X10_DEV interacting gSUB_UNDER;
npn( base = gVNPN_BASE, bulk_relationship = INTERACT, collector = gVNPN_COL, device_body = gVNPN_10X10_DEV, device_name = "vnpn_10x10", emitter = gNSD, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gSUB_UNDER } }, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gLAYER_89i, simulation_model_name = "vnpn_10x10", x_card = true );
gLAYER_90i = gVNPN_5X5_DEV interacting gSUB_UNDER;
npn( base = gVNPN_BASE, bulk_relationship = INTERACT, collector = gVNPN_COL, device_body = gVNPN_5X5_DEV, device_name = "vnpn_5x5", emitter = gNSD, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gSUB_UNDER } }, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gLAYER_90i, simulation_model_name = "vnpn_5x5", x_card = true );
gLAYER_91i = gVNPN_0P54X16_DEV interacting gSUB_UNDER;
npn( base = gVNPN_BASE, bulk_relationship = INTERACT, collector = gVNPN_COL, device_body = gVNPN_0P54X16_DEV, device_name = "vnpn_0p54x16", emitter = gNSD, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gSUB_UNDER } }, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gLAYER_91i, simulation_model_name = "vnpn_0p54x16", x_card = true );
gLAYER_92i = gVNPN_0P54X8_DEV interacting gSUB_UNDER;
npn( base = gVNPN_BASE, bulk_relationship = INTERACT, collector = gVNPN_COL, device_body = gVNPN_0P54X8_DEV, device_name = "vnpn_0p54x8", emitter = gNSD, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gSUB_UNDER } }, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gLAYER_92i, simulation_model_name = "vnpn_0p54x8", x_card = true );
gLAYER_93i = gVNPN_0P54X4_DEV interacting gSUB_UNDER;
npn( base = gVNPN_BASE, bulk_relationship = INTERACT, collector = gVNPN_COL, device_body = gVNPN_0P54X4_DEV, device_name = "vnpn_0p54x4", emitter = gNSD, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gSUB_UNDER } }, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gLAYER_93i, simulation_model_name = "vnpn_0p54x4", x_card = true );
gLAYER_94i = gVNPN_0P54X2_DEV interacting gSUB_UNDER;
npn( base = gVNPN_BASE, bulk_relationship = INTERACT, collector = gVNPN_COL, device_body = gVNPN_0P54X2_DEV, device_name = "vnpn_0p54x2", emitter = gNSD, matrix = dev_matrix, merge_parallel = true, optional_pins = { { gSUB_UNDER } }, properties = { { "M" }, { "par" } }, property_function = dev_func_BJT_PROPERTY, recognition_layer = gLAYER_94i, simulation_model_name = "vnpn_0p54x2", x_card = true );
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p5fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p5fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_single_2p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_2p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p5fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p5fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_single_2p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_2p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p5fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p5fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_single_2p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_2p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P3M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_1p5fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p5fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
   #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_A
      
      		      capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV, device_name = "mim_single_2p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_2p0fF", swappable_pins = {  }, terminal_a = gM3_FTDEV, terminal_b = gM2_MIMDEV, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P6M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      
                  capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_1p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p0fF", swappable_pins = {  }, terminal_a = gM6_FTDEV, terminal_b = gM5_MIMDEV_OPT_B, x_card = true );
   #else
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
         
                        capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_1p5fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p5fF", swappable_pins = {  }, terminal_a = gM6_FTDEV, terminal_b = gM5_MIMDEV_OPT_B, x_card = true );
      #endif
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
         
                        capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_single_2p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_2p0fF", swappable_pins = {  }, terminal_a = gM6_FTDEV, terminal_b = gM5_MIMDEV_OPT_B, x_card = true );
      #endif
   #endif
#endif
#ifdef d_BEOL_1P5M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      
                  capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_1p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p0fF", swappable_pins = {  }, terminal_a = gM5_FTDEV, terminal_b = gM4_MIMDEV_OPT_B, x_card = true );
   #else
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
         
                        capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_1p5fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p5fF", swappable_pins = {  }, terminal_a = gM5_FTDEV, terminal_b = gM4_MIMDEV_OPT_B, x_card = true );
      #endif
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
         
                        capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_single_2p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_2p0fF", swappable_pins = {  }, terminal_a = gM5_FTDEV, terminal_b = gM4_MIMDEV_OPT_B, x_card = true );
      #endif
   #endif
#endif
#ifdef d_BEOL_1P4M
   #ifdef d_EXTRACT_MIM_CAP_1P0FF_OPT_B
      
                  capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_1p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p0fF", swappable_pins = {  }, terminal_a = gM4_FTDEV, terminal_b = gM3_MIMDEV_OPT_B, x_card = true );
   #else
      #ifdef d_EXTRACT_MIM_CAP_1P5FF_OPT_B
         
                        capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_1p5fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_1p5fF", swappable_pins = {  }, terminal_a = gM4_FTDEV, terminal_b = gM3_MIMDEV_OPT_B, x_card = true );
      #endif
      #ifdef d_EXTRACT_MIM_CAP_2P0FF_OPT_B
         
                        capacitor( bulk_relationship = INTERACT, device_body = gMIM_DEV_OPT_B, device_name = "mim_single_2p0fF", matrix = dev_matrix, processing_layer_hash = { "layer1" => { aMIM_L_MK } }, properties = { { "L" }, { "W" }, { "M" }, { "par" } }, property_function = dev_func_CAP_PROPERTY, simulation_model_name = "mim_2p0fF", swappable_pins = {  }, terminal_a = gM4_FTDEV, terminal_b = gM3_MIMDEV_OPT_B, x_card = true );
      #endif
   #endif
#endif



gLAYER_95i = gNWELL_DEV interacting gPSUB;
resistor( bulk_relationship = INTERACT, device_body = gNWELL_DEV, device_name = "nwell", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_95i, simulation_model_name = "nwell", terminal_a = gPURENWELL, terminal_b = gPURENWELL, x_card = true );



gLAYER_96i = gNPLUS_U_DEV interacting gPSUB;
resistor( bulk_relationship = INTERACT, device_body = gNPLUS_U_DEV, device_name = "nplus_u", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_96i, simulation_model_name = "nplus_u", terminal_a = gNSD, terminal_b = gNSD, x_card = true );



gLAYER_97i = gNPLUS_U_DW_DEV interacting gDN_LP;
resistor( bulk_relationship = INTERACT, device_body = gNPLUS_U_DW_DEV, device_name = "nplus_u_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_97i, simulation_model_name = "nplus_u", terminal_a = gNSD, terminal_b = gNSD, x_card = true );



gLAYER_98i = gPPLUS_U_DEV interacting gPURENWELL;
resistor( bulk_relationship = INTERACT, device_body = gPPLUS_U_DEV, device_name = "pplus_u", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_98i, simulation_model_name = "pplus_u", terminal_a = gPSD, terminal_b = gPSD, x_card = true );



gLAYER_99i = gPPLUS_U_DW_DEV interacting gDN_SUB;
resistor( bulk_relationship = INTERACT, device_body = gPPLUS_U_DW_DEV, device_name = "pplus_u_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_99i, simulation_model_name = "pplus_u", terminal_a = gPSD, terminal_b = gPSD, x_card = true );



gLAYER_100i = gNPLUS_S_DEV interacting gPSUB;
resistor( bulk_relationship = INTERACT, device_body = gNPLUS_S_DEV, device_name = "nplus_s", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_100i, simulation_model_name = "nplus_s", terminal_a = gNSD, terminal_b = gNSD, x_card = true );



gLAYER_101i = gNPLUS_S_DW_DEV interacting gDN_LP;
resistor( bulk_relationship = INTERACT, device_body = gNPLUS_S_DW_DEV, device_name = "nplus_s_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_101i, simulation_model_name = "nplus_s", terminal_a = gNSD, terminal_b = gNSD, x_card = true );



gLAYER_102i = gPPLUS_S_DEV interacting gPURENWELL;
resistor( bulk_relationship = INTERACT, device_body = gPPLUS_S_DEV, device_name = "pplus_s", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_102i, simulation_model_name = "pplus_s", terminal_a = gPSD, terminal_b = gPSD, x_card = true );



gLAYER_103i = gPPLUS_S_DW_DEV interacting gDN_SUB;
resistor( bulk_relationship = INTERACT, device_body = gPPLUS_S_DW_DEV, device_name = "pplus_s_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_103i, simulation_model_name = "pplus_s", terminal_a = gPSD, terminal_b = gPSD, x_card = true );



gLAYER_104i = gNPOLYF_U_DEV interacting gPSUB;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_U_DEV, device_name = "npolyf_u", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_104i, simulation_model_name = "npolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_105i = gNPOLYF_U_NW_DEV interacting gPURENWELL;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_U_NW_DEV, device_name = "npolyf_u", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_105i, simulation_model_name = "npolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_106i = gNPOLYF_U_LP_DEV interacting gDN_LP;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_U_LP_DEV, device_name = "npolyf_u_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_106i, simulation_model_name = "npolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_107i = gNPOLYF_U_DW_DEV interacting gDN_SUB;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_U_DW_DEV, device_name = "npolyf_u_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_107i, simulation_model_name = "npolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );



gLAYER_108i = gPPOLYF_U_DEV interacting gPSUB;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_DEV, device_name = "ppolyf_u", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_108i, simulation_model_name = "ppolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_109i = gPPOLYF_U_NW_DEV interacting gPURENWELL;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_NW_DEV, device_name = "ppolyf_u", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_109i, simulation_model_name = "ppolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_110i = gPPOLYF_U_LP_DEV interacting gDN_LP;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_LP_DEV, device_name = "ppolyf_u_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_110i, simulation_model_name = "ppolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_111i = gPPOLYF_U_DW_DEV interacting gDN_SUB;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_DW_DEV, device_name = "ppolyf_u_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_111i, simulation_model_name = "ppolyf_u", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
#ifndef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_3K
      
      
      gLAYER_112i = gPPOLYF_U_HR_3P3_DEV interacting gPSUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_DEV, device_name = "ppolyf_u_3k", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_112i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_113i = gPPOLYF_U_HR_3P3_NW_DEV interacting gPURENWELL;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_NW_DEV, device_name = "ppolyf_u_3k", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_113i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_114i = gPPOLYF_U_HR_3P3_LP_DEV interacting gDN_LP;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_LP_DEV, device_name = "ppolyf_u_3k_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_114i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_115i = gPPOLYF_U_HR_3P3_DW_DEV interacting gDN_SUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_DW_DEV, device_name = "ppolyf_u_3k_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_115i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_116i = gPPOLYF_U_HR_6P0_DEV interacting gPSUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_DEV, device_name = "ppolyf_u_3k_6p0", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_116i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_117i = gPPOLYF_U_HR_6P0_NW_DEV interacting gPURENWELL;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_NW_DEV, device_name = "ppolyf_u_3k_6p0", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_117i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_118i = gPPOLYF_U_HR_6P0_LP_DEV interacting gDN_LP;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_LP_DEV, device_name = "ppolyf_u_3k_6p0_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_118i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_119i = gPPOLYF_U_HR_6P0_DW_DEV interacting gDN_SUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_DW_DEV, device_name = "ppolyf_u_3k_6p0_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_119i, simulation_model_name = "ppolyf_u_3k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
   #else
      
      
      gLAYER_120i = gPPOLYF_U_HR_3P3_DEV interacting gPSUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_DEV, device_name = "ppolyf_u_1k", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_120i, simulation_model_name = "ppolyf_u_1k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_121i = gPPOLYF_U_HR_3P3_NW_DEV interacting gPURENWELL;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_NW_DEV, device_name = "ppolyf_u_1k", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_121i, simulation_model_name = "ppolyf_u_1k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_122i = gPPOLYF_U_HR_3P3_LP_DEV interacting gDN_LP;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_LP_DEV, device_name = "ppolyf_u_1k_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_122i, simulation_model_name = "ppolyf_u_1k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_123i = gPPOLYF_U_HR_3P3_DW_DEV interacting gDN_SUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_DW_DEV, device_name = "ppolyf_u_1k_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_123i, simulation_model_name = "ppolyf_u_1k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_124i = gPPOLYF_U_HR_6P0_DEV interacting gPSUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_DEV, device_name = "ppolyf_u_1k_6p0", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_124i, simulation_model_name = "ppolyf_u_1k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_125i = gPPOLYF_U_HR_6P0_NW_DEV interacting gPURENWELL;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_NW_DEV, device_name = "ppolyf_u_1k_6p0", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_125i, simulation_model_name = "ppolyf_u_1k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_126i = gPPOLYF_U_HR_6P0_LP_DEV interacting gDN_LP;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_LP_DEV, device_name = "ppolyf_u_1k_6p0_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_126i, simulation_model_name = "ppolyf_u_1k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_127i = gPPOLYF_U_HR_6P0_DW_DEV interacting gDN_SUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_DW_DEV, device_name = "ppolyf_u_1k_6p0_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_127i, simulation_model_name = "ppolyf_u_1k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
   #endif
#endif
#ifdef d_POLY_HIGH_RESISTOR_2K
   #ifdef d_POLY_HIGH_RESISTOR_2K
      
      
      gLAYER_128i = gPPOLYF_U_HR_3P3_DEV interacting gPSUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_DEV, device_name = "ppolyf_u_2k", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_128i, simulation_model_name = "ppolyf_u_2k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_129i = gPPOLYF_U_HR_3P3_NW_DEV interacting gPURENWELL;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_NW_DEV, device_name = "ppolyf_u_2k", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_129i, simulation_model_name = "ppolyf_u_2k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_130i = gPPOLYF_U_HR_3P3_LP_DEV interacting gDN_LP;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_LP_DEV, device_name = "ppolyf_u_2k_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_130i, simulation_model_name = "ppolyf_u_2k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_131i = gPPOLYF_U_HR_3P3_DW_DEV interacting gDN_SUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_3P3_DW_DEV, device_name = "ppolyf_u_2k_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_131i, simulation_model_name = "ppolyf_u_2k", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_132i = gPPOLYF_U_HR_6P0_DEV interacting gPSUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_DEV, device_name = "ppolyf_u_2k_6p0", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_132i, simulation_model_name = "ppolyf_u_2k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_133i = gPPOLYF_U_HR_6P0_NW_DEV interacting gPURENWELL;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_NW_DEV, device_name = "ppolyf_u_2k_6p0", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_133i, simulation_model_name = "ppolyf_u_2k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_134i = gPPOLYF_U_HR_6P0_LP_DEV interacting gDN_LP;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_LP_DEV, device_name = "ppolyf_u_2k_6p0_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_134i, simulation_model_name = "ppolyf_u_2k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
      
      
      gLAYER_135i = gPPOLYF_U_HR_6P0_DW_DEV interacting gDN_SUB;
      resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_U_HR_6P0_DW_DEV, device_name = "ppolyf_u_2k_6p0_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_135i, simulation_model_name = "ppolyf_u_2k_6p0", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );
   #endif
#endif



gLAYER_136i = gNPOLYF_S_DEV interacting gPSUB;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_S_DEV, device_name = "npolyf_s", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_136i, simulation_model_name = "npolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_137i = gNPOLYF_S_NW_DEV interacting gPURENWELL;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_S_NW_DEV, device_name = "npolyf_s", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_137i, simulation_model_name = "npolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_138i = gNPOLYF_S_LP_DEV interacting gDN_LP;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_S_LP_DEV, device_name = "npolyf_s_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_138i, simulation_model_name = "npolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_139i = gNPOLYF_S_DW_DEV interacting gDN_SUB;
resistor( bulk_relationship = INTERACT, device_body = gNPOLYF_S_DW_DEV, device_name = "npolyf_s_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_139i, simulation_model_name = "npolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );



gLAYER_140i = gPPOLYF_S_DEV interacting gPSUB;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_S_DEV, device_name = "ppolyf_s", matrix = dev_matrix, optional_pins = { { gPSUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_140i, simulation_model_name = "ppolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_141i = gPPOLYF_S_NW_DEV interacting gPURENWELL;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_S_NW_DEV, device_name = "ppolyf_s", matrix = dev_matrix, optional_pins = { { gPURENWELL } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_141i, simulation_model_name = "ppolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_142i = gPPOLYF_S_LP_DEV interacting gDN_LP;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_S_LP_DEV, device_name = "ppolyf_s_dw", matrix = dev_matrix, optional_pins = { { gDN_LP } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_142i, simulation_model_name = "ppolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );


gLAYER_143i = gPPOLYF_S_DW_DEV interacting gDN_SUB;
resistor( bulk_relationship = INTERACT, device_body = gPPOLYF_S_DW_DEV, device_name = "ppolyf_s_dw", matrix = dev_matrix, optional_pins = { { gDN_SUB } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_RES_PROPERTY, recognition_layer = gLAYER_143i, simulation_model_name = "ppolyf_s", terminal_a = gGPLY, terminal_b = gGPLY, x_card = true );



resistor( bulk_relationship = INTERACT, device_body = gRM1_DEV, device_name = "rm1", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM1_PROP }, "layer2" => { gRM1_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm1", terminal_a = gRM1_TERM, terminal_b = gRM1_TERM, x_card = true );
#ifdef d_BEOL_1P2M
   #ifdef d_TOPMETAL_6KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "tm6k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm6k", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_9KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "tm9k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm9k", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_11KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "tm11k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm11k", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_30KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "tm30k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm30k", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P3M
   
         
   
   resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "rm2", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm2", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   #ifdef d_TOPMETAL_6KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM3_DEV, device_name = "tm6k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM3_PROP }, "layer2" => { gRM3_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm6k", terminal_a = gRM3_TERM, terminal_b = gRM3_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_9KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM3_DEV, device_name = "tm9k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM3_PROP }, "layer2" => { gRM3_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm9k", terminal_a = gRM3_TERM, terminal_b = gRM3_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_11KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM3_DEV, device_name = "tm11k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM3_PROP }, "layer2" => { gRM3_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm11k", terminal_a = gRM3_TERM, terminal_b = gRM3_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_30KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM3_DEV, device_name = "tm30k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM3_PROP }, "layer2" => { gRM3_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm30k", terminal_a = gRM3_TERM, terminal_b = gRM3_TERM, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P4M
   
         
   
   resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "rm2", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm2", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   
         
   
   resistor( bulk_relationship = INTERACT, device_body = gRM3_DEV, device_name = "rm3", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM3_PROP }, "layer2" => { gRM3_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm3", terminal_a = gRM3_TERM, terminal_b = gRM3_TERM, x_card = true );
   #ifdef d_TOPMETAL_6KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM4_DEV, device_name = "tm6k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM4_PROP }, "layer2" => { gRM4_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm6k", terminal_a = gRM4_TERM, terminal_b = gRM4_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_9KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM4_DEV, device_name = "tm9k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM4_PROP }, "layer2" => { gRM4_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm9k", terminal_a = gRM4_TERM, terminal_b = gRM4_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_11KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM4_DEV, device_name = "tm11k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM4_PROP }, "layer2" => { gRM4_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm11k", terminal_a = gRM4_TERM, terminal_b = gRM4_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_30KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM4_DEV, device_name = "tm30k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM4_PROP }, "layer2" => { gRM4_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm30k", terminal_a = gRM4_TERM, terminal_b = gRM4_TERM, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P5M
   
         
   
   resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "rm2", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm2", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   
         
   
   resistor( bulk_relationship = INTERACT, device_body = gRM3_DEV, device_name = "rm3", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM3_PROP }, "layer2" => { gRM3_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm3", terminal_a = gRM3_TERM, terminal_b = gRM3_TERM, x_card = true );
   #ifdef d_TOPMETAL_6KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM5_DEV, device_name = "tm6k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM5_PROP }, "layer2" => { gRM5_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm6k", terminal_a = gRM5_TERM, terminal_b = gRM5_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_9KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM5_DEV, device_name = "tm9k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM5_PROP }, "layer2" => { gRM5_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm9k", terminal_a = gRM5_TERM, terminal_b = gRM5_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_11KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM5_DEV, device_name = "tm11k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM5_PROP }, "layer2" => { gRM5_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm11k", terminal_a = gRM5_TERM, terminal_b = gRM5_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_30KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM5_DEV, device_name = "tm30k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM5_PROP }, "layer2" => { gRM5_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm30k", terminal_a = gRM5_TERM, terminal_b = gRM5_TERM, x_card = true );
   #endif
#endif
#ifdef d_BEOL_1P6M
   
         
   
   resistor( bulk_relationship = INTERACT, device_body = gRM2_DEV, device_name = "rm2", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM2_PROP }, "layer2" => { gRM2_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm2", terminal_a = gRM2_TERM, terminal_b = gRM2_TERM, x_card = true );
   
         
   
   resistor( bulk_relationship = INTERACT, device_body = gRM3_DEV, device_name = "rm3", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM3_PROP }, "layer2" => { gRM3_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "rm3", terminal_a = gRM3_TERM, terminal_b = gRM3_TERM, x_card = true );
   #ifdef d_TOPMETAL_6KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM6_DEV, device_name = "tm6k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM6_PROP }, "layer2" => { gRM6_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm6k", terminal_a = gRM6_TERM, terminal_b = gRM6_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_9KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM6_DEV, device_name = "tm9k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM6_PROP }, "layer2" => { gRM6_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm9k", terminal_a = gRM6_TERM, terminal_b = gRM6_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_11KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM6_DEV, device_name = "tm11k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM6_PROP }, "layer2" => { gRM6_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm11k", terminal_a = gRM6_TERM, terminal_b = gRM6_TERM, x_card = true );
   #endif
   #ifdef d_TOPMETAL_30KA
      
                  
      
      resistor( bulk_relationship = INTERACT, device_body = gRM6_DEV, device_name = "tm30k", matrix = dev_matrix, processing_layer_hash = { "layer1" => { gRM6_PROP }, "layer2" => { gRM6_OUT } }, properties = { { "M" }, { "W" }, { "L" }, { "par" }, { "s" } }, property_function = dev_func_2T_RES_PROPERTY, simulation_model_name = "tm30k", terminal_a = gRM6_TERM, terminal_b = gRM6_TERM, x_card = true );
   #endif
#endif

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_3P3_DEV, device_name = "nmoscap_3p3", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_3p3", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_3P3_DW_DEV, device_name = "nmoscap_3p3_dw", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_3p3", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_3P3_DEV, device_name = "pmoscap_3p3", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_3p3", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_3P3_DW_DEV, device_name = "pmoscap_3p3_dw", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_3p3", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_6P0_DEV, device_name = "nmoscap_6p0", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_6p0", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_6P0_DW_DEV, device_name = "nmoscap_6p0_dw", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_6p0", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_6P0_DEV, device_name = "pmoscap_6p0", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_6p0", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_6P0_DW_DEV, device_name = "pmoscap_6p0_dw", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_6p0", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_3P3_B_DEV, device_name = "nmoscap_3p3_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_3p3_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD_B, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_3P3_B_DW_DEV, device_name = "nmoscap_3p3_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_3p3_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD_B, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_6P0_B_DEV, device_name = "nmoscap_6p0_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_6p0_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD_B, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gNMOSCAP_6P0_B_DW_DEV, device_name = "nmoscap_6p0_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "nmoscap_6p0_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gNMOSCAP_NSD_B, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_3P3_B_DEV, device_name = "pmoscap_3p3_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_3p3_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD_B, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_3P3_B_DW_DEV, device_name = "pmoscap_3p3_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_3p3_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD_B, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_6P0_B_DEV, device_name = "pmoscap_6p0_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_6p0_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD_B, x_card = true );

      
      

capacitor( bulk_relationship = INTERACT, device_body = gPMOSCAP_6P0_B_DW_DEV, device_name = "pmoscap_6p0_b", matrix = dev_matrix, properties = { { "M" }, { "L" }, { "W" } }, property_function = dev_func_MOSCAP_PROPERTY, simulation_model_name = "pmoscap_6p0_b", swappable_pins = {  }, terminal_a = gPOLY_MOD, terminal_b = gPMOSCAP_PSD_B, x_card = true );

gendev( bulk_relationship = INTERACT, device_body = gEFUSE_BODY, device_layers = { { gEFUSE_ANODE, "ANODE" }, { gEFUSE_CATHODE, "CATHODE" } }, device_name = "eFuse", matrix = dev_matrix, recognition_layer = gEFUSE_BODY, schematic_devices = { { "eFuse" } }, simulation_model_name = "efuse", swappable_pins = {  } );

      


      


      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
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
device_db = extract_devices(dev_matrix);
layout_netlist_db = netlist( device_db = device_db, include_empty_cells = NONE, precision = 6 );
