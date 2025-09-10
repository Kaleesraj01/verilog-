module comparator_tb;
reg [2:0]A,B;
wire AeqB, AgtB, AltB;
comparator3bit dut (.A(A), .B(B), .AeqB(AeqB), .AgtB(AgtB), .AltB(AltB));
initial begin
$dumpfile("c.vcd");
$dumpvars(0, comparator_tb);
$display("TIME     A     B     A>B    A<B    A=B" );  
$monitor("time=%0t  A=%b B=%b   %b    %b     %b ", $time , A, B , AgtB, AltB, AeqB );
A=3'b001;B=3'b010;#10;
A=3'b101;B=3'b011;#10;
A=3'b110;B=3'b110;#10;
A=3'b000;B=3'b111;#10;
A=3'b111;B=3'b000;#10;
$finish;
end 
endmodule
