`include "Q3.v"
`timescale 1ns/1ns

module Q3_tb();
    reg clk, reset, shift, load;
    reg [3:0]pdata;
    wire [3:0]out;

    Q3 func(clk,reset,shift,load,pdata,out);

    initial begin
        $dumpfile("Q3_tb.vcd");
        $dumpvars(0,Q3_tb);
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        shift = 0;
        load = 0;
        pdata = 4'b1010;

        // Deactivate reset
        # 10 reset = 0;

        // Complement
        #10 shift = 1; load = 0;

        // Shift left
        #10 shift = 0; load = 0;

        // Load parallel data
        #10 shift = 0; load = 1;

        // No change
        #10 shift = 1; load = 1;

        $display("Test Complete");
        #10 $finish;
    end
endmodule
