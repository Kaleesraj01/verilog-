 module encoder4to2_normal(input d0,d1,d2,d3,output reg [1:0] y);
always @(*) begin
case ({d3,d2,d1,d0})
4'b0001: y=2'b00;
4'b0010: y=2'b01;
4'b0100: y=2'b10;
4'b1000: y=2'b11;
default: y=2'bxx;
endcase
end
endmodule

module encoder4to2_priority(input d0,d1,d2,d3,output reg [1:0] y);
always @(*) begin
if (d3) y=2'b11;
else if (d2) y=2'b10;
else if (d1) y=2'b01;
else if (d0) y=2'b00;
else y=2'bxx;
end
endmodule


module tb_encoder;
reg d0,d1,d2,d3;
wire [1:0] y_normal,y_priority;
encoder4to2_normal enc_normal(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.y(y_normal));
encoder4to2_priority enc_priority(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.y(y_priority));
initial begin
$dumpfile("encoder_test.vcd");
$dumpvars(0,tb_encoder);
$monitor("time=%0t d3=%b d2=%b d1=%b d0=%b | Normal=%b Priority=%b",$time,d3,d2,d1,d0,y_normal,y_priority);
d3=0;d2=0;d1=0;d0=0; #10;
d0=1;d1=0;d2=0;d3=0; #10;
d0=0;d1=1;d2=0;d3=0; #10;
d0=1;d1=1;d2=0;d3=0; #10;
d0=1;d1=0;d2=1;d3=0; #10;
d0=1;d1=1;d2=1;d3=0; #10;
d0=1;d1=1;d2=1;d3=1; #10;
d0=0;d1=0;d2=1;d3=0; #10;
d0=0;d1=0;d2=0;d3=1; #10;
$finish;
end
endmodule

