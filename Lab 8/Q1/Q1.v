module Q1(
    input clk, reset, x,
    output reg out
);

    parameter a = 3'b000;
    parameter b = 3'b001;
    parameter d = 3'b010;
    parameter f = 3'b011;
    parameter g = 3'b100;

    reg [2:0] currentState, J, K;

    always @(*) begin
        case (currentState)
            
        endcase
    end

    jkff func(J[0], K[0], clk, reset, currentState[0]);
    jkff func1(J[1], K[1], clk, reset, currentState[1]);
    jkff func2(J[2], K[2], clk, reset, currentState[2]);
endmodule
