module decoder2to4(input [1:0]A,output [3:0]Y);
assign Y[0]=(A==2'b00)?1'b0:1'b1;
assign Y[1]=(A==2'b01)?1'b0:1'b1;
assign Y[2]=(A==2'b10)?1'b0:1'b1;
assign Y[3]=(A==2'b11)?1'b0:1'b1;
endmodule

