module pipo_register (
    input clk,
    input load,
    input [3:0] pin,
    output reg [3:0] pout
);

    initial pout <= 4'b0000;

    always @(posedge clk) begin
        case (load)
            1'b1: pout <= pin;
            1'b0: pout <= pout;
        endcase
    end

endmodule