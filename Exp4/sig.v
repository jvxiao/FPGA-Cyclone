module sig(clk,rst_n,load,seq_last6,led,state);

input clk,rst_n,load;//load为数据装载设置
reg clk_1s;      //分频时钟，慢时钟，注意仿真时
reg [30:0]counter; //计数

output reg [2:0]state;//状态变量这里需要记6个状态
 
//output seq_out;


output [5:0]seq_last6;//序列最后6位
output reg led;//检测到11010时灯亮

parameter [15:0] seq=16'b0111010011011010; //序列信号发生器输入序列（被检测序列）
parameter [4:0]  seq_check=5'b11010; 


//时钟分频电路，1s
always@(posedge clk or negedge rst_n)
  begin 
	if(!rst_n)
     begin
       counter<=0;
       clk_1s<=0;
     end
   else if(counter<25000000)
       counter<=counter+1;
	else 
	  begin
       counter<=0;
		 clk_1s<=~clk_1s;
     end
  end

  
  
//序列信号发生器
reg [15:0]seq_n;//序列
wire seq_out;  //序列信号发生器输出
assign  seq_last6=seq_n[5:0];
assign  seq_out=seq_n[15];
//always @(posedge clk_1s or negedge rst_n)//
always @(posedge clk or negedge rst_n)//仿真时用这一句
  begin
	 if(!rst_n)  
	    seq_n<=seq;
	 else if(load) 
	    seq_n<={seq_n[14:0],seq_n[15]};//序列左循环
	 else  
	    seq_n<=seq;
  end


//序列检测
//always @(posedge clk_1s or negedge rst_n)//
always @(posedge clk or negedge rst_n)//仿真时用这一句
  begin
    if(!rst_n)
       state <= 3'd0;
	 else
	   case(state)
		0: begin
		     if(seq_out==seq_check[4]) 
			     state <= 3'd1;
			  else
			     state <= 3'd0;
			end
		1: begin
		     if(seq_out==seq_check[3]) 
			     state <= 3'd2;
			  else
			     state <= 3'd0;
			end
      2: begin
		     if(seq_out==seq_check[2]) 
			     state <= 3'd3;
			  else
			     state <= 3'd2;
			end
      3: begin
		     if(seq_out==seq_check[1]) 
			     state <= 3'd4;
			  else
			     state <= 3'd0;
			end
      4: begin
		     if(seq_out==seq_check[0]) 
			     state <= 3'd5;
			  else
			     state <= 3'd2;
			end
      5: begin
		     if(seq_out==seq_check[4]) 
			     state <= 3'd1;
			  else
			     state <= 3'd0;
			end
		default:
			begin
				state <= 3'd0;
			end	
	   endcase
  end		
        	 
always@(rst_n,state)
  begin
	 if(!rst_n)
  		  led<=0;
	 else 
		if(state==3'd5)
		  led<=1;
		else
		  led<=0;
  end

endmodule

