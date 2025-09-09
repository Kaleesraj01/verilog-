module tb_decoder2to4;
reg [1:0] A;
wire [3:0] Y;
decoder2to4 dut(.A(A),.Y(Y));
initial begin
$monitor("A=%b Y=%b",A,Y);
A=2'b00;#5;
A=2'b01;#5;
A=2'b10;#5;
A=2'b11;#5;
$finish;
end
endmodule

