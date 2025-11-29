module demux_1x16 (
    output reg [15:0] Y,
    input D,
    input [3:0] S
);

always @(D or S) begin
    Y = 16'h0000;
    
    case (S)
        4'b0000: Y[0] = D;
        4'b0001: Y[1] = D;
        4'b0010: Y[2] = D;
        4'b0011: Y[3] = D;
        4'b0100: Y[4] = D;
        4'b0101: Y[5] = D;
        4'b0110: Y[6] = D;
        4'b0111: Y[7] = D;
        4'b1000: Y[8] = D;
        4'b1001: Y[9] = D;
        4'b1010: Y[10] = D;
        4'b1011: Y[11] = D;
        4'b1100: Y[12] = D;
        4'b1101: Y[13] = D;
        4'b1110: Y[14] = D;
        4'b1111: Y[15] = D;
        default: Y = 16'bx;
    endcase
end

endmodule