`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb();
	reg [1:0]w;
	reg En;
	wire [3:0]f;
	integer i;
	Q1 func(w,f,En);
	initial
	begin
		$dumpfile("Q1_tb.vcd");
		$dumpvars(0,Q1_tb);
		for(i=0;i<8;i++) begin
			{En,w} = i;#20;
		end
		$display("test complete");
	end
endmodule
