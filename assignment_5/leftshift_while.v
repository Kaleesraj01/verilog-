module shift_until_msb;
reg [7:0] r;
integer count;
initial begin
	$dumpfile("msb.vcd");
	$dumpvars(0,shift_until_msb);
	
r=8'b00001011;
count=0;
$display("Initial r = %b",r);
while(r[7]==0) begin
r=r<<1;
count=count+1;
$display("Shift %0d: r = %b",count,r);
end
$display("Final r = %b, total shifts = %0d",r,count);
$finish;
end
endmodule

