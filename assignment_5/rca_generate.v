module full_adder(
input a,
input b,
input cin,
output sum,
output cout
);
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module ripple_carry_adder_4bit(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output cout
);
wire [4:0] c;
assign c[0]=cin;
genvar i;
generate
for(i=0;i<4;i=i+1) begin:adder_loop
full_adder fa(
.a(a[i]),
.b(b[i]),
.cin(c[i]),
.sum(sum[i]),
.cout(c[i+1])
);
end
endgenerate
assign cout=c[4];
endmodule
 

module tb_ripple_carry_adder_4bit;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
ripple_carry_adder_4bit uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);
initial begin
$monitor("time=%0t a=%b b=%b cin=%b => sum=%b cout=%b",$time,a,b,cin,sum,cout);
$dumpfile("rca.vcd");
$dumpvars();
a=4'b0000;b=4'b0000;cin=0;#10;
a=4'b0101;b=4'b0011;cin=0;#10;
a=4'b1111;b=4'b0001;cin=0;#10;
a=4'b1010;b=4'b0101;cin=1;#10;
$finish;
end
endmodule

