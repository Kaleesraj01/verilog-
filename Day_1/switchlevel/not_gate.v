module not_gate (input a,output b );
supply1 vdd;
supply0 gnd;
pmos p1(b,vdd,a);
nmos n1(b,gnd,a);
endmodule

