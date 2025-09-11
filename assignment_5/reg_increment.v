module reg_increment;
reg [15:0] R;
initial 
R= 0;
always 
 #4 R=R+1;
initial 
begin $monitor("time=%0t  r=%d " , $time , R);
 #104 $finish;
end 
endmodule
