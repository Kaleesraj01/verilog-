module xorswitch(input a,b , output y);
wire n1,n2,n3,n4,n5;
supply1 vdd;
supply0 gnd;
pmos i1(n2,vdd,a);
nmos i2(n2,gnd,a);
pmos i3(n3,vdd,b);
nmos i4(n3,gnd,b);
pmos p1(n1,vdd,a);
pmos p2(n1,vdd,b);
pmos p3(y,n1,n2);
pmos p4(y,n1,n3);
nmos (y,n4,a);
nmos (n4,gnd,b);
nmos (y,n5,n2);
nmos (n5,gnd,n3);
endmodule
