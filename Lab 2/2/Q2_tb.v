`timescale 1ns/1ns
`include "Q2.v"
module Q2_tb();
reg a,b,ci;
wire co,s;
integer i;
Q2 func(a,b,ci,co,s);
initial
begin
	$dumpfile("Q2_tb.vcd");
	$dumpvars(0,Q2_tb);
	for(i=0;i<8;i=i+1) begin
		{a,b,ci} = i;#20;
	end
	$display("Test complete");
end
endmodule
