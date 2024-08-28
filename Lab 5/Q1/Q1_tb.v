`include "Q1.v"
`timescale 1ns/1ns
module Q1_tb();
	reg A,B,C,D;
	wire [3:0] i;
	wire s0,s1,f;
	integer k;
	Q1 func(A,B,C,D,i,s0,s1,f);
	initial
	begin
		$dumpfile("Q1_tb.vcd");
		$dumpvars(0,Q1_tb);
		for(k=0;k<16;k++) begin
			{A,B,C,D} = k;#10;
		end
		$display("Test complete");
	end
endmodule

