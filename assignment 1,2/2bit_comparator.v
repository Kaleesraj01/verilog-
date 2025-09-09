module comparator_2bit (
input  A1, A0,
input  B1, B0,
output AeqB,
output AgtB,
output AltB
);

wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
wire w11, w12, w13, w14;

not (w1, A1);
not (w2, A0);
not (w3, B1);
not (w4, B0);

and (w5, A1, B1);
and (w6, w1, w3);
or  (w7, w5, w6);

and (w8, A0, B0);
and (w9, w2, w4);
or  (w10, w8, w9);

and (AeqB, w7, w10);

and (w11, A1, w3);
and (w12, w7, A0, w4);
or  (AgtB, w11, w12);

and (w13, w1, B1);
and (w14, w7, w2, B0);
or  (AltB, w13, w14);

endmodule

