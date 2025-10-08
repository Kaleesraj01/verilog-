module tb_mealy_1101;
reg clk,rst,din;
wire dout;
mealy_1101 dut(.clk(clk),.rst(rst),.din(din),.dout(dout));
always #5 clk = ~clk;
  
always @(posedge clk )
	$display("time=%t , clk=%d , rst=%b , din=%b , dout=%b ",$time,clk,rst,din,dout);
initial begin


$dumpfile("raj.vcd");
$dumpvars();
clk=0; rst=1; din=0; #10;
rst=0;
din=1; #10;
din=1; #10;
din=0; #10;
din=1; #10;
din=1; #10;
din=0; #10;
din=0; #10;
din=1; #10;
#20;
$finish;
end
endmodule

