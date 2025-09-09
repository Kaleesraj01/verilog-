module mux4to1_tb;
reg i0,i1,i2,i3,s1,s0;
wire y;
mux4t1 dut (i0,i1,i2,i3,s1,s0,y);
initial begin
$dumpfile("mux.vcd");
$dumpvars(0,mux4to1_tb);
i0=0;i1=1;i2=0;i3=1;
s1=0;s0=0;#10;
$display("s1=%b s0=%b y=%b",s1,s0,y);
s1=0;s0=1;#10;
$display("s1=%b s0=%b y=%b",s1,s0,y);
s1=1;s0=0;#10;
$display("s1=%b s0=%b y=%b",s1,s0,y);
s1=1;s0=1;#10;
$display("s1=%b s0=%b y=%b",s1,s0,y);
$finish;
end
endmodule
