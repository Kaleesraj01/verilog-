module mux_tb;
reg i0,i1,s0;
wire y; 
mux_2to1 dut (i0,i1,s0,y);
initial begin 
$monitor("time=%0t i0=%b i1=%b s0=%b y=%b ",$time, i0 ,i1,s0,y);
i0=0;i1=0;s0=0;#10;
i0=0;i1=1;s0=0;#10;
i0=1;i1=0;s0=0;#10;
i0=1;i1=1;s0=0;#10;

$finish;
end
endmodule 
