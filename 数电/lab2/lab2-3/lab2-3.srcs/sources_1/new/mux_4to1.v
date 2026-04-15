module mux_4to1(
    input [3:0] d0, d1, d2, d3,
    input [1:0] sel,
    output reg [3:0] y
);
    always @(*) begin
        case(sel)
            2'd0: y = d0;
            2'd1: y = d1;
            2'd2: y = d2;
            2'd3: y = d3;
            default: y = d0;
        endcase
    end
endmodule