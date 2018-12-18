module watch(clk_1ms,key_b,clk_1s,rst_n,key3,cnt_ms,cnt_s,cnt_m);

input clk_1ms,clk_1s,rst_n,key3;
input [1:0]key_b;

reg clk_1m;

output reg [3:0]cnt_ms;//秒表的毫秒显示
output reg [7:0]cnt_s;//秒表的秒显示
output reg [7:0]cnt_m;//秒表的分显示

//秒表
always@(posedge clk_1ms or negedge rst_n)
  begin 
	if(rst_n==0)
       cnt_ms<=0;
	  else if(key_b==2'b10) 
	    begin
		   if(key3==1)
			  cnt_ms<=cnt_ms;
		   else if(cnt_ms[3:0]==9)
			  begin
			    cnt_ms<=0;
			  end
			else
			  begin
			    cnt_ms<=cnt_ms+1;
			  end
		 end
  end
  
always@(posedge clk_1s or negedge rst_n)
  begin 
	 if(rst_n==0)
       cnt_s<=0;
	  else if(key_b==2'b10)
	    begin
		   if(key3==1)
			  cnt_s<=cnt_s;
		   else if(cnt_s==8'h59)
			  begin
	          cnt_s<=0;
				 clk_1m<=1;
			  end
			else 
			  begin
			    clk_1m<=0;
			    if(cnt_s[3:0]==9)
			      cnt_s<=cnt_s+8'h7;
			    else
			      cnt_s<=cnt_s+1;
			  end
		 end
  end

always@(posedge clk_1m or negedge rst_n)
  begin 
	  if(rst_n==0)
       cnt_m<=0;
	  else if(key_b==2'b10)
	    begin
		   if(key3==1)
			  cnt_m<=cnt_m;
		   else if(cnt_m==8'h59)
	        cnt_m<=0;
			else if(cnt_m[3:0]==9)
			  cnt_m<=cnt_m+8'h7;
			else
			  cnt_m<=cnt_m+1;
		 end
  end
  
endmodule
