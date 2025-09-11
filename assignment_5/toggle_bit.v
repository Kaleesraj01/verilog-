module toggle_bit;
reg clk;
initial 
clk=0;
always
#6 clk=~clk;
 
initial begin
$monitor ("time=%0t , clk=%b ", $time,clk);
#100 $finish;
end
endmodule 
