`timescale 1ns/1ns
`include "A4Q1_3_bit_gray_code_counter.v"

module A4Q1_3_bit_gray_code_counter_tb;
reg inp,clk,reset;                       //inputs
wire out;                                //output

gray_code_counter g1(inp, clk, reset, out);

always #1 clk=~clk;

initial begin
    $dumpfile("A4Q1_3_bit_gray_code_counter_tb.vcd");
    $dumpvars(0, A4Q1_3_bit_gray_code_counter_tb);

     $monitor($time, , ,"clk=%b",clk,,"out=%b",out,,"reset=%b",reset,,"inp=%b",inp);

    reset = 0;
    clk = 0;
    inp = 0;

    //15 different input sequences to test the code

   #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1;
   reset = 0;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 1; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 0; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 0; #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 0; #2 inp = 1; #2 inp = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 inp = 0; #2 inp = 0; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 1; #2 inp = 0;
   reset = 1;
   #5;
   reset = 0;
end

initial begin 
    #317 $finish;
end

endmodule