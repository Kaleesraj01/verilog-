module tb_udp_and;
reg a, b;
wire y;

udp_and dut(y, a, b);

initial begin
$dumpfile("udp_and.vcd");
$dumpvars(0,tb_udp_and);
$monitor("t=%0t a=%b b=%b y=%b", $time, a, b, y);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
$finish;
end
endmodule

