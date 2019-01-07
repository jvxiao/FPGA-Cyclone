
module traffic(clk,rst_n,s,MR,MY,MG,CR,CY,CG,SG0,SG1,SG4,SG5, state,sec_cnt);

input clk;
input rst_n;
input s;

output  reg MR;
output  reg MY;
output  reg MG;
output  reg CR;
output  reg CY;
output  reg CG;
output  reg [2:0]state;


output [6:0]SG0;
output [6:0]SG1;
output [6:0]SG4;
output [6:0]SG5;


reg clk_1s;
output reg [7:0]sec_cnt;
reg [7:0]sec_cnt1;

wire [3:0]sw;
wire [3:0]gw;

parameter [2:0] MGCR=3'd0,	
                MYCR=3'd1,	
                MRCG=3'd2,	
                MRCY=3'd3,	
                MGCR_W=3'd4;	

/*parameter [2:0] MGCR=3'd0,	//主绿乡红   
                MYCR=3'd1,	//主黄乡红
                MRCG=3'd2,	//主红乡绿
                MRCY=3'd3,	//主绿乡黄     
                MGCR_W=3'd4;	//主干路通行大于1min之后转换
	*/				

//时钟分频电路，时间为1s
/*always@(posedge clk or negedge rst_n)
  begin 
	if(!rst_n) begin
       counter<=0;
		 
       clk_1s<=0; end
	  
   else if(counter<25000000)	//25000000时间为1s，12500000为0.5s
	
		counter<=counter+1;
		
			else begin
	
       counter<=0;
		 
		 clk_1s<=~clk_1s;  end
  end
  */
 

//BCD转换
always@(sec_cnt,rst_n) begin
    if(!rst_n)
	   sec_cnt1<=0;
		
	 else begin
		  if(sec_cnt[3:0]==0 && sec_cnt[7:4]!=0)	//例如8'h59一次减一时从59减到50跟十进制一样而从50到49的变化要多减一个6 
		    sec_cnt1 = sec_cnt-8'h6;	//十进制0-1时向高位借一当10在减一为9,16进制借一为16需先减6在减一为9
			 
        else
          sec_cnt1 = sec_cnt; end
end
 
 
//交通灯实现 
//always@(posedge clk_1s or negedge rst_n) 
always@(posedge clk or negedge rst_n) 
	begin
		
		if(!rst_n) begin
			 state<=MGCR;
			 
			 sec_cnt<=0;
			 
			 MR <= 1'b0;MY <= 1'b0;MG <= 1'b1;
			 
          CR <= 1'b1;CY <= 1'b0;CG <= 1'b0;//平时系统停留在主干道通行状态即MG=1,CR=1
			 
		  end
		else
		  case(state)
		  
			MGCR:
		    begin
            sec_cnt<=8'h59;	//十六进制59，先给sec_cnt一个59初值，进入MGCR_W状态
				state<=MGCR_W;
          end
		 
			MYCR:
          begin
            if(sec_cnt==8'h0)	//4s(3->0)过后进入乡道通行状态
				  begin
                MR <= 1'b1;MY <= 1'b0;MG <= 1'b0;
                CR <= 1'b0;CY <= 1'b0;CG <= 1'b1;    
                state<= MRCG;
                sec_cnt <= 8'h19;//16进制19
              end
            else 
				  begin
                sec_cnt <= sec_cnt1 - 8'h1;
              end
           end  
			
			MRCG:
            begin
              if(s==0||sec_cnt == 8'h0)//如果s=0，或者20s时间到(19->0)进入乡道通行转到主道通行的等待状态  
				    begin                
                    MR <= 1'b1;MY <= 1'b0;MG <= 1'b0;
                    CR <= 1'b0;CY <= 1'b1;CG <= 1'b0;  
                    state<= MRCY;     
						  sec_cnt <= 8'h3;
                end
              else 
                    sec_cnt <= sec_cnt1-8'h1;
            end  
			MRCY:
            begin
              if(sec_cnt==8'h0)//4s过后转入主道通行状态
				    begin
                  MR <= 1'b0;MY <= 1'b0;MG <= 1'b1;
                  CR <= 1'b1;CY <= 1'b0;CG <= 1'b0;
                  state<= MGCR_W;
                  sec_cnt<=8'h59;//十六进制59
                end
              else 
				    begin
                  sec_cnt<=sec_cnt1-8'h1;
                end
            end  
			MGCR_W://等60s以及s=1时才转换
            begin
              if(sec_cnt==8'h0)
				    begin
                  if(s)   
						  begin
                      MR <= 1'b0;MY <= 1'b1;MG <= 1'b0;
                      CR <= 1'b1;CY <= 1'b0;CG <= 1'b0;              
                      state<=MYCR;  
                      sec_cnt<=8'h3;
                    end
                  else    
						  begin
                      state<= MGCR;
                    end
                end
              else 
	               sec_cnt<= sec_cnt1-8'h1;
            end
          default:
              state<= MGCR;
        endcase
  end	

//display,显示在数码管上
assign gw = sec_cnt[3:0];
assign sw = sec_cnt[7:4];
	
//SG7	MSW(sw,SG5);
//SG7	MGW(gw,SG4);
//SG7	CSW(sw,SG1);
//SG7	CGW(gw,SG0);

endmodule
