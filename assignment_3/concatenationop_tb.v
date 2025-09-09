module tb_concat_example;
reg [1:0] a;
reg [3:0] b,c;
wire [2:0] y;
concat_example uut(a,b,c,y);
initial begin
$dumpfile("concat_example.vcd");
$dumpvars(0,tb_concat_example);
$monitor("Time=%0t a=%b b=%b c=%b => y=%b",$time,a,b,c,y);
a=2'b00;b=4'b1010;c=4'b1100;#5;
a=2'b01;b=4'b0101;c=4'b0011;#5;
a=2'b11;b=4'b1111;c=4'b0110;#5;
a=2'b10;b=4'b0001;c=4'b1001;#5;
$finish;
end
endmodule

