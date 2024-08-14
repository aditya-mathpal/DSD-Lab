`timescale 1ns/1ns
`include "mux2to1.v"
module mux2to1_tb();
reg x1,x2,s;
wire f;
integer i;
mux2to1 func(x1,x2,s,f);
initial
begin
	$dumpfile("mux2to1_tb.vcd");
	$dumpvars(0,mux2to1_tb);
	for(i=0;i<8;i=i+1) begin
		{s,x1,x2} = i;#20;
	end
	$display("test complete");
end
endmodule
