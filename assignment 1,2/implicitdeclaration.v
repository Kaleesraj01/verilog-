module implicit_net;
reg a,b;
assign out = a|b ;

initial begin
    $monitor("Time=%0t a=%b b=%b out=%b", $time, a, b, out);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
end endmodule
