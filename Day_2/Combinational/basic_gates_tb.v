module basicgate_tb;
reg a,b;
wire and_out, or_out ;
basic_gates dut(a,b,and_out,or_out);

initial begin

$dumpfile("basicgate.vcd");
$dumpvars(0,basicgate_tb);
$monitor("time=%0t a=%b b=%b and=%b or=%b ",$time, a ,b , and_out,or_out);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#12;
$finish;
end
endmodule  
