
module dflip_flop_tb;

    reg clk;
    reg d;
    wire q;
    wire qn;

    dflip_flop dut (
        .clk(clk),
        .d(d),
        .q(q),
        .qn(qn)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        d = 0;

        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;
        
        #10 $finish;
    end

endmodule