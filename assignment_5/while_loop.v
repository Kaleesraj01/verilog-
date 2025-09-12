module while_loop;
reg [3:0] data;
integer count;
integer i;
initial begin 
$monitor("Data=%b, Number of 1s=%0d", data, count);
$dumpfile("loop.vcd");
$dumpvars();
count=0;
i=0;
data = 4'b1100;
while 
 (i<4) begin
if (data[i] == 1'b1)
count = count+1;
i=i+1;
end
$finish; end 
endmodule
