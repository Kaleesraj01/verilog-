module B_G_con_tb ;
wire [3:0]gray;
reg [3:0] binary;
B_G_con dut ( .binary(binary), .gray(gray));
initial begin
$dumpfile("bg.vcd");
$dumpvars(0, B_G_con_tb);
$monitor("time=%t , binary=%b gray=%b" , $time ,binary , gray );
binary=1011;#4;
binary=0010;#4;
binary=1111;#4;
binary=1010;#4;
$finish;
end
endmodule
