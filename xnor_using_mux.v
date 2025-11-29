module xnor_using_mux(input a, b,
                      output reg y);

reg w1;   // internal wire

always @(*) begin
    // XOR using mux
    case (b)            // b = selection line
        1'b0: w1 = a;      // d0 = A
        1'b1: w1 = ~a;     // d1 = A'
    endcase

    // XNOR = NOT(XOR)
    y = ~(w1);
end

endmodule
