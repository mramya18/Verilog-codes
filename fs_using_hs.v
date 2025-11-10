module half_subtractor(
    input a, b,
    output diff, borrow
);
assign diff = a ^ b;    
assign borrow = (~a) & b;
endmodule


// Full Subtractor Module using two Half Subtractors
module full_subtractor(
    input a, b, bin,
    output diff, borrow
);
wire d1, b1, b2;

// First half subtractor
half_subtractor hs1(a, b, d1, b1);

// Second half subtractor
half_subtractor hs2(d1, bin, diff, b2);

// Final borrow
assign borrow = b1 | b2;
endmodule
