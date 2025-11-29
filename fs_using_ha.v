module half_adder(
    input a, b,
    output sum, carry
);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule


module fs_using_ha(
    input a, b, c,
    output diff, bout
);
    wire sum1, carry1, carry2;

    half_adder HA1(.a(b), .b(c), .sum(sum1), .carry(carry1));

    half_adder HA2(.a(a), .b(sum1), .sum(diff), .carry(carry2));

    assign bout = (~a & sum1) | carry1;
endmodule