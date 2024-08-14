module Q2(i0,i1,i2,i3,i4,i5,i6,i7,s,f);
	input i0,i1,i2,i3,i4,i5,i6,i7;
	input [2:0]s;
	output f;
	reg f;
	always @(*) begin
		case(s)
			3'b000: f = i0;
			3'b001: f = i1;
			3'b010: f = i2;
			3'b011: f = i3;
			3'b100: f = i4;
			3'b101: f = i5;
			3'b110: f = i6;
			3'b111: f = i7;
			default: f = 1'b0;
		endcase
	end
endmodule
