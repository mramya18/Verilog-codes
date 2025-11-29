module sync_up_counter (
    input clk,
    input rst,
    output reg [3:0] q
);

    initial q <= 4'b0000;

    always @(posedge clk) begin
        case (rst)
            1'b1: q <= 4'b0000;
            1'b0: q <= q + 4'b0001;
        endcase
    end

endmodule