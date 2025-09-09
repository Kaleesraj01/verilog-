module reg_demo;
reg [7:0] a ;
initial begin
$monitor ("Time=%0t | data=%b", $time, a);
    a= 11010011;
 #10 a = 8'b11001100;
 #10 a = 8'b11001101;
$finish;
end 
endmodule

