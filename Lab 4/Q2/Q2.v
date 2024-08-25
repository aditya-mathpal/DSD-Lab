`include "Q1.v"
module Q2(
    input [3:0] W,
    input En,
    output [15:0] Y,
    output [3:0] x
    );
	integer k;
	Q1 func(
	    .W(W[3:2]),
	    .Y(x),
	    .En(En)
	);
	Q1 d3(
        .W(W[1:0]),
        .Y(Y[15:12]),
        .En(x[3])
    );
	Q1 d2(
        .W(W[1:0]),
        .Y(Y[11:8]),
        .En(x[2])
    );
    Q1 d1(
        .W(W[1:0]),
        .Y(Y[7:4]),
        .En(x[1])
    );
    Q1 d0(
        .W(W[1:0]),
        .Y(Y[3:0]),
        .En(x[0])
    );
endmodule
