module tb_full_subtractor_mux;

reg A, B, Bin;
wire D, Bout;

full_subtractor_mux DUT (
    .A(A),
    .B(B),
    .Bin(Bin),
    .D(D),
    .Bout(Bout)
);


initial begin
    A = 0; B = 0; Bin = 0;
    #10;

    {A, B, Bin} = 3'b001;
    #10;
    {A, B, Bin} = 3'b010; 
    #10;
    {A, B, Bin} = 3'b011; 
    #10;
    {A, B, Bin} = 3'b100; 
    #10;
    {A, B, Bin} = 3'b101; 
    #10;
    {A, B, Bin} = 3'b110; 
    #10;
    {A, B, Bin} = 3'b111; 
    #10;

    $stop;
end

endmodule