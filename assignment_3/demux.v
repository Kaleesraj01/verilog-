module demux1to4(input in, input [1:0] sel, input en, output [3:0] y);
assign y[0] = en & in & (~sel[1]) & (~sel[0]);
assign y[1] = en & in & (~sel[1]) & sel[0];
assign y[2] = en & in & sel[1] & (~sel[0]);
assign y[3] = en & in & sel[1] & sel[0];
endmodule

