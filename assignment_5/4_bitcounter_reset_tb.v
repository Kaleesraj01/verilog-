module tb_counter_4bit_sync;
reg clk;
reg reset;
wire [3:0] count;
counter_4bit_sync uut(.clk(clk),.reset(reset),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin 
	 
$monitor ("time=%0t clk=%b reset=%b count=%b" , $time , clk , reset , count );

$dumpfile("counter_4bit_sync.vcd");

$dumpvars(0,tb_counter_4bit_sync);
reset=1;
#10;
reset=0;
#100;
reset=1;
#10;
reset=0;
#50;
$finish;
end
endmodule

