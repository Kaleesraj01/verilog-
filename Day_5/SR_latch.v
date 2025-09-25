module sr_latch(input s,r ,output reg q ,output qbar);
always @(*) begin
if (s!=r)
q=s;
else if (!s&!r)
q=q;
else if (s&r)
q=1'bx;
end
assign qbar=~q;
endmodule
