//fulladder adder :
module FA (input a,b,cin , output sum , carry );
assign {carry , sum}= a+b+cin ;
endmodule 
 
//RCA
module RCA(input [3:0]a,b,input cin,output [3:0] sum,output cout);
wire c1,c2,c3 ;
FA f1 (a[0],b[0],cin,sum[0],c1);
FA f2 (a[1],b[1],c1,sum[1],c2);
FA f3 (a[2],b[2],c2,sum[2],c3);
FA f4 (a[3],b[2],c3,sum[3],cout);
 
endmodule 

