`timescale 1ns / 1ps

module top(
    input wire [3:0] sw,      // Basys3 板子上的 16 个拨码开关
    output wire [6:0] seg,     // 七段数码管的 a-g 段
    output wire [3:0] an 
);

    // 实例化你的 hex_to_7seg 模块
    // 我们只用开关的低 4 位 (sw[3:0]) 来控制显示
    hex_to_7seg u0 (
        .hex(sw),
        .seg(seg)
    );
    assign an = 4'b0000;
endmodule
