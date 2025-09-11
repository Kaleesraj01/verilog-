module parallel_always;
reg clk;
reg [3:0] a, b,c;
initial clk = 0;

always #5 clk = ~clk;
always @(posedge clk) begin
a = a+1;
$display("Time=%0t | Always1 executed | a=%0d", $time, a);
end
always @(posedge clk) begin
b = b+2;
$display("Time=%0t | Always2 executed | b=%0d", $time, b);
end
always @(negedge clk) begin
c = c+2;
$display("Time=%0t | Always3 executed | c=%0d",$time ,c);
end
initial begin
a = 0;
b = 0;
c = 1;
$dumpfile("parallel_always.vcd");
$dumpvars(0, parallel_always);
#50 $finish;
end

endmodule

