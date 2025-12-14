module tb_moore_10110;
reg clk,rst,din;
wire dout;
moore10110 uut(.clk(clk),.rst(rst),.din(din),.dout(dout));

initial clk=0;
always #5 clk=~clk;

initial begin
rst=1; din=0; #10;
rst=0;
din=1; #10; 
din=0; #10; 
din=1; #10; 
din=1; #10; 
din=0; #10; 
din=1; #10; 

din=0; #10; 
din=1; #10;
din=1; #10; 
din=0; #10; 
din=0; #10;
$finish;


initial
  begin,
$monitor("Time=%0t din=%b dout=%b",$time,din,dout);
$dumpfile("raj.vcd");
$dumpvars();
end
endmodule
