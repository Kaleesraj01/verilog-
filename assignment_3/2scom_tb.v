module tb_twos_complement_adder;
reg [3:0] x,y;
reg c_in;
wire [3:0] sum;
wire c_out;
twos_complement_adder dut (x,y,c_in,sum,c_out);
initial begin 
$dumpfile("twoscom.vcd");
$dumpvars(0,tb_twos_complement_adder);
$monitor("Time=%0t x=%b(%0d) y=%b(%0d) c_in=%b => sum=%b(%0d) c_out=%b",$time,x,x,y,y,c_in,sum,sum,c_out);
x=4'b0101;y=4'b0011;c_in=0;#5;
x=4'b0101;y=4'b0011;c_in=1;#5;
x=4'b1111;y=4'b0001;c_in=0;#5;
x=4'b1111;y=4'b0001;c_in=1;#5;
$finish;
end
endmodule

