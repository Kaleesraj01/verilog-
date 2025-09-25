 module D_latch;
reg d, en;
wire q,qbar;
d_latch dut ( d,en, q, qbar);
initial begin
$monitor ("time=%0t d=%b en=%b q=%b qbar=%b ", $time , d, en , q, qbar);
$dumpfile("jk.vcd");
$dumpvars (0,D_latch);
 en =0 ; d=1; #5;
en=1;d=1;#10;
d=0;#10;
d=1;#10;
en=0;d=0;#10;
en=0;d=1;#10;
en=1;d=0;#10;
$finish;
end
endmodule
