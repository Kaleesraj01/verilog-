//12.Create a comparator module that uses ==, <, and > to output ceq, clt, and cgt.

module comparator( input [1:0] a,input [1:0]b, output ceq, clt, cgt);
assign ceq = a==b;
assign clt = a>b;
assign cgt = a<b;
endmodule
