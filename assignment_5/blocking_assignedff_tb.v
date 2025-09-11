module block_ff_tb;
reg clk, d;
wire q;
block_ff dut (.clk(clk), .d(d) , .q(q));
initial begin 
$monitor ("time=%0t  clk=%0b d=%0b  q=%0b ", $time , clk , d , q);
end
initial clk = 0;
always 
#5 clk=~clk;
initial begin 
   d = 0;
    #7 d = 1;
    #10 d = 0;
    #10 d = 1;
    #20 
$finish;
end
endmodule
