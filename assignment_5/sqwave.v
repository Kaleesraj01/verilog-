module sqwave;
reg clk;
initial begin
$monitor("time=%0t clk=%0b " , $time , clk );
$dumpfile("sq.vcd");
$dumpvars();
clk =0;
forever #5 clk=~clk;
#50 $finish;
end endmodule
