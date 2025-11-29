module dflip_flop (
    input clk,
    input d,
    output reg q,
    output qn
);

    initial q <= 0;

    always @(posedge clk) begin
        case (d)
            1'b0: q <= 0;
            1'b1: q <= 1;
        endcase
    end

    assign qn = ~q;

endmodule