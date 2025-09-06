module fs;
wire diff,borrow;
reg a,b,bin;
FS dut (a,b,bin,diff,borrow);
initial begin;
$dumpfile("fs.vcd");
$dumpvars(0,fs);
$monitor("time=%0t | a=%b b=%b bin=%b | diff=%b borrow=%b",
                 $time, a, b, bin, diff, borrow);

 
        a=0; b=0; bin=0; #10;
        a=0; b=0; bin=1; #10;
        a=0; b=1; bin=0; #10;
        a=0; b=1; bin=1; #10;
        a=1; b=0; bin=0; #10;
        a=1; b=0; bin=1; #10;
        a=1; b=1; bin=0; #10;
        a=1; b=1; bin=1; #10;

$finish;
end
endmodule
