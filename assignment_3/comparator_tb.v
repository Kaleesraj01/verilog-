 module comparator_tb;
reg [1:0] a,b;
wire ceq, clt, cgt;
comparator dut ( a,b, ceq, clt, cgt);
initial begin
$monitor(" a=%b  b=%b a==b=%b  a>b=%b a<b=%b ", a,b,ceq,clt,cgt );
a=00;b=10;#10;
a=10;b=00;#10;
a=11;b=01;#10;
a=10;b=11;#10;
$finish;
end endmodule
