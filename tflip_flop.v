module tflip_flop (
    input clk,
    input t,
    output reg q,
    output qn
);

    initial q <= 0;

    always @(posedge clk) begin
        case (t)
            1'b0: q <= q;
            1'b1: q <= ~q;
        endcase
    end

    assign qn = ~q;

endmodule