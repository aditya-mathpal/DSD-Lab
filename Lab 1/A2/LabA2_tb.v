`timescale 1ns/1ns
`include "LabA2.v"

module LabA2_tb();
reg x1, x2, x3, x4;
wire f;
integer i;
LabA2 func(x1,x2,x3,x4,f);
initial
begin
	$dumpfile("LabA2_tb.vcd");
	$dumpvars(0,LabA2_tb);
	for(i=0;i<16;i=i+1) begin
		{x1, x2, x3, x4} = i;#20;
	end
	$display("Test complete");
end
endmodule
