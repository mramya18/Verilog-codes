module jk_flip_flop_case (
    output reg Q,
    output Q_bar,
    input J,
    input K,
    input CLK
);

assign Q_bar = ~Q;

always @(posedge CLK) begin
    case ({J, K})
        2'b00: begin
        end
        
        2'b01: begin
            Q <= 1'b0;
        end
        
        2'b10: begin
            Q <= 1'b1;
        end
        
        2'b11: begin
            Q <= ~Q;
        end
        
    endcase
end

endmodule