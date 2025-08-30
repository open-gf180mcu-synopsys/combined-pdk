// Created Sat Aug 23 14:13:18 2025

module gf180mcu_fd_sc_mcu7t5v0__inv_1 (I, ZN, VDD, VSS);
  input  I;
  output ZN;
  inout  VDD;
  inout  VSS;
  // Functional behavior with power awareness
  assign ZN =  ~I;

  // Optional timing (edit tplh/tphl as needed)
endmodule

