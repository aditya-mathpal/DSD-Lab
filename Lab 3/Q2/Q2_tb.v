`timescale 1ns/1ns
`include "Q2.v"
module Q2_tb();
reg x1,x2,x3,x4,x5,x6,x7,x8;
reg [2:0]s;
wire f;
integer i;
Q2 func(x1,x2,x3,x4,x5,x6,x7,x8,s,f);
initial
begin
	$dumpfile("Q2_tb.vcd");
	$dumpvars(0,Q2_tb);
	for(i=0;i<2048;i=i+1) begin
		{s,x1,x2,x3,x4,x5,x6,x7,x8} = i;#10;
	end
	$display("test complete");
end
endmodule
