module real_time;
realtime current_time;
initial begin
current_time = $realtime;
$display("At start: current_time = %0f ns", current_time);
#5.5 current_time = $realtime;
$display("After 5.5 ns: current_time = %0f ns", current_time);
$finish;
end
endmodule

