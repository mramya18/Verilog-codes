module xor_using_mux_tb;

    reg a, b;
    wire y;

    xor_using_mux dut (.a(a), .b(b), .y(y));

    initial begin

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule
