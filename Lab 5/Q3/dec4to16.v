module dec4to16(In, Out, En);
	input [3:0] In;
	input En;
	output reg [15:0] Out;
	integer k;
	always @(*)
		for (k = 0; k < 16; k = k+1)
			if ((In == k) && (En == 1))
				Out[k] = 1;
			else
				Out[k] = 0;
endmodule
