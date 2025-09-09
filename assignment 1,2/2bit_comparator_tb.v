module tb_comparator_2bit;
reg A1, A0, B1, B0;
wire AeqB, AgtB, AltB;

comparator_2bit dut(A1, A0, B1, B0, AeqB, AgtB, AltB);

initial begin
$dumpfile("comparator_2bit.vcd");
$dumpvars(0, tb_comparator_2bit);

$monitor("Time=%0t A=%b%b B=%b%b | AeqB=%b AgtB=%b AltB=%b", 
          $time, A1, A0, B1, B0, AeqB, AgtB, AltB);

A1=0; A0=0; B1=0; B0=0; #10;
A1=0; A0=1; B1=1; B0=0; #10;
A1=1; A0=0; B1=0; B0=1; #10;
A1=1; A0=1; B1=1; B0=1; #10;
A1=1; A0=0; B1=1; B0=0; #10;

$finish;
end
endmodule

