module tb_mux2to1_if;
reg [1:0] d;
reg sel;
wire y;
mux2to1_if uut(.d(d),.sel(sel),.y(y));
initial begin
$dumpfile("mux2to1_if.vcd");
$dumpvars(0,tb_mux2to1_if);
$monitor("time=%0t sel=%b d=%b y=%b",$time,sel,d,y);
d=2'b10;
sel=0;#10;
sel=1;#10;
$finish;
end
endmodule

