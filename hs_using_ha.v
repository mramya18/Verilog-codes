module half_adder(
    input a, b,
    output sum, carry
);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

module hs_using_ha(
    input a, b,
    output diff, borr
);
    wire sum, carry;

    half_adder ha (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    assign diff = sum;           
    assign borr = (~a) & b;    
endmodule