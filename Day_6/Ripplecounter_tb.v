module tb_ripplecounter;
reg clk,rst;
wire [3:0] q;
ripplecounter uut(.clk(clk),.rst(rst),.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);
$dumpfile("ripple.vcd");
$dumpvars ();

rst=1;
#10 rst=0;
#160 rst=1;
#10 rst=0;
#100 $finish;
end
endmodule
