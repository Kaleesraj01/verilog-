module mealy_10101(input clk , rst , din , output reg dout);
parameter
s0=3'd0,
s1=3'd1,
s2=3'd2,
s3=3'd3,
s4=3'd4;

reg [2:0] current_state , next_state;
always @(posedge clk or posedge rst) begin
if(rst)
current_state <= s0;
else
current_state <= next_state;
end
always @(*) begin
case(current_state)
s0: if(din) next_state = s1;
    else    next_state = s0;
s1: if(din) next_state = s1;
    else    next_state = s2;
s2: if(din) next_state = s3;
    else    next_state = s0;
s3: if(din) next_state = s1;
    else    next_state = s4;
s4: if(din) next_state = s3;
    else    next_state = s0;
default: next_state = s0;
endcase
end
always@(*) begin
dout=0;
case(current_state)
s4: dout= din? 1 :0;
endcase
end
endmodule
