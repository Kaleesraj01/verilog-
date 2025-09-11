module block_ff(input clk, d , output reg q);
always begin
@(posedge clk);
 q=d ;
end endmodule  
