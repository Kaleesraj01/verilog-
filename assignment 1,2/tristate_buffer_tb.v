module tb;
reg i0,i1,sel;
wire y;
tri_mux dut(i0,i1,sel,y);
initial begin
$dumpfile("tri_mux.vcd");
$dumpvars(0,tb);
$monitor("t=%0t sel=%b i0=%b i1=%b y=%b",$time,sel,i0,i1,y);
i0=0;i1=0;sel=0;#10;
i0=1;i1=0;sel=0;#10;
i0=0;i1=1;sel=0;#10;
i0=1;i1=1;sel=0;#10;
i0=0;i1=0;sel=1;#10;
$finish;
end 
endmodule

