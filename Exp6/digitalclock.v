module digitalclock(rst, clk, ad_hr, ad_min, ad_sec, Hr_s,Hr_g, Min_s, Min_g, Sec_s, Sec_g,cnt_sec, cnt_min, cnt_hr);
	input clk, rst, ad_hr, ad_min, ad_sec;
	output reg[6:0] Hr_s,Hr_g, Min_s, Min_g, Sec_s, Sec_g;
	reg clk_slow;
	reg [30:0]count;  //分频计数
	output reg [7:0] cnt_sec, cnt_min, cnt_hr;
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
			
always @( posedge clk or negedge rst )
begin
if(!rst)
	cnt_sec<=0;
else begin
	if(cnt_sec<60)
		cnt_sec=cnt_sec+1;
	else begin
		cnt_sec=0;
		if(cnt_min<60)
		cnt_min<=cnt_min+1;
		else begin
		if(cnt_hr<24)
		cnt_hr=cnt_hr+1;
		else
		cnt_hr<=0;
		end
		end
		end
		end

				
endmodule		
				
			
			
			