`timescale 1ns / 1ps
module decoder_2to4(
    input [1:0] sel,
    output reg [3:0] y
);
    always @(*) begin
        case(sel)
            2'd0: y = 4'b1110; // 选中第0个 (an0=0)
            2'd1: y = 4'b1101; // 选中第1个 (an1=0)
            2'd2: y = 4'b1011; // 选中第2个 (an2=0)
            2'd3: y = 4'b0111; // 选中第3个 (an3=0)
            default: y = 4'b1111; // 全灭 (如果sel异常)
        endcase
    end
endmodule
