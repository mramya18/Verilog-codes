module tb_pipo_register;

    reg clk;
    reg load;
    reg [3:0] pin;
    wire [3:0] pout;

    pipo_register uut (
        .clk(clk),
        .load(load),
        .pin(pin),
        .pout(pout)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        load = 0;
        pin = 0;

        #10 pin = 4'b1010;
        #10 load = 1;
        #10 load = 0;
        
        #10 pin = 4'b1100;
        #10 load = 1;
        
        #20 
        $finish;
    end

endmodule