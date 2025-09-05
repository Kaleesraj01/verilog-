 module full_adder(input a,b,c,output sum,carry);
wire w1,w2,w3;
xor(w1,a,b);
xor(sum,w1,c);
and(w2,a,b);
and(w3,w1,c);
or(carry ,w2,w3);
endmodule
