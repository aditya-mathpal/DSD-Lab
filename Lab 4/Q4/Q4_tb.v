module Q4 (
    input  [15:0] in,
    output reg [3:0] out,
    output reg valid
);
    integer i;
    
    always @(*) begin
        valid = 1'b0;
        out = 4'b0000;
        for (i = 15; i >= 0; i = i - 1) begin
            if (in[i] == 1'b1) begin
                out = i;
                valid = 1'b1;
                break;
            end
        end
    end
endmodule
