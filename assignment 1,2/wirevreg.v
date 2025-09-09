module reg_demo(output reg r1, output reg r2);
initial begin 
$monitor("Time=%0t | r1=%b r2=%b", $time, r1, r2);
 r1 = 1'b0; r2 = r1;      
        #5  r1 = 1'b1; r2 = r1;
        #5  r1 = 1'b0; r2 = r1;  
        #5  
$finish;             
 end
endmodule

