module mux4to1 (input [3:0]i ,input[1:0]sel,output y);
assign y = (sel==00)? i[0]:
(sel==01)? i[1]:
(sel==10)? i[2]:
i[3];
endmodule 
