module tb_full_adder_mux;

reg A, B, Cin;
wire Sum, Cout;

full_adder_mux DUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);



initial begin
    A = 0; B = 0; Cin = 0;
    #10;

    {A, B, Cin} = 3'b001;
    #10;
    {A, B, Cin} = 3'b010; 
    #10;
    {A, B, Cin} = 3'b011; 
    #10;
    {A, B, Cin} = 3'b100; 
    #10;
    {A, B, Cin} = 3'b101; 
    #10;
    {A, B, Cin} = 3'b110; 
    #10;
    {A, B, Cin} = 3'b111; 
    #10;

    $stop;
end

endmodule