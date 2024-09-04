module Q1(D,Clk,Reset,Q);
    input D, Clk, Reset;
    output reg Q;
    always @(posedge Clk)
        if(Reset) Q = D;
        else Q = 0;
endmodule
