module sipo_register (
    input clk,
    input sin,
    output reg [3:0] pout
);

    initial pout <= 4'b0000;

    always @(posedge clk) begin
        case (sin)
            1'b0: pout <= {pout[2:0], 1'b0};
            1'b1: pout <= {pout[2:0], 1'b1};
        endcase
    end

endmodule