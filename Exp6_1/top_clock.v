module top_clock(input clk,
			        input [3:0]key_in,
			        input [1:0]key_b,
					  input key3,
			        output [6:0]SG0,
			        output [6:0]SG1,
			        output [6:0]SG2,
			        output [6:0]SG3,
			        output [6:0]SG4,
			        output [6:0]SG5,
			        output led,
					 output [7:0]clock_hour,
					output [7:0]clock_minute,
					output [7:0]clock_second);
			  

wire clk_1s,clk_1ms,clk_20ms;
wire [3:0]key_o;
wire [7:0]second;
wire [7:0]minute;
wire [7:0]hour;
/*wire [7:0]clock_second;
wire [7:0]clock_minute;
wire [7:0]clock_hour;*/
wire [7:0]alarm_second;
wire [7:0]alarm_minute;
wire [7:0]alarm_hour;
wire [3:0]cnt_ms;
wire [7:0]cnt_s;
wire [7:0]cnt_m;


freq U1(
        .clk(clk),
		  .rst_n(key_in[0]),
		  .clk_1s(clk_1s),
		  .clk_1ms(clk_1ms),
		  .clk_20ms(clk_20ms)
		  );
		  
key U2(
       .clk(clk_20ms),
		 .key_in(key_in),
		 .key(key_o)
		 );
		 
clock U3(
         .clk(clk_1s),
			.rst_n(key_in[0]),
			.key1(key_in[3]),
			.key2(key_in[2]),
			.key_b(key_b),
			.alarm_hour(alarm_hour),
			.alarm_minute(alarm_minute),
			.alarm_second(alarm_second),
			.clock_hour(clock_hour),
			.clock_minute(clock_minute),
			.clock_second(clock_second),
			.led(led)
			);
			
alarm U4(
         //.clk(clk),
			.key_b(key_b),
			.rst_n(key_in[0]),
			.key1(key_in[3]),
			.key2(key_in[2]),
			.alarm_hour(alarm_hour),
			.alarm_minute(alarm_minute),
			//.alarm_second(alarm_second)
			);
			
watch U5(
         .clk_1ms(clk_1ms),
			.clk_1s(clk_1s),
			.rst_n(key_in[0]),
			.key3(key3),
			.key_b(key_b),
			.cnt_ms(cnt_ms),
			.cnt_m(cnt_m),
			.cnt_s(cnt_s)
			);
			
display U6(
			  .key_b(key_b),
			  .clock_hour(clock_hour),
			  .clock_minute(clock_minute),
			  .clock_second(clock_second),
			  .alarm_hour(alarm_hour),
			  .alarm_minute(alarm_minute),
			  .alarm_second(alarm_second),
			  .cnt_ms(cnt_ms),
			  .cnt_m(cnt_m),
			  .cnt_s(cnt_s),
			  .hour(hour),
			  .minute(minute),
			  .second(second),
			  .SG0(SG0),
			  .SG1(SG1),
			  .SG2(SG2),
			  .SG3(SG3),
			  .SG4(SG4),
			  .SG5(SG5)
			  );
			  
endmodule
	 