module counter_example;
reg clk;
reg [3:0] counter;
initial begin
clk = 0;
counter = 0;
$display("Starting simulation...");
end
always #5 clk = ~clk;
always  begin     
 @(posedge clk) ; 
counter <= counter + 1;
$display("Time=%0t | Counter=%0d",$time,counter);
end
endmodule   
