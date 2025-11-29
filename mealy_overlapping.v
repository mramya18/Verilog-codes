module mealy_overlapping (
    input clk,
    input rst,
    input i,
    output reg y
);

    // States
    parameter A = 3'b000;   
    parameter B = 3'b001;
    parameter C = 3'b010;
    parameter D = 3'b011;
    parameter E = 3'b100;

    reg [2:0] PS, NS;

    // Sequential block
    always @(posedge clk or posedge rst) begin
        if (rst)
            PS <= A;
        else
            PS <= NS;
    end

    // Next state logic
    always @(*) begin
        case (PS)
            A: begin
                if (i)
                    NS = B;
                else
                    NS = A;
            end

            B: begin
                if (i)
                    NS = B;
                else
                    NS = C;
            end

            C: begin
                if (i)
                    NS = D;
                else
                    NS = A;
            end

            D: begin
                if (i)
                    NS = E;
                else
                    NS = C;
            end

            E: begin
                if (i)
                    NS = B;   // overlapping sequence
                else
                    NS = A;
            end

            default: NS = A;
        endcase
    end

    // Output logic (depends on current state and input)
    always @(*) begin
        y = 0;  // default

        case (PS)
            E: begin
                if (i == 0)  
                    y = 1;
                else
                    y = 0;
            end
            default: y = 0;
        endcase
    end

endmodule

