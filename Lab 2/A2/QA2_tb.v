`timescale 1ns/1ns
`include "QA2.v"
module QA2_tb();
reg a,b,ci;
wire co,s,land,lnand,lnor,lor,lxor,lxnor;
integer i;
QA2 func(a,b,ci,co,s,land,lnand,lnor,lor,lxor,lxnor);
initial
begin
	$dumpfile("QA2_tb.vcd");
	$dumpvars(0,QA2_tb);
	for(i=0;i<8;i=i+1) begin
		{a,b,ci} = i;#10;
	end
	$display("Test complete");
end
endmodule
