module pipeline(input clk, rst, input[3:0]datain , output reg [3:0] stage1, stage2, stage3);
always @(posedge clk )begin
 if (rst) begin
stage1 <= 4'b0000;
stage2 <= 4'b0000;
stage3 <= 4'b0000;
end
else begin
stage1 <= datain;
stage2 <= stage1;
stage3 <= stage2;
end
end 
endmodule
