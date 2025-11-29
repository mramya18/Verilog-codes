module ring_counter_tb;

    reg clk;
//    reg i;
    wire [3:0] q;

    ring_counter uut (
        .clk(clk),
        .i(i),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        i = 1;

        #10 i = 0;
        
        #50 i = 1;
        #10 i = 0;

        #40
         $finish;
    end

endmodule