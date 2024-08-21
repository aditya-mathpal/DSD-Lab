`timescale 1ns/1ns
`include "Solved.v"
module Solved_tb();
	reg [1:0]w;
	reg En;
	wire [0:3]f;
	integer i;
	Solved func(w,f,En);
	initial
	begin
		$dumpfile("Solved_tb.vcd");
		$dumpvars(0,Solved_tb);
		for(i=0;i<8;i++) begin
			{En,w} = i;#20;
		end
		$display("test complete");
	end
endmodule
