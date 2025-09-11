`timescale 1ns/1ps
module blocking_delay_example;
reg [3:0] a,b;

initial begin
    a = 0;
    b = 0;
    $display("Time=%0t | Before assignments: a=%0d b=%0d",$time,a,b);

    a = 5; #5;       // assign 5 to a, wait 5 time units
    b = a + 3; #5;   // assign a+3 to b, wait 5 time units
    $display("Time=%0t | After assignments: a=%0d b=%0d",$time,a,b);
end
endmodule

