module freq(input clk,
            input rst_n,
				input [1:0]clk_key,//频率选择键
				output reg rom_clk,
				output reg [6:0]SEG_FREQ,
				output reg [6:0]SEG_FREQ1
				);
				
				
reg clk_2;//25M
reg clk_4;//12M
reg cnt;
reg clk_8;//6M



always@(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
	   clk_2<=0;
	 else 
	   clk_2<=~clk_2;
  end
  
always@(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
	   begin
		  clk_4<=0;
		  cnt<=0;
		end
	 else if(cnt==1)
	   begin
		  clk_4<=~clk_4;
		  cnt<=0;
		end
	 else
	   begin
		  clk_4<=clk_4;
		  cnt<=cnt+1;
		end
  end

/*always@(posedge clk_2 or negedge rst_n)
  begin
    if(!rst_n)
	   clk_4<=0;
	 else 
	   clk_4<=~clk_4;
  end*/  
  
always@(posedge clk_4 or negedge rst_n)
  begin
    if(!rst_n)
	   clk_8<=0;
	 else
	   clk_8<=~clk_8;
  end
 
always@(*)
  begin
    case(clk_key)
	   0: rom_clk=clk;
		1: rom_clk=clk_2;
		2: rom_clk=clk_4;
		3: rom_clk=clk_8;
		default: rom_clk=clk;
	 endcase
  end
  

always@(clk_key)
begin
case(clk_key)
	0: begin SEG_FREQ1<=8'b1000000;  SEG_FREQ<=8'b0010010; end //50
	1: begin SEG_FREQ1<=8'b0100100;	SEG_FREQ<=8'b0010010; end  //25
	2: begin SEG_FREQ1<=8'b1111001;	SEG_FREQ<=8'b0100100;  end//12
	3: begin SEG_FREQ1<=8'b0000010;  SEG_FREQ<=8'b0000010; end  //6
	4:SEG_FREQ<=8'b0011001; 
	5:SEG_FREQ<=8'b0010010;
	6:SEG_FREQ<=8'b0000010; 
	7:SEG_FREQ<=8'b1111000; 
	8:SEG_FREQ<=8'b0000000; 
	9:SEG_FREQ<=8'b0010000; //8段译码值
	default: begin SEG_FREQ1<=8'b1000000;  SEG_FREQ<=8'b0010010; end 
	//0:SEG_FREQ<=8'b1000000; SEG_FREQ1<=8'b0010010;  //50
	//1:SEG_FREQ<=8'b0100100;	SEG_FREQ1<=8'b0010010;  //25
	//2:SEG_FREQ<=8'b1111001;	SEG_FREQ1<=8'b0100100;  //12
	//3:SEG_FREQ<=8'b0000010; SEG_FREQ1<=8'b0000010;   //6
	
	
	
endcase
end

endmodule	

		
	   
		  