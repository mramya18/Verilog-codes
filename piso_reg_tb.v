module tb_piso_register;

    reg clk;
    reg load;
    reg [3:0] pin;
    wire sout;

    piso_register uut (
        .clk(clk),
        .load(load),
        .pin(pin),
        .sout(sout)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        load = 0;
        pin = 0;

        #10 load = 1; pin = 4'b1011;
        #10 load = 0;
        
        #40 
        $finish;
    end

endmodule