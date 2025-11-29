module moore_overlapping(input clk, rst, input i, output reg y);

    // State declarations
    parameter A = 3'b000;
    parameter B = 3'b001;
    parameter C = 3'b010;
    parameter D = 3'b011;
    parameter E = 3'b100;
    parameter F = 3'b101;

    reg [2:0] ps, ns;

    // Sequential block
    always @(posedge clk or posedge rst)
    begin
        if (rst)
            ps <= A;
        else
            ps <= ns;
    end

    // Combinational block for next state logic
    always @(*) begin
        ns = A;   // default

        case (ps)

            A: begin
                if (i)
                    ns = B;
                else
                    ns = A;
            end

            B: begin
                if (i)
                    ns = B;
                else
                    ns = C;
            end

            C: begin
                if (i)
                    ns = D;
                else
                    ns = A;
            end

            D: begin
                if (i)
                    ns = E;
                else
                    ns = C;
            end

            E: begin
                if (i)
                    ns = B;
                else
                    ns = F;
            end

            F: begin
                if (i)
                    ns = B;
                else
                    ns = A;
            end

        endcase
    end

    // Combinational block for output
    always @(*) begin
        case (ps)
            A: y = 0;
            B: y = 0;
            C: y = 0;
            D: y = 0;
            E: y = 0;
            F: y = 1;     // Output = 1 only in FINAL state
            default: y = 0;
        endcase
    end

endmodule
