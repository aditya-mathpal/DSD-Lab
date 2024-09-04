`timescale 1ns/1ns
`include "Q4.v"

module Q4_tb();
    reg S,R,Clk,Reset;
    wire Q;
    integer i;
    
    Q4 func(S,R,Clk,Reset,Q);
    initial begin
        $dumpfile("Q4_tb.vcd");
        $dumpvars(0,Q4_tb);
        Reset = 0;
        Clk = 0;
        forever #10 Clk = ~Clk;
    end
    initial begin
        while(1)
            for(i=0;i<4;i=i+1) begin
                {S,R} = i;#20;
            end
        $display("Test Complete");
    end
endmodule
