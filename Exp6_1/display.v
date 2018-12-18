module display(key_b,clock_hour,clock_minute,clock_second,alarm_hour,
               alarm_minute,alarm_second,cnt_ms,cnt_s,cnt_m,hour,minute,second,
					SG0,SG1,SG2,SG3,SG4,SG5);


input [1:0]key_b;
input [7:0]clock_second;
input [7:0]clock_minute;
input [7:0]clock_hour;
input [7:0]alarm_hour;
input [7:0]alarm_minute;
input [7:0]alarm_second;
input [7:0]cnt_m;
input [7:0]cnt_ms;
input [7:0]cnt_s;

output reg [7:0]second;
output reg [7:0]minute;
output reg [7:0]hour;
output [6:0]SG0;
output [6:0]SG1;
output [6:0]SG2;
output [6:0]SG3;
output [6:0]SG4;
output [6:0]SG5;


//模式选择及显示
always@(*)
  case(key_b)
	  2'b00: begin
	           hour=clock_hour;
              minute=clock_minute;
              second=clock_second;
            end
     2'b01: begin
	           hour=alarm_hour;
              minute=alarm_minute;
              second=alarm_second;
            end
	  2'b10: begin
	           hour=cnt_m;
              minute=cnt_s;
              second[7:4]=cnt_ms;
				  second[3:0]=0;
            end
	  default: begin
	            hour=hour;
               minute=minute;
               second=second; 
				  end
	  endcase
 
  
SG7   U1(hour[7:4],SG5),
		U2(hour[3:0],SG4),
		U3(minute[7:4],SG3),
		U4(minute[3:0],SG2),
		U5(second[7:4],SG1),
		U6(second[3:0],SG0);
  
endmodule
