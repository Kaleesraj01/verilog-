module tri_mux(i0,i1,sel,y);
input i0,i1,sel;
output y;
wire w;
bufif0(w,i0,sel);
bufif1(w,i1,sel);
assign y=w;
endmodule

