//Verilog HDL for "ECE733", "inverter" "functional"


module gf180mcu_fd_sc_mcu7t5v0__inv_1 ( Y, A, VDD, VSS );

  input A;
  output Y;
  inout VDD;
  inout VSS;
  assign Y = ~A;
endmodule
