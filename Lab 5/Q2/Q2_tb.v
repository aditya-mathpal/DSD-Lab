`include "Q2.v"
`timescale 1ns/1ns

module Q2_tb();
    reg [3:0]g;
    wire [3:0]b;
    integer i;
    Q2 func(g,b);
    initial begin
        $dumpfile("Q2_tb.vcd");
        $dumpvars(0,Q2_tb);
        for(i=0;i<32;i=i+1) begin
            g = i;#10;
        end
        $display("Test Complete");
    end
endmodule
