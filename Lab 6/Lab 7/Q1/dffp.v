module dffp(D,Clk,Q);
    input D, Clk, Reset;
    output reg Q;
    always @(posedge Clk)
        Q = D;
endmodule
