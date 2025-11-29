module tb_sr_flip_flop;

reg S, R, CLK;
wire Q, Q_bar;

sr_flip_flop DUT (
    .S(S),
    .R(R),
    .CLK(CLK),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin
    R = 1'b1; S = 1'b0; 
    #10; 

    R = 1'b0; S = 1'b1;
    #10; 
    
    R = 1'b0; S = 1'b0;
    #10; 
    
    R = 1'b1; S = 1'b0; 
    #5; 
    
    #5; 
    
    R = 1'b1; S = 1'b1;
    #10; 

    $stop;
end

endmodule