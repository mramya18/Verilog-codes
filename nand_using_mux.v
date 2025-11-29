module nand_using_mux(input a, b,
                      output reg y);

reg w1;   // internal wire to store AB

always @(*) begin
    // AND using MUX
    case (a)
        1'b0: w1 = 0;  
        1'b1: w1 = b;  
    endcase

    // NAND = ~(AND)
    y = ~(w1);
end

endmodule
