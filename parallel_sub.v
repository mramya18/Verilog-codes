module full_subtractor(
    input a, b, c,  
    output diff, bout 
);

    assign diff = a ^ b ^ c;
    assign bout = (~a & b) | ((~a | b) & c);

endmodule


module parallel_subtractor_4bit(
    input [3:0] A,
    input [3:0] B,
    input c,           
    output [3:0] D,
    output Bout
);

    wire b1, b2, b3; 

    full_subtractor fs0(A[0], B[0], c, D[0], b1);
    full_subtractor fs1(A[1], B[1], b1, D[1], b2);
    full_subtractor fs2(A[2], B[2], b2, D[2], b3);
    full_subtractor fs3(A[3], B[3], b3, D[3], Bout);

endmodule
