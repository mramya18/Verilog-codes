module jkflip_flop_tb;

reg J, K, CLK;
wire Q, Q_bar;

jkflip_flop dut (
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin
    $monitor("Time=%0t | CLK=%b, J=%b, K=%b | Q=%b, Q_bar=%b", 
             $time, CLK, J, K, Q, Q_bar);
end

initial begin
    J = 1'b0; K = 1'b0; CLK = 1'b0;
    #5;
    
    forever #5 CLK = ~CLK;
end

initial begin
    #1;

    J = 0; K = 1; 
    #10; 

    J = 1; K = 0;
    #10; 
    
    J = 0; K = 0;
    #10; 
    
    J = 1; K = 1;
    #10; 
    
    J = 1; K = 1;
    #10; 
    
    J = 0; K = 1;
    #10; 

    $stop;
end

endmodule