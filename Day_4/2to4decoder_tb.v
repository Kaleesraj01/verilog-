module decoder_2x4_tb;
reg en;
reg [1:0]a;
wire [3:0]y;

decoder2to4 dut(a,en,y);

initial begin

$monitor("en=%b a=%b | y=%b",en,a,y);
$dumpfile("decoder.vcd");
$dumpvars();

en=0;a=2'b00;#10
en=0;a=2'b01;#10
en=0;a=2'b10;#10
en=0;a=2'b11;#10


en=1;a=2'b00;#10
en=1;a=2'b01;#10
en=1;a=2'b10;#10
en=1;a=2'b11;#10
$finish;

end
endmodule
