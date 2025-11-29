module sr_flip_flop (
    output reg Q,
    output Q_bar,
    input S,
    input R,
    input CLK
);
assign Q_bar = ~Q;
always @(posedge CLK) begin
    if (R == 1'b1 && S == 1'b0) begin
        Q <= 1'b0;
    end 
    else if (S == 1'b1 && R == 1'b0) begin
        Q <= 1'b1;
    end 
    else if (S == 1'b0 && R == 1'b0) begin
    end
end

endmodule