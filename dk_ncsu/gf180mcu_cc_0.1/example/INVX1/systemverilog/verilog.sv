// Created Sat Aug 23 14:13:18 2025

module INVX1 (
    input  logic A,
    output logic Y,
    inout  logic VDD,   // power
    inout  logic VSS    // ground
);
    // Power-good check
    wire pwr_good = (VDD === 1'b1) && (VSS === 1'b0);

    // Functional behavior with power awareness
    assign Y = pwr_good ? ~A : 1'bx;

    // Optional timing (edit tplh/tphl as needed)
    specify
        specparam tplh = 0.10, tphl = 0.10; // ns
        if (VDD && !VSS) (A +=> Y) = (tplh, tphl);
        // When not powered, timing is undefined (implicitly X)
    endspecify
endmodule

