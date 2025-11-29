module fs_using_hs_tb;
    reg a, b,c;
    wire diff, bout;

    fs_using_hs  dut(.a(a), .b(b), .c(c), .diff(diff), .bout(bout));

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