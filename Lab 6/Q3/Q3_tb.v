`timescale 1ns/1ns
`include "Q3.v"

module Q3_tb();
    reg J,K,Clk,Reset;
    wire Q;
    integer i;
    
    Q3 func(J,K,Clk,Reset,Q);
    initial begin
        $dumpfile("Q3_tb.vcd");
        $dumpvars(0,Q3_tb);
        Reset = 1;
        Clk = 0;
        forever #10 Clk = ~Clk;
    end
    initial begin
        while(1)
            for(i=0;i<4;i=i+1) begin
                {J,K} = i;#20;
            end
        $display("Test Complete");
    end
endmodule
