module Q3(
    input clk, reset, shift, load,
    input [3:0]pdata,
    output reg [3:0]out
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 4'b0000;
        end
        else begin
            case ({shift, load})
                2'b00: out <= {out[2:0], 1'b0};
                2'b01: out <= pdata;
                2'b10: out <= ~out;
                default: out <= out;
            endcase
        end
    end
endmodule