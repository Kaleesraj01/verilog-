module log_shift(input [3:0] a , output [3:0] leftshift, rightshift);
assign leftshift = a<<1;
assign rightshift = a>>1;
endmodule 

