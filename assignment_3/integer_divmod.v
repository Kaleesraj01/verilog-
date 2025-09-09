module div_mod;
reg  [7:0] u1, u2;
wire [7:0] u_div, u_mod;
reg  signed [7:0] s1, s2;
wire signed [7:0] s_div, s_mod;
assign u_div = u1 / u2;
assign u_mod = u1 % u2;
assign s_div = s1 / s2;
assign s_mod = s1 % s2;

initial begin
$dumpfile("div_mod.vcd");
$dumpvars(0, div_mod);
u1 = 15; u2 = 4;
    $display("Unsigned: %0d / %0d = %0d, remainder = %0d", u1, u2, u_div, u_mod);
    s1 = 15; s2 = 4;
    #1 $display("Signed(+,+): %0d / %0d = %0d, remainder = %0d", s1, s2, s_div, s_mod);
    s1 = -15; s2 = 4;
    #1 $display("Signed(-,+): %0d / %0d = %0d, remainder = %0d", s1, s2, s_div, s_mod);
    s1 = -15; s2 = -4;
    #1 $display("Signed(-,-): %0d / %0d = %0d, remainder = %0d", s1, s2, s_div, s_mod);

    $finish;
    end
endmodule

