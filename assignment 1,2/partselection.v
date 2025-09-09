module part_selection;
reg [7:0]bus ;
reg[3:0] lowernibble;
initial begin
bus=01010101;
$display("bus = %b" , bus);
lowernibble= bus[3:0];
$display("lowernibble from bus %b",lowernibble);
$finish;
end 
endmodule  


