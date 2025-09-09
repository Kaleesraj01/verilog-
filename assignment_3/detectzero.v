module detect_allzero(input[3:0]x,output zero,output one);
assign zero= ~(|x);
assign one = &x;
endmodule
