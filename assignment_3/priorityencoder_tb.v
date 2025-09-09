module priority_encoder_tb;
reg[3:0]d;
wire[1:0]y;
priority_encoder dut(.d(d),.y(y));
initial begin
$monitor("time=%0t d=%b -> y=%b",$time,d,y);
d=4'b0000;#10;
d=4'b0001;#10;
d=4'b0010;#10;
d=4'b0100;#10;
d=4'b1000;#10;
d=4'b1010;#10;
d=4'b1111;#10;
$finish;
end
endmodule

