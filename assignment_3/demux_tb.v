module demux1to4_tb;
reg in;
reg[1:0]sel;
reg en;
wire[3:0]y;
demux1to4 uut(.in(in),.sel(sel),.en(en),.y(y));
initial begin
$monitor("time=%0t in=%b sel=%b en=%b -> y=%b",$time,in,sel,en,y);
en=0;in=1;sel=2'b00;#10;
en=1;in=1;sel=2'b00;#10;
en=1;in=1;sel=2'b01;#10;
en=1;in=1;sel=2'b10;#10;
en=1;in=1;sel=2'b11;#10;
en=1;in=0;sel=2'b01;#10;
en=0;in=1;sel=2'b11;#10;
$finish;
end
endmodule
