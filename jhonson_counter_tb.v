module johnson_counter_tb;

    reg clk;
    reg i;
    wire [3:0] q;

    johnson_counter uut (
        .clk(clk),
        .i(i),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        i = 1;#10;
        i = 0;#90;
        i = 1;#10;
        i = 0;#20
        $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b | i=%b | q=%b", $time, clk, i, q);
    end

endmodule