module siso_register (
    input clk,
    input sin,
    output sout
);

    reg [3:0] q;

    initial q <= 4'b0000;

    always @(posedge clk) begin
        case (sin)
            1'b0: q <= {q[2:0], 1'b0};
            1'b1: q <= {q[2:0], 1'b1};
        endcase
    end

    assign sout = q[3];

endmodule