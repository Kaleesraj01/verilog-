module tb_mux_nbit;
parameter N=4;
reg [N-1:0] a,b;
reg sel;
wire [N-1:0] y;
mux_nbit #(N) uut(.a(a),.b(b),.sel(sel),.y(y));
initial begin
$monitor("time=%0t sel=%b a=%b b=%b y=%b",$time,sel,a,b,y);
a=4'b1010;b=4'b0101;sel=0;#10;
sel=1;#10;
a=4'b1111;b=4'b0000;sel=0;#10;
sel=1;#10;
$finish;
end
endmodule

