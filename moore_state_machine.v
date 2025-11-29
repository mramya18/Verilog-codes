module moore_fsm (
    input clk,
    input rst,
    input i,
    output reg y
);
    parameter A=3'b000, B=3'b001, C=3'b010, D=3'b011, E=3'b100, F=3'b101;
    reg [2:0] PS, NS;

    always @(posedge clk or posedge rst)
        PS <= rst ? A : NS;

    always @(*) begin
        case(PS)
            A: NS = i ? B : A;
            B: NS = i ? B : C;
            C: NS = i ? D : A;
            D: NS = i ? E : C;
            E: NS = i ? B : F;
            F: NS = i ? B : A;
            default: NS = A;
        endcase
    end

    always @(*) begin
        y = (PS==F) ? 1 : 0;
    end

endmodule
