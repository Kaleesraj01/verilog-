module delayed_adder;
reg [1:0] a,b;
wire [2:0] sum;

assign #5 sum = a + b;

initial begin
$monitor("Time=%0t a=%b(%0d) b=%b(%0d) sum=%b(%0d)",$time,a,a,b,b,sum,sum);
a=2'b00; b=2'b00;#3;
a=2'b01; b=2'b01;#2;
a=2'b10; b=2'b01;#6;
a=2'b11; b=2'b11;#4;
end
endmodule


