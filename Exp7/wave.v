module wave(
            input clk,
            input rst_n,
				input [1:0]wave_key,//波形控制键
				output reg [7:0]rom_out,//输出波形
				output reg [6:0]SEG_WAVE
				);
				
wire [7:0]sin_out;
wire [7:0]rectangle_out;
wire [7:0]triangle_out;
wire [7:0]sawtooth_out;
reg  [8:0]addr;

sin sin_inst(addr,clk,sin_out);
	
rectangle rectangle_inst(addr,clk,rectangle_out);//方波
	
triangle triangle_inst(addr,clk,triangle_out);//三角波

sawtooth sawtooth_inst(addr,clk,sawtooth_out);//锯齿波
				 
		
always@(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      addr<=0;
    else if(addr==9'd511)
	   addr<=0;
	 else
	   addr<=addr+1;
  end
  
always@(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
	   rom_out<=0;
	 else 
	   begin
	     case(wave_key)
		    0: rom_out<=sin_out;
		    1: rom_out<=rectangle_out;
		    2: rom_out<=triangle_out;
			 3: rom_out<=sawtooth_out;
		    default: rom_out<=0;
		  endcase
		end
  end
		  
always@(wave_key)
begin
case(wave_key)
	0:SEG_WAVE<=8'b1000000; 
	1:SEG_WAVE<=8'b1111001;
	2:SEG_WAVE<=8'b0100100;
	3:SEG_WAVE<=8'b0110000;
	4:SEG_WAVE<=8'b0011001; 
	5:SEG_WAVE<=8'b0010010;
	6:SEG_WAVE<=8'b0000010; 
	7:SEG_WAVE<=8'b1111000; 
	8:SEG_WAVE<=8'b0000000; 
	9:SEG_WAVE<=8'b0010000; //8段译码值
	default:SEG_WAVE<=8'b1000000;
endcase
end	

  
endmodule


				