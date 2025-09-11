module alu_tb;
reg [3:0] a,b;
reg [2:0] op; 
wire[3:0] result;

simple_alu uut (.a(a), .b(b), .op(op), .result(result));
initial begin
$monitor("a=%b b=%b sel=%b result=%d ",a,b,op, result);
$dumpfile("alu.vcd");
$dumpvars();
a=4'b0011; b=4'b1010;
op=3'b000;#10
op=3'b001;#10
op=3'b010;#10
op=3'b011;#10
op=3'b100;#10
op=3'b101;#10
op=3'b110;#10
op=3'b111;#10

$finish;
end
endmodule
      
