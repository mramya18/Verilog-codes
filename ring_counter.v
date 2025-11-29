module ring_counter (
    input clk,
    input i,
    output reg [3:0] q
);

    initial q <= 4'b0001;

    always @(posedge clk) begin
        case (i)
            1'b1: q <= 4'b0001;
            1'b0: q <= {q[2:0], q[3]};
        endcase
    end

endmodule