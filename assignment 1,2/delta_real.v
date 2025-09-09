module floating_point_demo;
real delta;  
integer x;
initial begin
delta = 2.18;
$display("delta = %0f", delta);
x = delta;
$display("Assigned delta=2.18 to integer x -> x = %0d", x);
$finish;
 end
endmodule
