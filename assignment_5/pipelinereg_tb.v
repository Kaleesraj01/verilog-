module pipelinereg_tb; 
reg clk , rst ;
reg [3:0] datain ;
wire [3:0] stage1, stage2, stage3 ;
pipeline uut (.clk(clk) , .rst(rst), .datain(datain), .stage1(stage1), .stage2(stage2), .stage3(stage3)); 
initial begin
$monitor ("time=%0t clk=%b rst=%b datain=%b stage1=%b stage2=%b stage3=%b ",$time , clk, rst,datain , stage1,stage2,stage3);
 clk =0 ; rst = 1; datain = 0; #10;
    rst = 0;

    datain = 4'b0001; #10;
    datain = 4'b0010; #10;
    datain = 4'b0011; #10;
    datain = 4'b0100; #10;
    $finish;
end
always #5 clk = ~clk;
endmodule
