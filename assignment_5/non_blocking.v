`timescale 1ns/1ps
module nonblocking_example;
reg [3:0] a,b;
initial begin

a<=0;
b<=0; #1;
$display("Time=%0t | Before assignments: a=%0d b=%0d",$time,a,b);

a<=5;
b<=a+3; #1;
$display("Time=%0t | After assignments: a=%0d b=%0d",$time,a,b);

a<=b+2; #1;
$display("Time=%0t | After assignments: a=%0d b=%0d",$time,a,b);
end
endmodule

