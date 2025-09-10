module comparator3bit(
    input [2:0] A, B,
    output reg AeqB, AgtB, AltB
);

always @(*) begin
    if (A > B) begin
        AgtB = 1;
        AltB = 0;
        AeqB = 0;
    end
    else if (A < B) begin
        AgtB = 0;
        AltB = 1;
        AeqB = 0;
    end
    else begin
        AgtB = 0;
        AltB = 0;
        AeqB = 1;
end  
end

endmodule

