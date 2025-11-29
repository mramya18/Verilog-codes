module fa_using_fs_tb;
    reg a, b, c;
    wire sum, cout;

    fa_using_fs dut(.a(a), .b(b), .c(c), .sum(sum), .cout(cout));

    initial begin
        a=0; b=0; c=0; #10 
        a=0; b=0; c=1; #10 
        a=0; b=1; c=0; #10 
        a=0; b=1; c=1; #10 
        a=1; b=0; c=0; #10 
        a=1; b=0; c=1; #10 
        a=1; b=1; c=0; #10 
        a=1; b=1; c=1; #10 
        $finish;
    end
endmodule