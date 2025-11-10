module tb_full_adder;
reg a, b, cin;          // inputs
wire sum, carry;        // outputs

// Instantiate the full adder
fa_using_ha dut (a, b, cin, sum, carry);

initial begin
  a=0; b=0; cin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  a=0; b=0; cin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  a=0; b=1; cin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  a=0; b=1; cin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  a=1; b=0; cin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  a=1; b=0; cin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  a=1; b=1; cin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  a=1; b=1; cin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, cin, sum, carry);

  $finish;
end
endmodule

