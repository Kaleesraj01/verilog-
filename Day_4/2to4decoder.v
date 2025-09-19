module decoder2to4(input [1:0]a,input en, output reg [3:0]y);
always@(*) begin
if (en==0)
 y=4'b000;
else 
case(a)
2'b00:y= 4'b0001;
2'b01:y= 4'b0010;
2'b01:y= 4'b0100;
2'b11:y= 4'b1000;
default:y=4'b0000;
endcase
end 
endmodule   




