module tb_tflip_flop;

    reg clk;
    reg t;
    wire q;
    wire qn;

    tflip_flop dut (
        .clk(clk),
        .t(t),
        .q(q),
        .qn(qn)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        t = 0;

        #10 t = 1; 
        #20 t = 0; 
        #10 t = 1; 
        #10 t = 0; 
        
        #10 $finish;
    end

endmodule