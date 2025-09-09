module equality_op;
reg[1:0]a,b;
wire eq_logical,eq_case;
assign eq_logical = (a==b);
assign eq_case= (a===b);
initial begin
$monitor("Time=%0t a=%b b=%b a==b=~%b a===b=~%b",$time,a,b,eq_logical,eq_case);
a=2'b10;b=2'b10;#5;
a=2'b1x;b=2'b11;#5;
a=2'bxx;b=2'bxx;#5;
a=2'b0z;b=2'b00;#5;
$finish;
end
endmodule

