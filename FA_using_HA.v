module half_adder(
input a, b,
output sum, carry);

assign sum = a ^ b;     // XOR for sum
assign carry = a & b;   // AND for carry
endmodule

// Full Adder Module using two Half Adders
module full_adder(
input a, b, cin,
output sum, carry);

wire s1, c1, c2;

// First half adder
half_adder ha1(a, b, s1, c1);

// Second half adder
half_adder ha2(s1, cin, sum, c2);

// Final carry
assign carry = c1 | c2;
endmodule
