module tb_demux_1x16;

reg D;
reg [3:0] S;
wire [15:0] Y;

demux_1x16 DUT (
    .D(D),
    .S(S),
    .Y(Y)
);


initial begin
    D = 1'b1;
    S = 4'd5; 
    #10; 

    D = 1'b0;
    S = 4'd10; 
    #10; 
    
    D = 1'b1;
    S = 4'd15;
    #10;

    D = 1'b0;
    S = 4'd0;
    #10;

    S = 4'd3;
    D = 1'b1; #5;
    D = 1'b0; #5;
    D = 1'b1; #5;

    $stop;
end

endmodule