module and_gate(input a, b, output c);
  supply1 vdd;
  supply0 gnd;
  wire n;
  wire nd;

  pmos p1(n, vdd, a);
  pmos p2(n, vdd, b);

  nmos n1(nd, gnd, b);
  nmos n0(n, nd, a);

  pmos p3(c, vdd, n);
  nmos n2(c, gnd, n);
endmodule

