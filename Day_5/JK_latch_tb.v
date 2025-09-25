module jk_latch_tb;
reg j,k;
wire q, qbar;
jk_latch dut ( j,k,q,qbar);
initial begin
$monitor("time=%0t j=%b k=%b q=%b qbar=%b ", $time , j, k, q, qbar);
$dumpfile("jk.vcd");
$dumpvars();
#5 j=1;k=0;
#5 j=0;k=0;
#5 j=1;k=1;
#5 j=0;k=1;
end
endmodule
