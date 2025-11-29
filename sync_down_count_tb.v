module sync_down_counter_tb;

    reg clk;
    reg rst;
    wire [3:0] q;

    sync_down_counter dut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // clock toggles every 10 time units
    always #10 clk = ~clk;

    initial begin
        clk = 0;

        rst = 1; #10;   // reset = 1111
        rst = 0; #10;   // count down
        rst = 1; #10;   // reset again
        rst = 0; #10;   // count again

        $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b | rst=%b | q=%b (%0d)",
                  $time, clk, rst, q, q);
    end

endmodule
