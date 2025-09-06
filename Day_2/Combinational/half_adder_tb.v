module ha_tb;
wire sum,carry;
reg a,b;
ha dut(a,b,sum,carry);
initial begin 
$dumpfile("ha.vcd");
$dumpvars(0,ha_tb);
$monitor("time=%0t a=%b b=%b sum=%b carry=%b ", $time, a, b , sum , carry );
 a = 0; b = 0; #10;
 a = 0; b = 1; #10;
 a = 1; b = 0; #10;
 a = 1; b = 1; #10;
$finish;
end
endmodule
