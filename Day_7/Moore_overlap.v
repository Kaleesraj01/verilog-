module moore_10110(input clk , input rst, input din , output reg dout);
parameter s0=3'd0,
s1=3'd1,
s2=3'd2,
s3=3'd3,
s4=3'd4,
s5=3'd5;
reg[2:0] current_state , next_state ;
always@ (posedge clk or posedge rst) begin
if(rst) 
current_state <= s0;
else 
current_state <= next_state ;
end 
always @(*) begin
case (current_state)
s0:next_state = (din)?s1:s0;
s1:next_state = (din)?s1:s2;
s2:next_state = (din)?s3:s0;
s3:next_state = (din)?s4:s2;
s4:next_state = (din)?s1:s5;
s5:next_state = (din)?s3:s2;
default : next_state = s0 ;
endcase 
end 
always @(*) begin
case (current_state)
s5:dout = 1'b1;
default: dout=1'b0;
endcase 
end
endmodule 
