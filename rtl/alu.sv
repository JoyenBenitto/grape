module alu( a, b, aluctr, alu_out, Zero);

    input logic[3:0] aluctr;
    input logic[31:0] a, b;
    output reg[31:0] alu_out;
    output Zero;

    assign Zero = (alu_out==0);
    always@(aluctr, a, b)
        case(aluctr)
            0: alu_out<= a&b;
            1: alu_out<= a|b;
            2: alu_out<= a+b;
            6: alu_out<= a-b;
            7: alu_out<= a < b ? 1:0;
            12: alu_out<= ~(a|b);
            default: alu_out <= 0;
        endcase
endmodule 