module part_selection;
reg [7:0] bus;
reg [3:0] bus1;
initial begin
bus = 8'b10101011;
bus1 = bus[3:0];
$display("bus1 = %b",bus1);
end
endmodule

