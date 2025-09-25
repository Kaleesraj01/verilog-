module sr_latch_tb;
reg s,r;
wire q,qbar;
sr_latch dut (.s(s), .r(r), .q(q), .qbar(qbar));
initial begin
$monitor ("time=%0t s=%b r=%b q=%b qbar=%b ", $time , s, r, q, qbar);
s=0;r=0;
#4 s=0;r=1;
#4 s=1;r=0;
#4 s=1;r=1;
end
endmodule
