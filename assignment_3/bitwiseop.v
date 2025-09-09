module bitwise_ops;
reg[1:0]x,y;
wire[1:0]not_x;
wire[1:0]and_xy,or_xy,xor_xy,xnor_xy;
assign not_x=~x;
assign and_xy=x&y;
assign or_xy=x|y;
assign xor_xy=x^y;
assign xnor_xy=x^~y;
initial begin
$monitor("Time=%0t x=%b(%0d) y=%b(%0d) ~x=%b(%0d) x&y=%b(%0d) x|y=%b(%0d) x^y=%b(%0d) x^~y=%b(%0d)",$time,x,x,y,y,not_x,not_x,and_xy,and_xy,or_xy,or_xy,xor_xy,xor_xy,xnor_xy,xnor_xy);
x=2'b00;y=2'b00;#5;
x=2'b01;y=2'b10;#5;
x=2'b10;y=2'b11;#5;
x=2'b11;y=2'b01;#5;
$finish;
end
endmodule

