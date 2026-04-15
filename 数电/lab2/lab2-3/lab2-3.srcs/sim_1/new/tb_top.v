`timescale 1ns / 1ps
module tb_top;

    reg [15:0] sw;
    reg btnC, btnU, btnL, btnD, btnR;
    reg clk;
    wire [6:0] seg;
    wire [3:0] an;

    // 实例化被测单元
    top uut (
        .sw(sw), .btnC(btnC), .btnU(btnU), .btnL(btnL),
        .btnD(btnD), .btnR(btnR), .clk(clk),
        .seg(seg), .an(an)
    );

    // 生成 100MHz 时钟 (周期 10ns)
    initial clk = 0;
    always #5 clk = ~clk; 

    initial begin
        // 1. 初始化
        sw = 16'h1234; // 给开关一个固定的测试值：1, 2, 3, 4
        btnC = 1; btnU = 0; btnL = 0; btnD = 0; btnR = 0;
        #20;
        btnC = 0; // 释放复位
        
        // 等待一段时间，让系统稳定
        #10000; 

        // 2. 测试 btnU (应选中第0位，显示 sw[3:0] = 4)
        $display("Testing btnU");
        btnU = 1;
        #50000; // 运行 50us (仿真中足够看到变化)
        btnU = 0;
        
        // 3. 测试 btnL (应选中第1位，显示 sw[7:4] = 3)
        $display("Testing btnL");
        btnL = 1;
        #50000;
        btnL = 0;

        // 4. 测试 btnD (应选中第2位，显示 sw[11:8] = 2)
        $display("Testing btnD");
        btnD = 1;
        #50000;
        btnD = 0;

        // 5. 测试 btnR (应选中第3位，显示 sw[15:12] = 1)
        $display("Testing btnR");
        btnR = 1;
        #50000;
        btnR = 0;

        // 结束仿真
        $finish;
    end

endmodule