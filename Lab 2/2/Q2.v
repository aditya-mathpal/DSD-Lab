module Q2(a,b,ci,co,s);
	input a,b,ci;
	output co,s;
	assign co = (a&b)|(a&ci)|(b&ci);
	assign s = a^b^ci;
endmodule
