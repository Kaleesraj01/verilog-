module fa_tb;
wire sum , carry ;
reg a,b,cin;
fa dut (a,b,cin,sum ,carry);
initial begin
$dumpfile ("fa.vcd");
$dumpvars (0,fa_tb);
$monitor ("time=%0t a=%b b=%b cin=%b sum=%b carry=%b ", $time,a,b,cin,sum,carry);
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10

        

$finish;
end
endmodule
