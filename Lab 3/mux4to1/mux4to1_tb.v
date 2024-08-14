`timescale 1ns/1ns
`include "mux4to1.v"
module mux4to1_tb();
reg x1,x2,x3,x4,s1,s2;
wire f;
integer i;
mux4to1 func(x1,x2,x3,x4,s1,s2,f);
initial
begin
	$dumpfile("mux4to1_tb.vcd");
	$dumpvars(0,mux4to1_tb);
	for(i=0;i<64;i=i+1) begin
		{s1,s2,x1,x2,x3,x4} = i;#20;
	end
	$display("test complete");
end
endmodule
