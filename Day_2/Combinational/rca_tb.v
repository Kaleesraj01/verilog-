
module rca_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
RCA dut (a,b,cin,sum,cout);
initial begin 
$dumpfile("rca.vcd");
$dumpvars(0,rca_tb);
$monitor ("time=%0t | a=%b(%0d) b=%b(%0d) cin=%b => sum=%b(%0d) cout=%b",
          $time, a, a, b, b, cin, sum, sum, cout);

a = 4'b0000; b = 4'b0000; cin = 0; #10;
a = 4'b0001; b = 4'b0010; cin = 0; #10;
a = 4'b0101; b = 4'b0011; cin = 1; #10;
a = 4'b1111; b = 4'b0001; cin = 0; #10;

$finish;
end 
endmodule


