aPR_BNDRY       = assign({ {0, 0} });

aNAT            = assign({ {5, 0} });

aDNWELL         = assign({ {12, 0} });

aNWELL          = assign({ {21, 0} }, layer_intent = { LAYER_INTENT_BASE });

aLVS_PSUB2      = assign({ {23, 5} });

aESD            = assign({ {24, 0} });

aPPLUS          = assign({ {31, 0} }, layer_intent = { LAYER_INTENT_BASE });

aNPLUS          = assign({ {32, 0} }, layer_intent = { LAYER_INTENT_BASE });

aPAD            = assign({ {37, 0} });

aSAB            = assign({ {49, 0} });

aDUALGATE       = assign({ {55, 0} });


aHSR            = assign({ {62, 0} });

aBORDER         = assign({ {63, 0} });

aFUSETOP        = assign({ {75, 0} });

aFUSEWINDOW     = assign({ {96, 1} });

aLVS_SOURCE     = assign({ {100, 8} });

aLVS_DRAIN      = assign({ {100, 7} });

aSRAM_MK        = assign({ {108, 5} });

aRES_MK         = assign({ {110, 5} });

aM1_RES_MK      = assign({ {110, 11} });

aM2_RES_MK      = assign({ {110, 12} });

aM3_RES_MK      = assign({ {110, 13} });

aM4_RES_MK      = assign({ {110, 14} });

aM5_RES_MK      = assign({ {110, 15} });

aM6_RES_MK      = assign({ {110, 16} });

aNDMY           = assign({ {111, 5} });

aPMNDMY         = assign({ {152, 5} });

aV5_XTOR        = assign({ {112, 1} });

aLVS_DIO        = assign({ {115, 5} });

aSCHOTTKY_DIODE = assign({ {241, 0} });

aMDIODE         = assign({ {116, 5} });

aLVS_CAP        = assign({ {117, 5} });

aMIM_L_MK       = assign({ {117, 10} });

aLATCHUP_MK     = assign({ {137, 5} });

aIND_MK         = assign({ {151, 5} });

aMOS_CAP_MK     = assign({ {166, 5} });

aGUARD_RING_MK  = assign({ {167, 5} });

aLVS_BJT        = assign({ {118, 5} });

aLVS_IO         = assign({ {119, 5} });

aOTP_MK         = assign({ {173, 5} });

aPROBE_MK       = assign({ {13, 17} });


aMTPMARK        = assign({ {122, 5} });

aHVPOLYRS       = assign({ {123, 5} });

aOPC_DRC        = assign({ {124, 5} });

aDRC_BJT        = assign({ {127, 5} });


aZENER          = assign({ {178, 0} });

aUBMP_PERI      = assign({ {183, 0} });

aUBMP_ARRAY     = assign({ {184, 0} });

aUBME_PLATE     = assign({ {184, 0} });



aLVPWELL        = assign({ {204, 0} }, layer_intent = { LAYER_INTENT_BASE });

aPOLYFUSE       = assign({ {220, 0} });

aFHRES          = assign({ {227, 0} });
aESD_MK         = assign({ {24, 5} });
aWELL_DIODE_MK  = assign({ {153, 51} });

aPLFUSE         = assign({ {125, 5} });

aEFUSE_MK       = assign({ {80, 5} });

aMVNSD          = assign({ {210, 0} });

aMVPSD          = assign({ {11, 39} });

aLDMOS          = assign({ {226, 0} });

aDEV_WF_MK      = assign({ {128, 17} });




aCONT           = assign({ {33, 0} }, layer_intent = { LAYER_INTENT_BASE });

aVIA1           = assign({ {35, 0} });

aVIA2           = assign({ {38, 0} });

aVIA3           = assign({ {40, 0} });

aVIA4           = assign({ {41, 0} });

aVIA5           = assign({ {82, 0} });







aCOMP           = assign({ {22, 0}, {22, 4}, {22, 10} }, layer_intent = { LAYER_INTENT_BASE });




aPOLY2          = assign({ {30, 0}, {30, 4}, {30, 10} }, layer_intent = { LAYER_INTENT_BASE });






aMETAL1         = assign({ {34, 0}, {34, 4}, {34, 10} });

aMETAL1_BLK     = assign({ {34, 5} });

aMETAL1_SLOT    = assign({ {34, 3} });






aMETAL2         = assign({ {36, 0}, {36, 4}, {36, 10} });

aMETAL2_BLK     = assign({ {36, 5} });

aMETAL2_SLOT    = assign({ {36, 3} });






aMETAL3         = assign({ {42, 0}, {42, 4}, {42, 10} });

aMETAL3_BLK     = assign({ {42, 5} });

aMETAL3_SLOT    = assign({ {42, 3} });






aMETAL4         = assign({ {46, 0}, {46, 4}, {46, 10} });

aMETAL4_BLK     = assign({ {46, 5} });

aMETAL4_SLOT    = assign({ {46, 3} });






aMETAL5         = assign({ {81, 0}, {81, 4}, {81, 10} });

aMETAL5_BLK     = assign({ {81, 5} });

aMETAL5_SLOT    = assign({ {81, 3} });






aMETAL6         = assign({ {53, 0}, {53, 4}, {53, 10} });

aMETAL6_BLK     = assign({ {53, 5} });

aMETAL6_SLOT    = assign({ {53, 3} });












aMETAL_DUMMY    = assign({ {34, 4}, {36, 4}, {42, 4}, {46, 4}, {81, 4}, {53, 4} });












aMETAL_LABEL    = assign({ {34, 10}, {36, 10}, {42, 10}, {46, 10}, {81, 10}, {53, 10} });


tCOMP_TEXT      = assign_text({ {22, 5}, {22, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);


tPOLY2_TEXT     = assign_text({ {30, 5}, {30, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);


tMETAL1_TEXT    = assign_text({ {34, 5}, {34, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);


tMETAL2_TEXT    = assign_text({ {36, 5}, {36, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);


tMETAL3_TEXT    = assign_text({ {42, 5}, {42, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);


tMETAL4_TEXT    = assign_text({ {46, 5}, {46, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);


tMETAL5_TEXT    = assign_text({ {81, 5}, {81, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);


tMETAL6_TEXT    = assign_text({ {53, 5}, {53, 10} }, text_with_space = KEEP, text_with_reserved = KEEP);
