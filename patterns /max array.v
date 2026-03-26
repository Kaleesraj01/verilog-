module find_max_verilog (
    input [63:0] arr_flat,  // 8 elements × 8 bits
    output reg [7:0] max
);

reg [7:0] arr [0:7];
integer i;

always @(*) begin
    // unpack
    for (i = 0; i < 8; i = i + 1)
        arr[i] = arr_flat[i*8 +: 8];

    // find max
    max = arr[0];
    for (i = 1; i < 8; i = i + 1) begin
        if (arr[i] > max)
            max = arr[i];
    end
end

endmodule
