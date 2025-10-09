module mealy_1101(input clk , rst , din , output reg dout);
parameter 
 s0 = 3'd0,
 s1 = 3'd1,
 s2 = 3'd2,
 s3 = 3'd3;

reg[2:0] current_state , next_state ;

always @(posedge clk or posedge rst )
begin 
if  (rst )

current_state <= s0;
else 
current_state <= next_state;
end 

always @(*)begin 
case (current_state)
s0:next_state = din ? s1:s0;
s1: next_state = din ? s2:s0;
s2: next_state = din ? s2:s3;
s3: next_state = din ? s0:s0;
 default : next_state= s0 ;
endcase 
 end 
always @(* ) begin 
 case (current_state) 
 s3: dout = din ? 1:0;
default: dout = 0 ;
endcase 
 end 
 endmodule 
