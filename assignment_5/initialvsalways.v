module initial_vs_always;
reg clk;
reg [3:0] a,b;
initial begin
a=0;
b=0;
$display("initial block starts at time=%0t a=%0d b=%0d",$time,a,b);
end
always begin
#5 clk=~clk;
end
always @(posedge clk) begin
a=a+1;
$display("time=%0t always block executed a=%0d",$time,a);
end
endmodule

