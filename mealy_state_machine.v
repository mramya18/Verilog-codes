module mealy_short (
    input clk,
    input rst,
    input i,
    output reg y
);//we are writing the code using ternary operator
    parameter A=3'b000, B=3'b001, C=3'b010, D=3'b011, E=3'b100;
    reg [2:0] PS, NS;

    always @(posedge clk or posedge rst)
        PS <= rst ? A : NS;

    always @(*) begin
        y = 0;
        case(PS)
            A: NS = i ? B : A;
            B: NS = i ? B : C;
            C: NS = i ? D : A;
            D: NS = i ? E : C;
            E: begin
                NS = i ? B : A;
                if (!i) y = 1;  
            end
            default: NS = A;
        endcase
    end

endmodule
