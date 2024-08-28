module Q1(A,B,C,D,i,s0,s1,f);
	input A,B,C,D;
	output s0,s1;
	output reg [3:0]i;
	output reg f;
	assign s1 = A;
	assign s0 = B;	
	always @(*) begin
		i[0] = ~(C&D);
		i[1] = ~D;
		i[2] = ~C&D;
		i[3] = ~D;
		if(s1==0 && s0==0) begin
			f = i[0]; end
		else if(s1==0 && s0==1) begin
			f = i[1]; end
		else if(s1==1 && s0==0) begin
			f = i[2]; end
		else if(s1==1 && s0==1) begin
			f = i[3]; end
	end
endmodule
