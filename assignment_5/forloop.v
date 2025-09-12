module ones_counter_for;
reg [3:0] data;
integer count;
integer i;
initial begin
$monitor("Data=%b,Number of 1s=%0d",data,count);
$dumpfile ("f.vcd");
$dumpvars();
data=4'b1011;
count=0;
for(i=0;i<4;i=i+1)begin
if(data[i]==1'b1)
count=count+1;
end

$finish;
end
endmodule

