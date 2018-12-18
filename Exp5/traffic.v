module traffic(clk,rst,S,state,main_led,country_led,SEG_s,SEG_g,cnt);
input clk,rst,S;                      //S为控制信号
output reg [2:0]main_led,country_led; //[2:0]:红黄绿
output reg [6:0]SEG_s,SEG_g;  
output reg [1:0]state;                
reg [30:0]count;                      //分频计数
output reg  [7:0]cnt;                 //倒计时

reg clk_slow;                         //慢时钟，1s
reg [3:0]SW,GW;
parameter s0=0,s1=1,s2=2,s3=3;        //主绿乡红(s0)、主黄乡红(s1)、(s2)主红乡绿、(s3)主红乡黄
always@(posedge clk or negedge rst)        
begin                                      
if(!rst)                                   
count<=0;
else
begin
if(count<25000000)
count<=count+1;
else
begin
clk_slow<=~clk_slow;
count<=0;
end
end
end

always@(posedge clk_slow or negedge rst)  //烧到板子上用clk_slow,仿真用clk
begin
if(!rst)                             //s0、s1、s3判断完时间再判断S
   begin 
   state<=s0;
   cnt<=59;
   end
else
   begin
   case(state)
   s0:   
   begin
   if(cnt>0)
       begin
       cnt<=cnt-1;
	   state<=s0;
       end
   else
       begin 
          if(S==0)
		  begin
          state<=s0;
		  cnt<=59;
		  end
          else
		  begin
          state<=s1;
		  cnt<=3;
		  end   
	   end
   end 
   s1:
        begin
        if(cnt>0)
           begin
           cnt<=cnt-1;
           state<=s1;
           end
        else
          begin
          state<=s2;
          cnt<=19;
          end
        end
   s2:                                //s2判断完S再判断时间
   begin
     if(S==0)
	   begin
	   state<=s3;
	   cnt<=3;
	   end
	 else
	   begin
	   cnt<=cnt-1;
	    begin
	      if(cnt>0)
	        state<=s2;
	      else
	        begin
	        state<=s3;
	        cnt<=3;
	        end
	    end
	   end
   end
   s3:   
        begin
        if(cnt>0)
           begin
           cnt<=cnt-1;
           state<=s3;
           end
        else
          begin
          state<=s0;
          cnt<=59;
          end
        end
   default:;
   endcase
   end
   end

always@(*)
begin
case(state)
s0:begin main_led<=3'b001;country_led<=3'b100;end//主绿乡红
s1:begin main_led<=3'b010;country_led<=3'b100;end//主黄乡红  
s2:begin main_led<=3'b100;country_led<=3'b001;end//主红乡绿 
s3:begin main_led<=3'b100;country_led<=3'b010;end//主红乡黄 
default:;
endcase
end

always@(*)
begin
SW<=cnt/10;
GW<=cnt%10;
end

always@(*)
begin
case(SW)
    0:SEG_s<=7'b1000000; 1:SEG_s<=7'b1111001;
    2:SEG_s<=7'b0100100; 3:SEG_s<=7'b0110000; 
    4:SEG_s<=7'b0011001; 5:SEG_s<=7'b0010010;
    6:SEG_s<=7'b0000010; 7:SEG_s<=7'b1111000; 
    8:SEG_s<=7'b0000000; 9:SEG_s<=7'b0010000;
	default: SEG_s=7'b1111111;
	endcase
case(GW)
    0:SEG_g<=7'b1000000; 1:SEG_g<=7'b1111001;
    2:SEG_g<=7'b0100100; 3:SEG_g<=7'b0110000; 
    4:SEG_g<=7'b0011001; 5:SEG_g<=7'b0010010;
    6:SEG_g<=7'b0000010; 7:SEG_g<=7'b1111000; 
    8:SEG_g<=7'b0000000; 9:SEG_g<=7'b0010000;
	default: SEG_g=7'b1111111;
	endcase
end

endmodule
