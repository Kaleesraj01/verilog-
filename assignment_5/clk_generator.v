module clk_generator;
reg clk;
initial begin
clk = 0;
forever  #5 clk = ~clk ;
end 
initial begin
$monitor ( "time=%0t clk=%0b " , $time , clk );
#70 $finish;
end 
endmodule 
