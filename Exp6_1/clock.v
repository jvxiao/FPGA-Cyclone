module clock(clk,rst_n,key1,key2,alarm_hour,alarm_minute,alarm_second,
             key_b,clock_hour,clock_minute,clock_second,led);

input clk;
input rst_n;
input key1,key2;//key1调时，key2调分
input [1:0]key_b;
input [7:0]alarm_second;
input [7:0]alarm_minute;
input [7:0]alarm_hour;

reg clk_1m;
reg clk_1h;

output reg [7:0]clock_second;
output reg [7:0]clock_minute;
output reg [7:0]clock_hour;
output led;

always@(posedge clk or negedge rst_n)
  begin 
	 if(rst_n==0)
      begin 
		  clock_second<=0;
		  clk_1m<=0;
		end
	 else if(key_b==2'b00)
	    begin
		   if(clock_second==8'h59)
			  begin
	          clock_second<=0;
				 clk_1m<=1;
			  end
			else 
			  begin
			    clk_1m<=0;
			    if(clock_second[3:0]==9)
			      clock_second<=clock_second+8'h7;
			    else
			      clock_second<=clock_second+1;
			  end
		 end
  end
  
  
always@(posedge clk_1m||(!key2) or negedge rst_n)
  begin 
	  if(rst_n==0)
	    begin
         clock_minute<=0; 
		   clk_1h<=0;
		 end
	  else if(key_b==2'b00)
	    begin
	      if(clock_minute==8'h59)
	        begin 
			    clock_minute<=0;
			    clk_1h<=1;
		     end
	      else
	        begin
		         clk_1h<=0; 
			    if(clock_minute[3:0]==9)
			      clock_minute<=clock_minute+8'h7;
			    else if(key2==0)//调分按下
	            clock_minute<=clock_minute+1;
			    else
			      clock_minute<=clock_minute+1;
		     end
		 end
  end
  
  
always@(posedge clk_1h||(!key1) or negedge rst_n)
  begin 
	  if(rst_n==0)
        clock_hour<=0;
	  else if(key_b==2'b00)
	    begin
	      if(clock_hour==8'h23)
	        clock_hour<=0;
	      else
	        begin 
			    if(clock_hour[3:0]==9)
			      clock_hour<=clock_hour+8'h7;
			    else if(key1==0)//调时
	            clock_hour<=clock_hour+1;
			    else
			      clock_hour<=clock_hour+1;
		     end
		 end
  end

wire led_clock=((clock_minute==8'h0)&&(clock_second==8'h0)&&(key_b==2'b00));
wire led_alarm=((clock_hour==alarm_hour)&&(clock_minute==alarm_minute)&&(key_b==2'b00));
assign led=led_alarm||led_clock; 
 
endmodule
