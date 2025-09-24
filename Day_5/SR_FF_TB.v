module SR_TB;
reg s,r,clk;
wire q;
SR_ff dut (s,r,clk,q);
initial
clk=0;
always #5 clk = ~clk;
initial begin
s=1;r=0 ; #10;
s=0;r=1 ; #10;
s=1;r=1 ; #10;
s=0;r=0 ; #10;
end
initial $monitor("Time=%0t | s=%b r=%b q=%b", $time,s,r,q);
endmodule
