module d_ff_Tb;
reg d, clk, rst;
wire q,qb;
d_ff dut ( .d(d), .clk(clk),.rst(rst), .q(q),.qb(qb) );
initial
clk=0;
always #5 clk=~clk;
initial begin
rst =0 ;
d=0 ;
$monitor("Time=%0t | rs=%b | d=%b | q=%b | qb=%b", $time, rst, d, q, qb);
#10 rst=1 ; d = 1;
#10 d = 0;
#10 rst = 1;
#10 rst = 0; d = 1;
#20 d = 0;
end
endmodule
