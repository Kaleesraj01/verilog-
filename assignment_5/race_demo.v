module race_demo;
reg clk;
reg d , q;
initial begin
$monitor("time=%0t clk=%0b d=%0b q=%0b",$time,clk,d,q);
$dumpfile("race.vcd"); 
$dumpvars();
clk = 0;
d=0;
#5 d=1;
#6 d=0;
#10  $finish;  end 
always  #5clk=~clk;
always @(posedge clk) q=d;
always @(posedge clk) q=~d;
endmodule
