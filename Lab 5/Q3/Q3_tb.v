`timescale 1ns/1ns
`include "Q3.v"

module Q3_tb();
    reg a, b, c, d;
    wire f;
    integer i;
    Q3 func(a,b,c,d,f);
    initial begin
        $dumpfile("Q3_tb.vcd");
        $dumpvars(0,Q3_tb);
        for(i=0;i<16;i=i+1) begin
            {a,b,c,d} = i;#10;
        end
        $display("Test Complete");
    end
endmodule
