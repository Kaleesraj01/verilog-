
module memory_1d;
reg [7:0] mem [7:0];
integer i;
initial begin
for(i=0;i<8;i=i+1) begin
mem[i]=i*5;
end
for(i=0;i<8;i=i+1) begin
$display("mem[%0d]=%0d",i,mem[i]);
end
end
endmodule

