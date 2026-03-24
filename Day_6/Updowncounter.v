 module updowncounter (input clk , rst , en , output reg[3:0] cout );
  
  reg dir;
  always @ (posedge clk)
    begin 
      if(rst) begin
        cout <= 4'b001;
         dir <= 1;
      end
      
      else if (en && dir) 
        begin 
          if(cout==4'b1010)
            dir<= 0 ;
          else 
            cout <= cout+1 ;
        end 
      else 
        begin 
          if(cout==4'b0001)
            dir <= 1 ;
          else 
            cout <= cout-1 ;
        end
    end
endmodule
            
