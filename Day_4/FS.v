module full_sub(
    input a,b,bin,
    output reg diff,bout
);

always @(*) begin
    case({a,b,bin})
        3'b000: {bout,diff} = 2'b00;
        3'b001: {bout,diff} = 2'b11;
        3'b010: {bout,diff} = 2'b10;
        3'b011: {bout,diff} = 2'b01;
        3'b100: {bout,diff} = 2'b01;
        3'b101: {bout,diff} = 2'b00;
        3'b110: {bout,diff} = 2'b11;
        3'b111: {bout,diff} = 2'b10;

	default: {bout,diff} = 2'b00;
    endcase
end






endmodule

