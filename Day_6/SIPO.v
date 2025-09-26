module SIPO(input clk , rst , d ,output reg [3:0]q);

always @(posedge clk) begin
if (rst)
q<=4'b000;
else

q <= {d,q[3:1]};
end
endmodule
