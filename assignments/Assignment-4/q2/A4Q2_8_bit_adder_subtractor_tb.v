`timescale 1ns /1ns
`include "A4Q2_8_bit_adder_subtractor.v"

module A4Q2_8_bit_adder_subtractor_tb;

reg [7:0] a,b;
reg opcode;
wire [7:0] sum;
wire overflow;

A4Q2_8_bit_adder_subtractor a1(a, b, opcode, sum, overflow);

initial begin
        a=8'b00000011; b=8'b00000001; opcode=1;
        #5;
        a=8'b00000111; b=8'b00000011; opcode=0;
        #5;
        a=8'b10001011; b=8'b10100001; opcode=1;
        #5;
        a=8'b10100001; b=8'b01111101; opcode=0;
        #5;    
        a=8'b01001011; b=8'b01001011; opcode=0;
        #5;
        a=8'b11001000; b=8'b11011101; opcode=1;
        #5;
        a=8'b00101011; b=8'b00100001; opcode=1;
        #5;
        a=8'b01111110; b=8'b01111001; opcode=0;
        #5;
        a=8'b10101010; b=8'b01010101; opcode=1;
        #5;
        a=8'b10001001; b=8'b01111111; opcode=0;
        #5;
        a=8'b00011011; b=8'b00001001; opcode=1;
        #5;
        a=8'b01111111; b=8'b11111111; opcode=0;
        #5;
        a=8'b00111011; b=8'b00010001; opcode=1;
        #5;
        a=8'b10000011; b=8'b10000111; opcode=0;
        #5;
        a=8'b00001111; b=8'b11110000; opcode=1;
        #5;
        $finish;
end

initial begin
    $dumpfile("A4Q2_8_bit_adder_subtractor_tb.vcd");
    $dumpvars(0, A4Q2_8_bit_adder_subtractor_tb);
end

initial begin
    $monitor("TIME: %d, a:%b, b:%b, opcode:%d, sum:%b, overflow:%d",$time,a,b,opcode,sum,overflow);
end

endmodule
