module ff_nonblocking;
reg clk;
reg [3:0]q1,q2;
initial clk=0;
always #5 clk=~clk;
always @(posedge clk)begin
q1<=q2;
q2<=q1;
end
initial begin
q1=1;q2=2;
$monitor("time=%0t clk=%0b q1=%0d q2=%0d",$time,clk,q1,q2);
#40 $finish;
end
endmodule

