module FS(input a,b,bin,output diff,borrow);
assign {borrow,diff} = a-b-bin;
endmodule
