
module tb_mux4to1;
reg [3:0] i;
reg [1:0] sel;
wire y;
mux4to1 dut (.i(i), .sel(sel), .y(y));
initial begin
$monitor("i=%b sel=%b y=%b", i, sel, y);
i=4'b1010; sel=2'b00; #5;
i=4'b1010; sel=2'b01; #5;
i=4'b1010; sel=2'b10; #5;
i=4'b1010; sel=2'b11; #5;
$finish;
end
endmodule

