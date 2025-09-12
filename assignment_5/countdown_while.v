
module countdown_while;
integer i;
initial begin
$dumpfile("countdown.vcd");
$dumpvars();
i=10;
while(i>=0) begin
$display("i=%0d",i);
i=i-1;
end
$finish;
end
endmodule

