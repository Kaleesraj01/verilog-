module pattern ;
  integer k , r ;

  initial begin 
    for ( k = 1 ; k <= 5 ; k= k+1) begin 
      for ( r = 1 ; r<=k ; r = r+1) begin
        $write ("@");
      end 
      $display (""); end 
  end
endmodule 

OUTPUT 
# KERNEL: @
# KERNEL: @@
# KERNEL: @@@
# KERNEL: @@@@
# KERNEL: @@@@@



module pattern ;
  integer k , r ;

  initial begin 
    for ( k = 4 ; k >= 1 ; k= k-1) begin 
      for ( r = 1 ; r<=k ; r = r+1) begin
        $write ("&");
      end 
      $display (""); end 
  end
endmodule 
  
# KERNEL: &&&&
# KERNEL: &&&
# KERNEL: &&
# KERNEL: &
  
      
