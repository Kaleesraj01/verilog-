
module nor_gate(input a,b ,output c);
wire w;
supply1 vdd;
supply0 gnd; 
pmos p1(w,vdd,a);
pmos p2(c,w,b);
nmos n1(c,gnd,a);
nmos n2(c,gnd,b);
endmodule
