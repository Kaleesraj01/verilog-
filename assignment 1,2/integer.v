module integer_demo;
 integer i;
initial begin
$monitor ("time=%0t,data=%d",$time,i);
i=24;
#10;i=244;
#5;i=1;
$finish;
end 
endmodule
