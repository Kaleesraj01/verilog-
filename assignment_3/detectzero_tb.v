module zero_detect_tb;
reg [3:0]x;
wire zero;
wire one;
detect_allzero dut (x,zero,one);
initial begin
$monitor( "x=%b== zero=%b one=%b ", x,zero,one);
x=0010;#5;
x=1011;#5;
x=1111;#5;
x=0001;#5;
x=1111;#5;
$finish;
end 
endmodule 
