module nand_gate(input a,b ,output c);
supply1 vdd;
supply0 gnd;
wire w;
pmos p1(c,vdd,a);
pmos p2(c,vdd,b);
nmos n1(c,w,a);
nmos n2(w,gnd,b);
endmodule
