module comparator_3bit (
    input [2:0] A, B,
    output A_greater_B, A_equal_B, A_less_B
);

assign A_greater_B = (A > B);
assign A_equal_B   = (A == B);
assign A_less_B    = (A < B);

endmodule
