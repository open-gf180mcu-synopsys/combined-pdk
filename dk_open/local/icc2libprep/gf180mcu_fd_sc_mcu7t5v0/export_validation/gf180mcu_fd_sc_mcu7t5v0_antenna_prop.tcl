## This tcl-based antenna property is from library: gf180mcu_fd_sc_mcu7t5v0
set _library [get_libs]
set library [get_object_name $_library]
if {[string match {} [current_lib -quiet]]} {
set view design
} else {
set view frame
}

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__addf_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.272}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.272}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.694}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CO"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8932}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.847}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__addf_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.372}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.372}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.754}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CO"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0452}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__addf_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.352}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.352}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.734}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CO"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.5972}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.4244}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__addh_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.175}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.175}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CO"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8954}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8954}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__addh_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.073}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.073}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CO"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1771}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.9308}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__addh_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.696}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.696}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CO"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.2701}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.0903}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and2_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.519}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.519}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8932}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and2_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.024}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.024}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0719}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and2_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.055}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.055}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.0696}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and3_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4955}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4955}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4955}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8756}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and3_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9815}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9815}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9815}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and3_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.132}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.132}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.132}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.0592}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and4_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8954}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and4_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9195}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9195}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9195}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9195}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__and4_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.884}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.884}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.884}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.884}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.9396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__antenna/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.4104}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi21_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9135}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1456}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi21_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.145}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.145}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.893}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.0819}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi21_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.368}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.368}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.624}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 3.8792}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi22_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0965}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0965}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0965}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0965}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi22_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.193}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.193}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.193}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.193}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.139725}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi22_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.389}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi211_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0335}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0335}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8865}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8865}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.2599}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi211_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.076}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.076}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.758}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.758}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1268}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi211_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.288}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.288}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.544}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.544}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.2952}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi221_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0335}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0335}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0335}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0335}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8865}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.4892}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi221_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.978}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.978}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.978}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.978}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.708}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.496525}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi221_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.278}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.278}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.918}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.918}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.582}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.3055}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi222_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.072}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.072}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.072}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.072}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.072}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.072}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.7565}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi222_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.18}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.18}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.18}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.18}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.18}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.18}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 3.1688}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__aoi222_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.9406}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4985}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1828}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_3/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.0804}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.204}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3656}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.7312}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_12/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 6.612}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 7.0968}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 8.816}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 9.462399}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__buf_20/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 11.02}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 11.828}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__bufz_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.526}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.052}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__bufz_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0795}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.929}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0374}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__bufz_3/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.658}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.929}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.9152}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__bufz_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.159}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.929}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.0748}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__bufz_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.318}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.929}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.1496}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__bufz_12/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 6.477}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.929}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 6.2244}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__bufz_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 8.5485}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.898}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 8.2992}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.741}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.7546}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.726}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0086}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_3/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.183}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.986}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.183}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.986}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.369}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_12/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.555}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 6.036}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.738}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 8.0688}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkbuf_20/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 5.924}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 10.13}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.898}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.748}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.796}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.006}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_3/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.694}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.754}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.592}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.256}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 7.184}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.024}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_12/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 10.776}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 6.036}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 14.368}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 8.047999}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__clkinv_20/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 17.959999}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 10.059999}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4635}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7115}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.858}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4635}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7115}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.4016}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4635}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7115}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 3.5259}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.614}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.318}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8668}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnrnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.614}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.393}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0296}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnrnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.614}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.3955}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.08}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnrsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.433}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.284}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1495}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8954}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnrsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.433}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.284}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1495}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0582}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnrsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.433}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.284}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1495}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1112}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5305}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.794}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1565}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8932}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5305}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.794}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1565}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffnsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5305}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.794}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1565}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1112}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.6044}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffrnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.606}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.322}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8932}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffrnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.606}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.4295}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffrnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.606}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.4295}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1112}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4015}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2095}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.096}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8932}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffrsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4015}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2095}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.096}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffrsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4565}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.177}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.096}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1112}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4685}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0147}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4685}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.2986}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dffsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4685}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6755}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.1415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.5972}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlya_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlya_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlya_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3656}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyb_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyb_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyb_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3046}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyc_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyc_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.2817}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyc_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.4035}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyd_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyd_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__dlyd_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1216}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__endcap/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fill_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fill_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fill_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fill_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fill_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fill_32/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fill_64/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fillcap_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fillcap_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fillcap_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fillcap_32/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__fillcap_64/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__filltie/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__hold/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.4512}
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__icgtn_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.394}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == TE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8118}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == IQ3"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__icgtn_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.725}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == TE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.962}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == IQ3"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__icgtn_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLKN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.725}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == TE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.924}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == IQ3"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__icgtp_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.388}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == TE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.814}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == IQ2"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__icgtp_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.679}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == TE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.118}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == IQ2"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__icgtp_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.685}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == TE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6995}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.924}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == IQ2"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.204}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.366}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_3/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.306}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.2024}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.6096}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 8.816}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.2192}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_12/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 13.224}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 7.0968}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 17.632}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 9.462399}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__inv_20/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 22.039999}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 11.828}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__invz_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.526}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.052}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.072725}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__invz_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.082}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.04}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__invz_3/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.92}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__invz_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.08}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__invz_8/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.073}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.2676}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__invz_12/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.1185}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 6.594}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__invz_16/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == EN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 9.205}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.736}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.736}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.736}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1216}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latrnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.789}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latrnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.789}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latrnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.789}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1216}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latrsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.789}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latrsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.789}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latrsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.789}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1216}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__latsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == E"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2935}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.552}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1216}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__mux2_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5235}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5235}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.047}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__mux2_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.204}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1218}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__mux2_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.204}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3046}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__mux4_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5015}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5015}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5015}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5015}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.003}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.5104}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__mux4_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5165}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5165}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.618}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.618}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.651}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.033}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.7592}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__mux4_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5165}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.5165}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.618}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == I3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.618}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S0"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.651}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == S1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.033}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.2064}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand2_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.057}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.057}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.9484}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand2_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.114}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.114}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.6016}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand2_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.228}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.228}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 3.2401}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand3_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9845}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9845}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9845}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.3064}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand3_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.969}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.969}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.969}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.963}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand3_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.938}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.938}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.938}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.8014}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand4_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9145}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9145}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9145}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9145}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.2396}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand4_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.829}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.829}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.829}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.829}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.4882}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nand4_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.658}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.658}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.658}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.658}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.1796}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor2_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.949}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.949}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8306}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor2_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.898}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.898}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.283}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor2_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.796}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.796}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.932}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor3_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.9832}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor3_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.778}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.778}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.778}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.6492}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor3_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.556}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.9636}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor4_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.826}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.826}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.826}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.826}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.9112}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor4_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.652}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.652}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.652}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.652}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.631}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__nor4_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.294}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.294}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.294}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.294}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 3.8304}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai21_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.057}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.276}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai21_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.939}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3096}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai21_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.878}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.0305}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai22_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1828}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai22_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3774}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai22_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.369}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai31_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0365}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0365}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0365}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.054}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.9884}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai31_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.064}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.796}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai31_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.0289}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai32_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.3048}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai32_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3774}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai32_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.1761}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai33_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.8719}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai33_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.8038}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai33_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.0289}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai211_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9845}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9845}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.67285}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai211_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.969}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.969}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.8374}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai211_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.938}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.938}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 5.279}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai221_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9645}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.7536}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai221_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.969}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 3.382}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai221_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 3.838}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 6.7442}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai222_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0395}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.5684}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai222_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.079}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 4.265}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__oai222_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == B2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == C2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 4.158}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 6.88075}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or2_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4985}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.4985}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or2_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.102}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1218}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or2_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.204}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.204}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3046}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or3_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.52}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.52}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.52}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or3_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.009}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.009}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.009}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1828}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or3_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.018}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.018}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 2.018}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.2436}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or4_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.496}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.496}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.496}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.496}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or4_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.889}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1218}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__or4_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.778}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.778}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.778}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A4"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.778}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3046}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.739}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8932}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.739}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.11635}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.739}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.2327}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffrnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.891}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffrnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.315}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.11375}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffrnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.315}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.2275}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.2045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.3545}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == RN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.3545}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.1216}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffsnq_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.057}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.8976}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffsnq_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.531}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.062}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.7415}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.057}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0791}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__sdffsnq_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == D"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SI"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.408}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SE"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.816}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == CLK"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.6865}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == SETN"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.0805}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Q"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.3055}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__tieh/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.5368}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__tiel/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 0.3608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xnor2_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5355}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5355}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.45635}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xnor2_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.6005}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.6005}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.1828}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xnor2_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.498}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.498}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.2436}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xnor3_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.892}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.892}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5355}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.5111}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xnor3_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.9045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.598}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.7952}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xnor3_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5105}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == ZN"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.978}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xor2_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.598}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.598}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xor2_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5355}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5355}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xor2_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.448}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.448}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.2436}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xor3_1/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8945}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8945}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.6005}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.0608}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xor3_2/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.892}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.892}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.5355}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 1.7952}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]

set lc [get_lib_cells -quiet ${library}/gf180mcu_fd_sc_mcu7t5v0__xor3_4/${view}]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A1"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A2"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 0.8045}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == A3"]
    set_attribute -objects $lp -name gate_area -value {oxide1 Metal1 1.4355}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == Z"]
    set_attribute -objects $lp -name diff_area -value {Metal1 2.978}
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VDD"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VPW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VNW"]
set lp [get_lib_pins -quiet -all -of_objects $lc -filter "name == VSS"]
