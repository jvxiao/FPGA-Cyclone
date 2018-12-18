module key(clk,key_in,key);

input clk;
input [3:0]key_in;//四个按键输入

output [3:0]key;

reg [3:0]key1;
reg [3:0]key2;
reg [3:0]key3;//消抖时用

wire [3:0]key;

always@(posedge clk)
  begin
    key1<=key_in;//key_in,key,1的初始状态都是1111，若key_in有变化赋值给key1
	 key2<=key1; 
	 key3<=key2; //key2为key1前一时刻的值,在经过20ms后若key_in还是那个值此时key2与key1值相同
  end
assign key=(key1|key2|key3);//key为两个值逻辑或，实现消抖

endmodule