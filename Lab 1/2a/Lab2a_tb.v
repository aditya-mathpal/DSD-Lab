`timescale 1ns/1ns
`include "Lab2a.v"

module Lab2a_tb();
reg a, b, c, d;
wire f;
integer i;
Lab2a func(a, b, c, d, f);
initial
begin
	$dumpfile("Lab2a_tb.vcd");
	$dumpvars(0,Lab2a_tb);
	for(i=0;i<16;i=i+1) begin
		{a, b, c, d} = i;#20;
	end
	$display("Test complete");
end
endmodule




















