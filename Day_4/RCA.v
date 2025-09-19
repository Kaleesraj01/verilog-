module ripple_carry_adder(input [3:0] a, b, input cin,
    output reg [3:0] sum,output reg cout);

integer i;
reg [4:0] c;

always @(*) begin
    c[0] = cin;
    for (i = 0; i < 4; i = i + 1) begin
    sum[i] = a[i] ^ b[i] ^ c[i];
    c[i+1] = (a[i] & b[i]) | (b[i] & c[i]) | (a[i] & c[i]);
    end
    cout = c[4];
end

endmodule

