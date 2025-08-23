//Verilog HDL for "ECE733", "inverter" "functional"


module INVX1 ( Y, A, VDD, VSS );

  input A;
  output Y;
  inout VDD;
  inout VSS;
  assign Y = ~A;
endmodule
