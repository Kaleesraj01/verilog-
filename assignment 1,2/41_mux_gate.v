module mux4t1(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output y;
wire w1,w2,w3,w4,w5,w6;
not g1(w1,s1);
not g2(w2,s0);
and g3(w3,w1,w2,i0);
and g4(w4,w1,s0,i1);
and g5(w5,s1,w2,i2);
and g6(w6,s1,s0,i3);
or g7(y,w3,w4,w5,w6);
endmodule

