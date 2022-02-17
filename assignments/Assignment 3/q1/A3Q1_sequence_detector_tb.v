`timescale 1ns /1ns
`include "A3Q1_sequence_detector.v"

module A3Q1_sequence_detector_tb;
reg in,clk,reset;
wire out;

sequence_detector s1(clk, reset, in, out);

always #1 clk=~clk;


initial begin
    $dumpfile("A3Q1_sequence_detector_tb.vcd");
    $dumpvars(0, A3Q1_sequence_detector_tb);

     $monitor($time, , ,"clk=%b",clk,,"out=%b",out,,"reset=%b",reset,,"in=%b",in);

    reset = 0;
    clk = 0;
    in = 0;

    // 15 different input sequences to test the code 

   #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 1; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 0; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 0; #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 0; #2 in = 1; #2 in = 1;
   reset = 1;
   #5;
   reset = 0;

   #2 in = 0; #2 in = 0; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 1; #2 in = 0;
   reset = 1;
   #5;
   reset = 0;

end

initial begin 
    #317 $finish;
end

endmodule


    

