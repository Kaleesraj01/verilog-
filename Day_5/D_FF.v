module d_ff(input d, clk,rst,
            output reg q , 
            output wire qb
);
always @(posedge clk )
begin if(rst)
q<=0;
else
q<=d;
end
assign qb=~q;
endmodule
