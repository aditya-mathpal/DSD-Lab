`timescale 1ns/1ns
`include "Q3.v"
module Q3_tb();
    reg [3:0]in;
    wire [1:0]out;
    wire valid;
    integer i;
    Q3 func(in, out, valid);
    initial
    begin
        $dumpfile("Q3_tb.vcd");
        $dumpvars(0, Q3_tb);
        for (i = 0; i < 16; i = i + 1) begin
            in = i; #10;
        end
        $display("Test complete");
    end
endmodule
