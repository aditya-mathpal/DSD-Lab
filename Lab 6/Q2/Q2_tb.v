`timescale 1ns/1ns
`include "Q2.v"

module Q2_tb();
    reg T,Clk,Reset;
    wire Q;
    
    Q2 func(T,Clk,Reset,Q);
    initial begin
        $dumpfile("Q2_tb.vcd");
        $dumpvars(0,Q2_tb);
        Reset = 0;
        Clk = 0;
        forever #10 Clk = ~Clk;
    end
    initial begin
        while(1) begin
            T = 1; #30;
            T = 0; #30;
        end
        $display("Test Complete");
    end
endmodule
