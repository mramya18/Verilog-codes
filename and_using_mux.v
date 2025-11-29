module and_using_mux(input a, b,
                     output reg y);

always @(*) begin
    case (a)
        1'b0: y = 1'b0;  // d0 = 0
        1'b1: y = b;     // d1 = B
    endcase
end

endmodule
