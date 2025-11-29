module xor_using_mux(input a, b,
                     output reg y);

always @(*) begin
    case (b)           // b = selection line
        1'b0: y = a;    
        1'b1: y = ~a;    
    endcase
end

endmodule
