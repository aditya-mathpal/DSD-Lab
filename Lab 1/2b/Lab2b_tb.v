`timescale 1ns/1ns
`include "Lab2b.v"

module Lab2b_tb();
reg a, b, c, d;
wire f;
integer i;
Lab2b func(a, b, c, d, f);
initial
begin
	$dumpfile("Lab2b_tb.vcd");
	$dumpvars(0,Lab2b_tb);
	for(i=0;i<16;i=i+1) begin
		{a, b, c, d} = i;#20;
	end
	$display("Test complete");
end
endmodule
