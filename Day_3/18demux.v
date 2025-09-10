module demux1_8(input i,e ,input [2:0]sel, output [7:0]y);
assign y= (e&i)? (8'b00000001<<sel):(8'b00000000);
endmodule 
