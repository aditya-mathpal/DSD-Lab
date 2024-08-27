`timescale 1ns/1ns
`include "Q4.v"
module Q4_tb();
    reg [15:0]in;
    wire [3:0]out;
    wire valid;
    integer i;
    Q4 func(in, out, valid);
    initial
    begin
        $dumpfile("Q4_tb.vcd");
        $dumpvars(0, Q4_tb);
        for (i = 0; i < 65536; i = i + 1) begin
            in = i; #10;
        end
        $display("Test complete");
    end
endmodule
