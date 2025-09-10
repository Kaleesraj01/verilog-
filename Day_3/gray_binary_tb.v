module gray3binary_tb;
wire [3:0]binary;
reg [3:0]gray;
graytobinary dut (.binary(binary),.gray(gray));
initial begin
$dumpfile("g.vcd");
$dumpvars(0,gray3binary_tb);
$monitor("time=%t  gray=%b  binary =%b ", $time, gray, binary );
gray=0101;#3;
gray=1101;#3;
$finish;
end 
endmodule
