module hs_using_ha_tb;
    reg a, b;
    wire diff, borr;

    hs_using_ha dut(.a(a), .b(b), .diff(diff), .borr(borr));

    initial begin
        a=0; b=0; #10 
        a=0; b=1; #10 
        a=1; b=0; #10 
        a=1; b=1; #10 
        $finish;
    end
endmodule