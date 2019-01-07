module AM(
          input clk,
			 input rst_n,
			 input AM_key,//调幅按键
			 input [7:0]data,//此时波形数据
			 output reg [7:0]wave_data,//减幅度后输出的数据
			 output reg [6:0]SEG_AM
			 );
			 
reg [3:0]AM_cnt;//减幅系数

always@(negedge AM_key or negedge rst_n)
  begin
    if(!rst_n)
	   AM_cnt<=1;
	 else 
	   begin
		  if(AM_cnt==4'd15)
	       AM_cnt<=1;
	     else if(AM_key==0)
	       AM_cnt<=AM_cnt+1;
		  else
		    AM_cnt<=AM_cnt;
		end
  end
  
  
  

//输出增减幅之后的幅度数据
always@(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
	   wave_data<=data;
	 else 
	   wave_data <= data/AM_cnt;  //调幅
  end
  
always@(AM_cnt)
begin
case(AM_cnt)
	0:SEG_AM<=8'b1000000; 
	1:SEG_AM<=8'b1111001;
	2:SEG_AM<=8'b0100100;
	3:SEG_AM<=8'b0110000;
	4:SEG_AM<=8'b0011001; 
	5:SEG_AM<=8'b0010010;
	6:SEG_AM<=8'b0000010; 
	7:SEG_AM<=8'b1111000; 
	8:SEG_AM<=8'b0000000; 
	9:SEG_AM<=8'b0010000; //8段译码值
	default:SEG_AM<=8'b1000000;
endcase
end

endmodule
