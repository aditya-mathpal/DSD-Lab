`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb();
reg i0,i1,i2,i3,s0,s1;
wire f;
integer i;
Q1 func(i0,i1,i2,i3,s0,s1,f);
initial
begin
	$dumpfile("Q1_tb.vcd");
	$dumpvars(0,Q1_tb);
	for(i=0;i<64;i=i+1) begin
		{s1,s0,i3,i2,i1,i0} = i;#20;
	end
	$display("test complete");
end
endmodule
