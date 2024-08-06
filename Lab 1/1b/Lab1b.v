module Lab1b(a,b,c,d,f);
	input a, b, c, d;
	output f;
	assign f = (~a&~d)|(b&~d)|(c&~d)|(~a&b&c);
endmodule
