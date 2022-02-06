`timescale 1ns /1ns
`include "A1Q3_decoder_three_eight.v"

module decoder_tb ;
   reg in0, in1, in2, en;
   wire d0 ,d1 ,d2 ,d3 ,d4 ,d5 ,d6 ,d7 ;

   decoder_three_eight a(in0 ,in1 ,in2 ,en ,d0 ,d1 ,d2 ,d3 ,d4 ,d5 ,d6 ,d7);

    always #5 in0 = ~in0;
    always #10 in1 = ~in1;
    always #20 in2 = ~in2;
    always #40 en = ~en;

    initial begin

        $dumpfile("decoder_tb.vcd");
        $dumpvars(0, decoder_tb);
        
        in0 = 0;
        in1 = 0;
        in2 = 0;
        en = 1;

        #80
        $finish;

    end
    
    initial begin
        $monitor("TIME:%d , enable:%d , input:%d%d%d , output:%d%d%d%d%d%d%d%d",$time,en,in2,in1,in0,d7,d6,d5,d4,d3,d2,d1,d0);
    end
endmodule