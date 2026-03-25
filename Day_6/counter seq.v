module custom_counter (
    input clk,
    input rst,
    output reg [2:0] state
);

always @(posedge clk) begin
    if (rst) 
        state <= 3'b000;
    else begin
        case (state)
            3'b000: state <= 3'b011;
            3'b011: state <= 3'b101;
            3'b101: state <= 3'b110;
            3'b110: state <= 3'b000;
            default: state <= 3'b000; // invalid states
        endcase
    end
end

endmodule
