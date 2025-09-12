module buffer_repeat;
reg clk;
reg [7:0] data_in;
reg [7:0] buffer;
integer i;
initial clk=0;

always #5 clk=~clk;
initial begin
data_in=8'b10101010;
buffer=8'b00000000;

repeat(8) begin
@(posedge clk);
buffer=data_in;
$monitor("%0t\t%b\t%b\t%b",$time,clk,data_in,buffer);

end
$finish;
end
endmodule

