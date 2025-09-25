module updowncounter_tb;
reg clk , reset , updown ;
wire [3:0]count;
updowncounter dut ( clk , reset , updown , count);
initial begin
$monitor ("time =%0t clk=%b reset+=%b updown=%b count=%d ", $time, clk , reset , updown , count );
$dumpfile ("counter.vcd" );
$dumpvars();
clk=0;
end
always #5 clk = ~clk;
initial begin
 reset=1 ; updown=1; #5;
reset=0 ; updown=1; #30 ;
updown = 0 ; #30;
reset=1 ; #50;
reset=0 ; #30 ;
$finish;
end
endmodule
