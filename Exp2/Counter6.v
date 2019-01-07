  

module Counter6(clk,m,en,rst,SG_0,SG_1,SG_2,d,q);
input clk,m,en,rst;
output reg[6:0] SG_0,SG_1,SG_2;
output reg d;
(* synthesis,keep *) reg clk1;
(* synthesis,keep *) wire [3:0] gw,sw,bw;
output reg [11:0] q;
reg [11:0] model;
reg [26:0] cnt;

always @(posedge clk)
begin cnt=cnt+1;
        //if(cnt==25000000)  实际电路
		  if(cnt==2) //仿真电路
		    begin
		     clk1=1'b1;
			  cnt=0;
           end
	   	else
		     clk1=1'b0;
end
always 
begin
	  case(gw)
	     0:SG_0<=7'b1000000; 
		  1:SG_0<=7'b1111001;
		  2:SG_0<=7'b0100100; 
		  3:SG_0<=7'b0110000;
		  4:SG_0<=7'b0011001; 
		  5:SG_0<=7'b0010010;
		  6:SG_0<=7'b0000010; 
		  7:SG_0<=7'b1111000;
		  8:SG_0<=7'b0000000; 
		  9:SG_0<=7'b0010000;
		  default:SG_0=7'b0000000;
		endcase		
	  case(sw)
	     0:SG_1<=7'b1000000; 
		  1:SG_1<=7'b1111001;
		  2:SG_1<=7'b0100100; 
		  3:SG_1<=7'b0110000;
		  4:SG_1<=7'b0011001; 
		  5:SG_1<=7'b0010010;
		  6:SG_1<=7'b0000010; 
		  7:SG_1<=7'b1111000;
		  8:SG_1<=7'b0000000; 
		  9:SG_1<=7'b0010000;
		  default:SG_1=7'b0000000;
		endcase		
	  case(bw)
	     0:SG_2<=7'b1000000; 
		  1:SG_2<=7'b1111001;
		  2:SG_2<=7'b0100100; 
		  3:SG_2<=7'b0110000;
		  4:SG_2<=7'b0011001; 
		  5:SG_2<=7'b0010010;
		  6:SG_2<=7'b0000010; 
		  7:SG_2<=7'b1111000;
		  8:SG_2<=7'b0000000; 
		  9:SG_2<=7'b0010000;
		  default:SG_2=7'b0000000;
		endcase
end
always @(m)
   if(m)
	  model=12'b000000010101;//模值15
	  else model=12'b000100010101;//模值115
  assign gw=q[3:0];
  assign sw=q[7:4];
  assign bw=q[11:8];
 
  
  always @(posedge clk1 or negedge rst)
    begin
	    if(!rst) q=0;
		 else if(en)
		      begin 
				  if(q<model)
				     begin
					    if(gw==9)
						  begin q=q+7;
						    if(sw==9) q=q+96;
						  end
						    else q=q+1;
					  end
				  else q=0;
			   end
    end 
always @(q)
    if(q<model)  d<=0;
	 else  d<=1;
endmodule
