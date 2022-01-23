`timescale 1ns/1ps
`include "A1Q4_eight_bit_prio_enco.v"
module eight_bit_prio_enco_tb;
   reg [7:0] d_in;
   wire[2:0] d_out;

   eight_bit_prio_enco a1 (d_out,d_in);

   initial
     begin
    d_in=8'b11000000;
    #5;
    d_in=8'b01100110;
    #5;
    d_in=8'b00110011; 
    #5;
    d_in=8'b00010010;
    #5;
    d_in=8'b01001011;
    #5;
    d_in=8'b01000100;
    #5;
    d_in=8'b00000011;
    #5;
    d_in=8'b01100001;
    #5;
    $finish;
    end // initial begin
    
    initial begin
        $monitor("TIME:%d , d_in:%b , d_out:%b",$time,d_in,d_out);
    end
 endmodule