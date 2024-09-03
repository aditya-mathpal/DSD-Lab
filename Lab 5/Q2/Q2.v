`include "mux8to1.v"
module Q2(g,b);
	input [3:0]g;
	output [3:0]b;
	assign b[3] = g[3];
    mux8to1 func(
        .s({g[2],1'b0,1'b0}),
        .i({{4{~b[3]}},{4{b[3]}}}),
        .f(b[2])
    );
    mux8to1 func2(
        .s({g[1],1'b0,1'b0}),
        .i({{4{~b[2]}},{4{b[2]}}}),
        .f(b[1])
    );
    mux8to1 func3(
        .s({g[0],1'b0,1'b0}),
        .i({{4{~b[1]}},{4{b[1]}}}),
        .f(b[0])
    );
endmodule
