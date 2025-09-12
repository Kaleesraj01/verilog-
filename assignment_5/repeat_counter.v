module repeat_counter;
reg clk;
reg [3:0] count;
initial clk=0;
always #5 clk=~clk;
initial begin
$monitor("Time=%0t,count=%0d",$time,count);
count=0;
repeat(8) begin
@(posedge clk);
count=count+1;
end
$finish;
end
endmodule

