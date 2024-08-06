module LabA1a(a,b,c,d,f);
	input a, b, c, d;
	output f;
	assign f = (a&~c)|(b&c)|(~b&~c);
endmodule
