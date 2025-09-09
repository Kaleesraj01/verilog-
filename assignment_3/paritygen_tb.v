module tb_parity_gen;
reg [8:0] x;
wire ep, op;

parity_gen uut(x, ep, op);

initial begin
$dumpfile("parity_gen.vcd");
$dumpvars(0, tb_parity_gen);

$monitor("Time=%0t x=%b ep=%b op=%b", $time, x, ep, op);

x = 9'b000000000; #5;
x = 9'b000000001; #5;
x = 9'b111111111; #5;
x = 9'b101010101; #5;

$finish;
end
endmodule


