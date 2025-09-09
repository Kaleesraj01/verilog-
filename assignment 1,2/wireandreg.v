module wire_demo;
wire net1,net2;
assign net1= 1;
assign net2=net1;
initial begin 
$monitor("Time=%0t | net1=%b net2=%b", $time, net1, net2);
#11;
$finish;
end 
endmodule


