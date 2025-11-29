module half_sub(
    input a, b,
    output diff, borr
);
    assign diff = a ^ b;      
    assign borrow = ~a & b;  
endmodule

// Half Adder using Half Subtractor
module ha_using_hs(
    input a, b,
    output sum, carry
);
    wire diff, borr;

 //we are initiating hs
    half_sub hs (
        .a(a),
        .b(b),
        .diff(diff),
        .borr(borr)
    );

    assign sum = diff;      
    assign carry = a & b;  
endmodule