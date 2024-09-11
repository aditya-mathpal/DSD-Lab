`include "dffp.v"

module Q1(In,Clk,Out);
    input [5:0]In;
    input Clk;
    output [5:0]Out;
    dffp f1(In[5],Clk,Out[5]);
    dffp f2(In[4],Clk,Out[4]);
    dffp f3(In[3],Clk,Out[3]);
    dffp f4(In[2],Clk,Out[2]);
    dffp f5(In[1],Clk,Out[1]);
    dffp f6(In[0],Clk,Out[0]);
endmodule
