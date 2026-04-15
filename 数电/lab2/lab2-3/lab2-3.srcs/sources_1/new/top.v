`timescale 1ns / 1ps
module top(
    input [15:0] sw,
    input btnC,      
    input btnU,      // 对应第0位
    input btnL,      // 对应第1位
    input btnD,      // 对应第2位
    input btnR,      // 对应第3位
    input clk,       
    output [6:0] seg,
    output [3:0] an
);

    wire [1:0] enc_out; 
    wire [3:0] mux_out; // 选出来的数据

    priority_encoder_4to2 u_encoder (
        .in_0(btnU),
        .in_1(btnL),
        .in_2(btnD),
        .in_3(btnR),
        .sel(enc_out)
    );

    // -------------------------------------------------
    // 2. 数据选择器 (根据 enc_out 选择哪组开关数据)
    // -------------------------------------------------
    mux_4to1 u_mux (
        .d0(sw[3:0]),
        .d1(sw[7:4]),
        .d2(sw[11:8]),
        .d3(sw[15:12]),
        .sel(enc_out),
        .y(mux_out)
    );

    decoder_2to4 u_decoder_an (
        .sel(enc_out),
        .y(an) 
    );

    hex_to_7seg u_decoder_seg (
        .hex(mux_out),
        .seg(seg)
    );

endmodule