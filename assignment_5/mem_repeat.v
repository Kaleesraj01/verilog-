
module memory_repeat;
reg [7:0] mem [0:15];
integer i;
initial begin
i=0;
repeat(16)begin
mem[i]=8'h00;   // initializing each byte to 0
i=i+1;
end
for(i=0;i<16;i=i+1)
$display("mem[%0d]=%0h",i,mem[i]);
$finish;
end
endmodule

