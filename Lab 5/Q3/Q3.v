`include "dec4to16.v"
module Q3(a,b,c,d,f);
    input a,b,c,d;
    output [15:0]o;
    output f;
    dec4to16 func(
        .In({a,b,c,d}),
        .Out(o),
        .En(1'b1)
    );
    assign f = (o[2] | o[3] | o[4] | o[5] | o[6] | o[7] | o[10] | o[11] | o[12] | o[15]);
endmodule
