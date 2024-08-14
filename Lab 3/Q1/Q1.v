module Q1(i0,i1,i2,i3,s0,s1,f);
	input i0,i1,i2,i3,s0,s1;
	output f;
	reg f;
	always @(i0 or i1 or i2 or i3 or s0 or s1) begin
		if(s1==0 && s0==0) begin
			f = i0; end
		else if(s1==0 && s0==1) begin
			f = i1; end
		else if(s1==1 && s0==0) begin
			f = i2; end
		else if(s1==1 && s0==1) begin
			f = i3; end
	end
endmodule
