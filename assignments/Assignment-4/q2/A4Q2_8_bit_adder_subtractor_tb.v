`timescale 1ns /1ns
`include "A4Q2_8_bit_adder_subtractor.v"

module A4Q2_8_bit_adder_subtractor_tb;

reg [7:0] a,b;
reg opcode;
wire [7:0] sum;
wire overflow;

A4Q2_8_bit_adder_subtractor a1(a, b, opcode, sum, overflow);

initial begin
        a=15;b=10;opcode=1;
        #10;
        a=25;b=20;opcode=0;
        #10;
        a=35;b=30;opcode=1;
        #10;
        a=45;b=40;opcode=0;
        #10;    
        a=55;b=50;opcode=1;
        #10;
        a=65;b=60;opcode=0;
        #10;
        a=75;b=70;opcode=1;
        #10;
        a=85;b=80;opcode=0;
        #10;
        a=95;b=90;opcode=1;
        #10;
        a=105;b=100;opcode=0;
        #10;
        a=15;b=21;opcode=1;
        #10;
        a=115;b=110;opcode=0;
        #10;
        a=125;b=120;opcode=1;
        #10;
        a=135;b=130;opcode=0;
        #10;
        a=151;b=210;opcode=1;
        #10;
        $finish;
end

initial begin
    $dumpfile("A4Q2_8_bit_adder_subtractor_tb.vcd");
    $dumpvars(0, A4Q2_8_bit_adder_subtractor_tb);
end

initial begin
    $monitor("TIME: %d, a:%d, b:%d, sum:%d, overflow:%d",$time,a,b,sum,overflow);
end

endmodule