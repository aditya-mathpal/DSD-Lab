`timescale 1ns/1ns
`include "Lab1b.v"

module Lab1b_tb();
reg a, b, c, d;
wire f;
integer i;
Lab1b func(a, b, c, d, f);
initial
begin
	$dumpfile("Lab1b_tb.vcd");
	$dumpvars(0,Lab1b_tb);
	for(i=0;i<16;i=i+1) begin
		{a, b, c, d} = i;#20;
	end
	$display("Test complete");
end
endmodule




















