module jk_TB;
reg j,k,clk;
wire q;
JK_ff dut (j,k,clk,q);
initial
clk=0;
always #5 clk = ~clk;
initial begin
j=1;k=0 ; #10;
j=0;k=1 ; #10;
j=1;k=1 ; #10;
j=0;k=0 ; #10;
end
initial $monitor("Time=%0t | j=%b k=%b q=%b", $time, j,k,q);
endmodule
