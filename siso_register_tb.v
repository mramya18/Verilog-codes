module tb_siso_register;

    reg clk;
    reg sin;
    wire sout;

    siso_register uut (
        .clk(clk),
        .sin(sin),
        .sout(sout)
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
        #10 sin = 0;
        
        #50 $finish;
    end
endmodule