module async_mod_counter_tb;

    reg clk;
    reg rst;
    wire [3:0] q;

    async_mod_counter dut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    always #10 clk = ~clk;

    initial begin
        clk = 0;

        rst = 1; #10;
        rst = 0; #10;
        rst = 1; #10;
        rst = 0; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b | rst=%b | q=%b (%0d)",
                 $time, clk, rst, q, q);
    end

endmodule
