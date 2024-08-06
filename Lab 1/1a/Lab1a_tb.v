`timescale 1ns/1ns
`include "Lab1a.v"

module Lab1a_tb();
reg a, b, c, d;
wire f;
integer i;
Lab1a func(a, b, c, d, f);
initial
begin
	$dumpfile("Lab1a_tb.vcd");
	$dumpvars(0,Lab1a_tb);
	/*a=1'b0;b=1'b0;c=1'b0;d=1'b0;#20;
	a=1'b0;b=1'b0;c=1'b0;d=1'b1;#20;
	a=1'b0;b=1'b0;c=1'b1;d=1'b0;#20;
	a=1'b0;b=1'b0;c=1'b1;d=1'b1;#20;
	a=1'b0;b=1'b1;c=1'b0;d=1'b0;#20;
	a=1'b0;b=1'b1;c=1'b0;d=1'b1;#20;
	a=1'b0;b=1'b1;c=1'b1;d=1'b0;#20;
	a=1'b0;b=1'b1;c=1'b1;d=1'b1;#20;
	a=1'b1;b=1'b0;c=1'b0;d=1'b0;#20;
	a=1'b1;b=1'b0;c=1'b0;d=1'b1;#20;
	a=1'b1;b=1'b0;c=1'b1;d=1'b0;#20;
	a=1'b1;b=1'b0;c=1'b1;d=1'b1;#20;
	a=1'b1;b=1'b1;c=1'b0;d=1'b0;#20;
	a=1'b1;b=1'b1;c=1'b0;d=1'b1;#20;
	a=1'b1;b=1'b1;c=1'b1;d=1'b0;#20;
	a=1'b1;b=1'b1;c=1'b1;d=1'b1;#20;*/
	for(i=0;i<16;i=i+1) begin
		{a, b, c, d} = i;#20;
	end
	$display("Test complete");
end
endmodule




















