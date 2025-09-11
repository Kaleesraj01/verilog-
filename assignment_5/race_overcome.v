module race_nonblock;
reg  clk;
reg[3:0] a,b;
initial begin
$monitor("time=%0t , clk=%b , a=%d , b=%d ",$time ,clk , a,b,);
$dumpfile("nonblock.vcd");
$dumpvars();
clk=0 ;
a=2; b=5 ; 
#21 $finish;
end   
always #5 clk=~clk;
always @(posedge clk ) a<=b;
always @(posedge clk) b<=a;
endmodule
