module multiple_initial_example;
reg [3:0] a,b;
initial begin
a=5;
$display("initial block 1: a = %0d at time %0t",a,$time);
end
initial begin
b=10;
$display("initial block 2: b = %0d at time %0t",b,$time);
end
initial begin
#5;
a=a+b;
$display("initial block 3: a+b = %0d at time %0t",a,$time);
end
endmodule

