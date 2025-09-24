module tb_tff;
reg clk,rst,t;
wire q;

t_ff dut(.clk(clk),.rst(rst),.t(t),.q(q));

initial clk=0;
always #5 clk=~clk; 
initial begin
rst=1;t=0;
#10 rst=0;t=1;
#10 t=0;
#10 t=1;
#20 $finish;
end
initial begin
$monitor("time=%0t rst=%b t=%b q=%b",$time,rst,t,q);
end
endmodule
