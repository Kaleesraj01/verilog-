module d_latch(input d ,en, output reg q , output qbar);
always @(*)
begin
if (en)
q=d;
end
assign qbar = ~q ;

endmodule
