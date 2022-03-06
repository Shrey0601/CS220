`timescale 1ns/1ns
`include "A4Q1_3_bit_gray_code_counter.v"

module A4Q1_3_bit_gray_code_counter_tb;
reg clk,reset;                       //inputs
wire out;                                //output

gray_code_counter g1(clk, reset, out);

always #1 clk=~clk;

initial begin
    $dumpfile("A4Q1_3_bit_gray_code_counter_tb.vcd");
    $dumpvars(0, A4Q1_3_bit_gray_code_counter_tb);

     $monitor($time, , ,"clk=%b",clk,,"out=%b",out,,"reset=%b",reset,,"inp=%b",inp);

    reset = 0;
    clk = 0;
    
end

initial begin 
    #100 $finish;
end

endmodule
