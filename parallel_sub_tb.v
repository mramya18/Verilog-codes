module parallel_sub_tb;

    reg [3:0] A, B;
    reg c;              
    wire [3:0] D;
    wire Bout;

    parallel_subtractor dut (
        .A(A),
        .B(B),
        .c(c),
        .D(D),
        .Bout(Bout)
    );

    initial begin
        c = 0;

        A = 4'b1001; B = 4'b0101;
        #10;
        A = 4'b0111; B = 4'b1001;
        #10;

        A = 4'b1111; B = 4'b1111;
        #10;

        A = 4'b0000; B = 4'b0001;
        #10;

        #20 $finish;
    end

endmodule
