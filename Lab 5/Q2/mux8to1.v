module mux8to1(s,i,f);
	input [7:0]i;
	input [2:0]s;
	output reg f;
	always @(*)
		f = i[s];
endmodule
