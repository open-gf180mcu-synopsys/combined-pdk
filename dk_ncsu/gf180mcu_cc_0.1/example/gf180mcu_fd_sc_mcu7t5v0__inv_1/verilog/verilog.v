//Verilog HDL for "ECE733", "inverter" "functional"


module gf180mcu_fd_sc_mcu7t5v0__inv_1 ( I, ZN, VDD, VNW, VPW, VSS );

  input I;
  output ZN;
  inout VDD;
  inout VNW;
  inout VPW;
  inout VSS;
  assign ZN = ~I;
endmodule
