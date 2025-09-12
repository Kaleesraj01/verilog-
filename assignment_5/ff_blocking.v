module ff_blocking;
reg clk;
reg [3:0]a,b;
initial clk=0;
always #5 clk=~clk;
always @(posedge clk)begin
a=b;
b=a;
end
initial begin
a=1;b=2;
$dumpfile("ff_blocking.vcd");
$dumpvars(0,ff_blocking);
$monitor("time=%0t clk=%0b a=%0d b=%0d",$time,clk,a,b);
#40 $finish;
end
endmodule

