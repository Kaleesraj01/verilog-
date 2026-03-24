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


TESTBENCH
module tb ;
   logic clk , rst , en ;
  logic [3:0] cout ;
  
  updowncounter dut (.clk(clk), .rst(rst), .en(en) , .cout(cout));
   
  initial begin 
     
  forever #5 clk = ~ clk ;
  
    
       $dumpfile("wave.vcd");  
    $dumpvars(0, tb);
  $monitor("Time=%0t clk=%0b rst=%0b en=%0b cout=%0d",
          $time, clk, rst, en, cout);

    // Initialize
    clk = 0;
    rst = 1;
    en  = 0;

    #10;
    rst = 0;   

    #10;
    en = 1;    

    #200;      

    en = 0;    
    #50;

    en = 1;   
    #100;

    $finish;
  end
endmodule 
            
