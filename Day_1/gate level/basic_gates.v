module basic_gates(input a,b , output c,d,e,f,g,h,i);
not(c,a);
and(d,a,b);
or(e,a,b);
nor(f,a,b);
nand(g,a,b);
xor(h,a,b);
xnor(i,a,b);
endmodule
