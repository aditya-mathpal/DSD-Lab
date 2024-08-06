module Lab2a(a,b,c,d,f);
	input a, b, c, d;
	output f;
	assign f = (c|d)&(b|c)&(~a|~b|~c|~d);
endmodule
