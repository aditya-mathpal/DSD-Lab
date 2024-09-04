module Q3(J,K,Clk,Reset,Q);
    input J,K,Clk,Reset;
    output reg Q;
    always @(posedge Clk or posedge Reset)
        if(J^K) Q = J;
        else if(J) Q = ~Q;
endmodule
