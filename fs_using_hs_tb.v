module tb_full_subtractor;
reg a, b, bin;
wire diff, borrow;

full_subtractor dut(
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .borrow(borrow)
);

initial begin

  a=0; b=0; bin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  a=0; b=0; bin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  a=0; b=1; bin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  a=0; b=1; bin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  a=1; b=0; bin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  a=1; b=0; bin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  a=1; b=1; bin=0; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  a=1; b=1; bin=1; #10;
  $display("%b  %b   %b  |  %b     %b", a, b, bin, diff, borrow);

  $finish;
end
endmodule
