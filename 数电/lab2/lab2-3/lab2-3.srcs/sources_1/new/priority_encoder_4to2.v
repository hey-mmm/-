`timescale 1ns / 1ps
module priority_encoder_4to2(
    input in_0, input in_1, input in_2, input in_3,
    output reg [1:0] sel
);
    always @(*) begin
        if(in_3) sel = 2'd3;      // 优先级最高
        else if(in_2) sel = 2'd2;
        else if(in_1) sel = 2'd1;
        else if(in_0) sel = 2'd0; // 优先级最低
        else sel = 2'd0;
    end
endmodule
