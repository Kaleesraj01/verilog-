module mixblock;
reg clk;
reg [3:0] a,b,c;
initial begin
$monitor("time=%0t clk=%0b a=%b b=%b c=%b",$time,clk,a,b,c);
clk=0;
a=5; b=2; c=4;
end
always #5 clk=~clk;
always @(posedge clk) begin
a=b;
a<=c+b;
c=b;
end
endmodule

