module piso_register (
    input clk,
    input load,
    input [3:0] pin,
    output sout
);

    reg [3:0] q;

    initial q <= 4'b0000;

    always @(posedge clk) begin
        case (load)
            1'b1: q <= pin;
            1'b0: q <= {q[2:0], 1'b0};
        endcase
    end

    assign sout = q[3];

endmodule