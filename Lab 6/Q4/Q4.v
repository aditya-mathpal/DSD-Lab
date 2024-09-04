module Q4(S,R,Clk,Reset,Q);
    input S,R,Clk,Reset;
    output reg Q;
    always @(negedge Clk or negedge Reset)
        if(!Reset)
            if(S^R) Q = S;
endmodule
