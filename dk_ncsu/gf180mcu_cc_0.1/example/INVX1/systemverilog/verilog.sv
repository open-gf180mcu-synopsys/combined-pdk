// Created Sat Aug 23 14:13:18 2025

module INVX1 (A, Y, VDD, VSS);
  input  A;
  output Y;
  inout  VDD;
  inout  VSS;
  // Functional behavior with power awareness
  assign Y =  ~A;

  // Optional timing (edit tplh/tphl as needed)
endmodule

