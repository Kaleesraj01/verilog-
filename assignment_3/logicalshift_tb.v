module logical_shift_tb;
reg[3:0]a;
wire [3:0] leftshift , rightshift;
log_shift dut (a,leftshift,rightshift);
initial begin
$monitor ("a=%b  leftshift=%b  rightshift=%b" , a, leftshift , rightshift );
a=0010;#5;
a=1110;#4;
a=1010;#5;
a=1000;#5;
$finish;
end 
endmodule
