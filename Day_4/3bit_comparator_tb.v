module comparator_3bit_tb;
reg [2:0]a,b;
wire [2:0]y;

comparator_3bit dut(a,b,y);
initial begin
$monitor("a=%b b=%b gt=%b eq=%b lt=%b ",a,b,y[0],y[1],y[2]);
$dumpfile("comparator.vcd");
$dumpvars();

a=3'b000; b=3'b000;#10
a=3'b001; b=3'b001;#10
a=3'b010; b=3'b110;#10
a=3'b011; b=3'b111;#10
a=3'b110; b=3'b101;#10
a=3'b101; b=3'b101;#10
a=3'b111; b=3'b110;#10
a=3'b111; b=3'b111;#10

$finish;
end
endmodule
