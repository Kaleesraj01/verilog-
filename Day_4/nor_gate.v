module nor_gate(input a,b,output reg y);
always @(*)begin
if(~(a|b))
y=1;
else
y=0;
end
endmodule
