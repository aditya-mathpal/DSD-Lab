`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb();
reg a,b,c,d;
wire f;
integer i;
Q1 func(a,b,c,d,f);
initial
begin
	$dumpfile("Q1_tb.vcd");
	$dumpvars(0,Q1_tb);
	for(i=0;i<16;i=i+1) begin
		{a,b,c,d} = i;#20;
	end
	$display("Test complete");
end
endmodule
