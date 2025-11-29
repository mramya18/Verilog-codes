module mux_4x1 (
    output reg Z,
    input D0, D1, D2, D3,
    input S0, S1
);

always @(D0 or D1 or D2 or D3 or S0 or S1) 
begin case ({S1, S0})
        2'b00: Z = D0;
        2'b01: Z = D1;
        2'b10: Z = D2;
        2'b11: Z = D3;
        default: Z = 1'bx;
    endcase
end

endmodule


module full_subtractor_mux (
    output D, Bout,
    input A, B, Bin
);

wire Bin_bar;
assign Bin_bar = ~Bin;

// Mux for Difference (D) output
mux_4x1 mux_D (
    .Z(D),
    .D0(Bin),       
    .D1(Bin_bar),   
    .D2(Bin_bar),   
    .D3(Bin),       
    .S0(B),
    .S1(A)
);

// Mux for Borrow Out (Bout) output
mux_4x1 mux_Bout (
    .Z(Bout),
    .D0(Bin),     
    .D1(1'b1),    
    .D2(1'b0),   
    .D3(Bin),     
    .S0(B),
    .S1(A)
);

endmodule