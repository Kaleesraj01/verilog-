module bit_select;
reg [7:0] data;
initial begin
data = 8'b10101100;
$display("data = %b", data);
$display("data[3] = %b", data[3]);
$finish;
end
endmodule
