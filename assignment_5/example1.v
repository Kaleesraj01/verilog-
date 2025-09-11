`timescale 1ns/1ps
module nonblocking_delay_example;
reg [3:0] a, b;

initial begin
    a <= 0;
    b <= 0;
    $display("Time=%0t | Before assignments: a=%0d b=%0d",$time,a,b);

    a <= 5; #5;
    $display("Time=%0t | Midpoint: a=%0d b=%0d",$time,a,b);

    b <= a + 3; #5;
    $display("Time=%0t | After assignments: a=%0d b=%0d",$time,a,b);
end
endmodule
 
