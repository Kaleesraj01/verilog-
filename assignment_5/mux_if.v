module mux2to1_if(
  input [1:0] d,
  input sel,
  output reg y
);
always @(*) begin
  if(sel == 1'b0)
    y = d[0];
  else
    y = d[1];
end
endmodule


