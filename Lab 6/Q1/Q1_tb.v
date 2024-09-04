`timescale 1ns/1ns
`include "Q1.v"

module Q1_tb();
    reg D, Clk, Reset;
    wire Q;
    Q1 func(D,Clk,Reset,Q);
    initial begin
        $dumpfile("Q1_tb.vcd");
        $dumpvars(0,Q1_tb);
        Reset = 1;
        Clk = 0;
        forever #10 Clk = ~Clk;
    end
    initial begin
        while(1) begin
            D = 1; #30;
            D = 0; #30;
        end
        $display("Test Complete");
    end
endmodule
