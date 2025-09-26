module T_ff( input clk, rst, t, output reg q);
always @(negedge clk or posedge rst) begin
if(rst)
q<=0;
else if (t)
q<=~q;
else
q<=q;
end
endmodule

module ripplecounter(input clk , rst, output [3:0]q);
T_ff T0 ( .clk(clk), .rst(rst) , .t(1'b1), .q(q[0]));
T_ff T1 (.clk(q[0]), .rst(rst) , .t(1'b1), .q(q[1]));
T_ff T2 (.clk(q[1]), .rst(rst) , .t(1'b1), .q(q[2]));
T_ff T3 (.clk(q[2]), .rst(rst) , .t(1'b1), .q(q[3]));
endmodule
