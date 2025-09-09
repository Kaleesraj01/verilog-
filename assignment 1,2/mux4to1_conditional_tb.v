module mux4to1_conditional_tb;
reg i0,i1,i2,i3,s0,s1;
wire y;
mux4to1_conditional uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
initial begin
$dumpfile("mux4to1.vcd");
$dumpvars(0,mux4to1_conditional_tb);
$monitor("time=%0t | s1=%b s0=%b | i0=%b i1=%b i2=%b i3=%b | y=%b",$time,s1,s0,i0,i1,i2,i3,y);
i0=0;i1=1;i2=0;i3=1;
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
$finish;
end
endmodule

