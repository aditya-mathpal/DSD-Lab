`timescale 1ns/1ns
`include "Q2.v"
module Q2_tb();
	reg [3:0]w;
	reg En;
	wire [15:0]f;
	wire [3:0]x;
	integer i;
	Q2 func(w,En,f,x);
	initial
	begin
		$dumpfile("Q2_tb.vcd");
		$dumpvars(0,Q2_tb);
		for(i=0;i<32;i=i+1) begin
			{En,w} = i;#10;
		end
		$display("test complete");
	end
endmodule
