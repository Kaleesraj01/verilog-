module tb_mealy_10101;
reg clk, rst, din;
wire dout;
mealy_10101 dut (.clk(clk), .rst(rst), .din(din), .dout(dout));

always @ (posedge clk )
$display("Time=%0t clk=%b rst=%b din=%b dout=%b", $time, clk, rst, din, dout);

initial clk = 0;
always #5 clk = ~clk;
initial begin
rst = 1; din = 0;
#10 rst = 0;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#10 din = 0;

#20 $finish;
end
endmodule
