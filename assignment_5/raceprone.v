module race_example;
reg clk;
reg [3:0] a,b;
initial clk=0;
always #5 clk=~clk;
always @(posedge clk) begin
a=b;
b=a;
end
initial begin
a=1;
b=2;
#50 $finish;
end
endmodule
 
