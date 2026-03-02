module primenum;
  int num = 11 ;
  bit prime =1 ;

  initial begin 
    if (num <= 1 )
      prime= 0 ;

    for(i = 2 ; i<= num/2 ; i++ ) begin  
      if ( num % i == 0)
      prime = 0 
        end 

        if (prime) 
          $display ( "THEN GIVEN NUMBER IS PRIME = %0d", num);
       else 
         $display ("THE GIVEN NUMBER IS NOT A PRIME NUMBER = %0d",num);

       end 
    endmodule 
    
      
    
        
          
