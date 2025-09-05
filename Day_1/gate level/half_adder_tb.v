module half_adder_tb;
reg a,b;
wire sum,carry;
half_adder dut (a,b,sum,carry);
initial begin
$dumpfile("half_adder.vcd");
$dumpvars(0,half_adder_tb);
$monitor("time=%0t \ a=%b b=%b sum=%b carry=%b", $time , a,b,sum , carry);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end 
endmodule 
