module demux8to1_tb;
reg i,e;
reg [2:0] sel;
wire [7:0] y;
demux1_8 dut(.i(i),.e(e),.sel(sel),.y(y));
initial begin
$dumpfile("demux8to1.vcd");
$dumpvars(0,demux8to1_tb);
$monitor("time=%0t e=%b i=%b sel=%b | y=%b",$time,e,i,sel,y);
e=1;i=1;sel=3'b000;#10;
sel=3'b001;#10;
sel=3'b010;#10;
sel=3'b011;#10;
sel=3'b100;#10;
e=0;i=1;sel=3'b010;#10;
e=1;i=0;sel=3'b101;#10;
$finish;
end
endmodule

