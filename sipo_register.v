module tb_sipo_register;

    reg clk;
    reg sin;
    wire [3:0] pout;

    sipo_register uut (
        .clk(clk),
        .sin(sin),
        .pout(pout)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        sin = 0;

        #10 sin = 1;
        #10 sin = 0;
        #10 sin = 1;
        #10 sin = 1; 
        
        #10 sin = 0; 
        
        #20 $finish;
    end

endmodule