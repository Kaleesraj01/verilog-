
module not_gate_tb;
reg a;
wire b;
not_gate dut (.a(a), .b(b));
initial begin
$monitor ("inp=%d|out=%d",a,b);
$dumpfile("not_gate.vcd");
$dumpvars();
a=0;#10
a=1;#10
$finish;
end
endmodule
