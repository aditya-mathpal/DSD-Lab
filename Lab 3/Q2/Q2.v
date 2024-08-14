module Q2(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s3,f);
	input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s3;
	output f;
	reg f;
	always @(i0 or i1 or i2 or i3 or i4 or i5 or i6 or i7 or s0 or s1) begin
		case(
