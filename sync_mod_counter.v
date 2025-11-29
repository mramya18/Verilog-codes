module sync_mod_counter (
    input clk,
    input rst,
    output reg [3:0] q
);//mod10 counter

    initial q <= 4'b0000;

    always @(posedge clk) begin
        case (rst)
            1'b1: q <= 4'b0000;                 // reset . start from 0
            1'b0: begin
                if (q == 4'd9)                  // when q = 9
                    q <= 4'b0000;               // wrap to 0
                else
                    q <= q + 4'b0001;           // otherwise count up
            end
        endcase
    end

endmodule
