module counter_6_tb();
    reg RST;
    reg CLK;
    wire [3:0] CNT;
    Counter6 counter(
    .CLK(CLK),
    .RST(RST),
    .CNT(CNT));
    initial
    begin
        CLK=1'b0;
        RST=1'b1;
        #4 RST=1'b0;
    end
    always #1 CLK<=~CLK;
endmodule
