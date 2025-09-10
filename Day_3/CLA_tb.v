module cla_4bit_tb;
reg[3:0]a,b;
reg cin;
wire[3:0]sum;
wire cout;
cla_4bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$dumpfile("cla.vcd");
$dumpvars(0,cla_4bit_tb);

$monitor("time=%0t a=%b b=%b cin=%b | sum=%b carry=%b",$time,a,b,cin,sum,cout);
a=4'b0101;b=4'b0011;cin=0;#10;
a=4'b1111;b=4'b0001;cin=1;#10;
a=4'b1001;b=4'b0110;cin=0;#10;
a=4'b1100;b=4'b1100;cin=1;#10;
$finish;
end
endmodule

