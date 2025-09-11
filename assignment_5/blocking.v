module blocking_example;
reg [3:0] a,b;

initial begin
a=0;
b=0;
$display("Time=%0t | Before assignments: a=%0d b=%0d",$time,a,b);
a=5;
b=a+3;
$display("Time=%0t | After assignments: a=%0d b=%0d",$time,a,b);
 
a=b+2; 
$display("Time=%0t | After assignments: a=%0d b=%0d",$time,a,b);
end
endmodule

