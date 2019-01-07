module top_signal(
                  input clk,
						input rst_n,//下降沿
						input [1:0]clk_key,//频率选择键
						input [1:0]wave_key,//波形控制键
						input AM_key,//调幅按键,下降沿
						output [7:0]q,
						output [6:0]SEG_WAVE,//SEG0
						output [6:0]SEG_AM,//SEG5
						output [6:0]SEG_FREQ,//SEG3
						output [6:0]SEG_FREQ1
						);
						

wire clk_out;
wire [7:0]data;


freq U1(clk,rst_n,clk_key,clk_out,SEG_FREQ,SEG_FREQ1);//调频

		  
wave U2(clk_out,rst_n,wave_key,data,SEG_WAVE);//波形输出
		  
		  
AM U3(clk_out,rst_n,AM_key,data,q,SEG_AM);//调幅
		
endmodule
		