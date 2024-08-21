`include "dec2to4.v"
module Q2(
    input [3:0] W,
    input En,
    output [15:0] Y,
    output [3:0] x
    );
	wire [3:0] x;
	integer k;
	dec2to4 func(
	    .W(W[3:2]),
	    .Y(x),
	    .En(En)
	);
	dec2to4 d3(
        .W(W[1:0]),
        .Y(Y[15:12]),
        .En(x[3])
    );
	dec2to4 d2(
        .W(W[1:0]),
        .Y(Y[11:8]),
        .En(x[2])
    );
    dec2to4 d1(
        .W(W[1:0]),
        .Y(Y[7:4]),
        .En(x[1])
    );
    dec2to4 d0(
        .W(W[1:0]),
        .Y(Y[3:0]),
        .En(x[0])
    );
endmodule
