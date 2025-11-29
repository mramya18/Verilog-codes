module async_mod_counter (
    input clk,
    input rst,
    output reg [3:0] q
);//mod10 counter

    initial q <= 4'b0000;


    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else begin
            if (q == 4'd9)
                q <= 4'b0000;        
            else
                q <= q + 1;          
        end
    end

endmodule
