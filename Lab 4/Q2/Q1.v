module Q1(W, Y, En);
	input [1:0] W;
	input En;
	output reg [3:0] Y;
	integer k;
	always @(W or En)
		for (k = 0; k <= 3; k = k+1)
			if ((W == k) && (En == 1)) //updated En condition for Q2
				Y[k] = 1;
			else
				Y[k] = 0;
endmodule
