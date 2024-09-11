`timescale 1ns/1ns
`include "Q1.v"

module Q1_tb();
    reg [5:0]In;
    reg Clk;
    wire [5:0]Out;
    integer i;
    Q1 func(In,Clk,Out);
    initial begin
        $dumpfile("Q1_tb.vcd");
        $dumpvars(0,Q1_tb);
        Clk = 0;
        forever #5 Clk = ~Clk;
    end
    initial begin
        for(i=0;i<3;i=i+1) begin
            In = 32; #10;
            In = 24; #10;
        end
        $display("Test Complete");
    end
endmodule
