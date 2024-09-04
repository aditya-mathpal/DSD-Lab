module Q2(T,Clk,Reset,Q);
    input T,Clk,Reset;
    output reg Q;
    always @(negedge Clk)
        if(!Reset) if(T) Q = ~Q;
        else Q = 0;
endmodule
