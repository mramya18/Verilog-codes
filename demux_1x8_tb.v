module tb_demux_1x8;

reg D;
reg [2:0] S;
wire [7:0] Y;

demux_1x8 dut (
    .D(D),
    .S(S),
    .Y(Y)
);


initial begin
    D = 1'b1;
    
    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    D = 1'b0;
    
    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    $stop;
end

endmodule