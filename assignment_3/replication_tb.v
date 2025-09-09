module tb_replication;
reg [1:0] a;
reg [3:0] b;
reg [1:0] c;
wire [6:0] y;
replication uut(a,b,c,y);
initial begin
$dumpfile("replication.vcd");
$dumpvars(0,tb_replication);
$monitor("Time=%0t a=%b b=%b c=%b => y=%b",$time,a,b,c,y);
a=2'b01;b=4'b1010;c=2'b10;#5;
a=2'b11;b=4'b0001;c=2'b01;#5;
a=2'b10;b=4'b1111;c=2'b11;#5;
a=2'b00;b=4'b0101;c=2'b00;#5;
$finish;
end
endmodule

