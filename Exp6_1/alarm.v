module alarm(key1,key2,key_b,rst_n,alarm_hour,alarm_minute);//,alarm_second

//input clk;
input key1,key2,rst_n;
input [1:0]key_b;


output reg [7:0]alarm_hour;
output reg [7:0]alarm_minute;
//output reg [7:0]alarm_second;


//闹钟设置及整点报时
always@(negedge key2 or negedge rst_n)
  begin
    if(rst_n==0)
	   begin
		  alarm_minute<=0;
	//	  alarm_second<=0;
		end
    else if(key_b==2'b01)
	   begin
		  if(alarm_minute==8'h59)
		     alarm_minute<=0;
		  else if(alarm_minute[3:0]==9)
			  alarm_minute<=alarm_minute+8'h7;
		  else if(key2==0)
		     alarm_minute<=alarm_minute+1;
		  else
		     alarm_minute<=alarm_minute;
		end
  end
	

always@(negedge key1 or negedge rst_n)
  begin
    if(rst_n==0)
	   begin
		  alarm_hour<=0;
		end
    else if(key_b==2'b01)
	   begin
	     if(alarm_hour==8'h23)
		     alarm_hour<=0;
		  else if(alarm_hour[3:0]==9)
			  alarm_hour<=alarm_hour+8'h7;
		  else if(key1==0)
		     alarm_hour<=alarm_hour+1;
		  else
		     alarm_hour<=alarm_hour;
		end
  end	

	 

endmodule   
		  
