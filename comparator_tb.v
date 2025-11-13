module tb_comparator_3bit;

reg [2:0] A, B;
wire A_greater_B, A_equal_B, A_less_B;

comparator_3bit uut (.A(A), .B(B), .A_greater_B(A_greater_B), .A_equal_B(A_equal_B), .A_less_B(A_less_B));

initial begin
    $monitor("A=%b, B=%b --> Greater=%b, Equal=%b, Less=%b", A, B, A_greater_B, A_equal_B, A_less_B);
    
    A = 3'b000; B = 3'b000;
    #10 A = 3'b001; B = 3'b010;
    #10 A = 3'b011; B = 3'b010;
    #10 A = 3'b111; B = 3'b111;
    #10 A = 3'b100; B = 3'b011;
    #10 $finish;
end

endmodule

