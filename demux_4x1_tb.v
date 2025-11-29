module tb_demux_1x4;

reg D;
reg S0, S1;
wire Y0, Y1, Y2, Y3;


demux_1x4 DUT (
    .D(D),
    .S0(S0),
    .S1(S1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);


initial begin
    D = 1'b1;
    S1 = 0; S0 = 0; #10; 
    S1 = 0; S0 = 1; #10; 
    S1 = 1; S0 = 0; #10; 
    S1 = 1; S0 = 1; #10; 

    D = 1'b0;
    S1 = 0; S0 = 0; #10; 
    S1 = 0; S0 = 1; #10; 
    S1 = 1; S0 = 0; #10; 
    S1 = 1; S0 = 1; #10; 

    $stop;
end

endmodule