module foreverloop_disable;
reg clk;
integer count;
initial clk=0;
always #5 clk=~clk;
initial begin : loop_block
count=0;
#50 disable loop_block;
forever begin
@(posedge clk);
count=count+1;
$monitor("Time=%0t, clk=%b, count=%0d",$time,clk,count); 
end
$finish;
end
endmodule

