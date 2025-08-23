#     Copyright (c) 2018 GLOBALFOUNDRIES, Inc.
#
#     ALL RIGHTS RESERVED
#
#     The confidential and proprietary information contained in this file
#     may only be used by a person authorised under and to the extent
#     permitted by a licensing/NDA agreement from GLOBALFOUNDRIES Limited.
#
#     This entire notice must be reproduced on all copies of this file
#     and copies of this file may only be made by a person if such person
#     is permitted to do so under the terms of a license/NDA
#     agreement from GLOBALFOUNDRIES Limited.



set lib [current_mw_lib]
remove_antenna_rules $lib

define_antenna_rule $lib -mode 4 -diode_mode 6 -metal_ratio 400 -cut_ratio 9999
define_antenna_layer_rule $lib -mode 4 -layer "MET1" -ratio 400 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 4 -layer "VIA12" -ratio 9999 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 4 -layer "MET2" -ratio 400 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 4 -layer "VIA23" -ratio 9999 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 4 -layer "MET3" -ratio 400 -diode_ratio {0 0 2 0}


define_antenna_rule $lib -mode 1 -diode_mode 6 -metal_ratio 9999 -cut_ratio 20
define_antenna_layer_rule $lib -mode 1 -layer "MET1" -ratio 9999 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 1 -layer "VIA121" -ratio 20 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 1 -layer "MET2" -ratio 9999 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 1 -layer "VIA23" -ratio 20 -diode_ratio {0 0 2 0}
define_antenna_layer_rule $lib -mode 1 -layer "MET3" -ratio 9999 -diode_ratio {0 0 2 0}

