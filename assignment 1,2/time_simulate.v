module timesimulation;
time t ;
initial begin
t = $time;
$monitor("time=%0t stored=%t" , $time, t);
#10 t =$time;                                                                                                                         $monitor("time=%0t stored=%t", $time ,t); $finish; 
end
endmodule
