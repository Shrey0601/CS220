`include "A4Q2_1_bit_adder_subtractor.v"

module A4Q2_8_bit_adder_subtractor(
    input [7:0] a,
    input [7:0] b,
    input opcode,
    output [7:0] sum,
    output overflow
);

 wire c1,c2,c3,c4,c5,c6,c7,c8;

 A4Q2_1_bit_adder_subtractor a1(a[0], b[0], opcode, opcode, sum[0], c1);
 A4Q2_1_bit_adder_subtractor a2(a[1], b[1], c1, opcode, sum[1], c2);
 A4Q2_1_bit_adder_subtractor a3(a[2], b[2], c2, opcode, sum[2], c3);
 A4Q2_1_bit_adder_subtractor a4(a[3], b[3], c3, opcode, sum[3], c4);
 A4Q2_1_bit_adder_subtractor a5(a[4], b[4], c4, opcode, sum[4], c5);
 A4Q2_1_bit_adder_subtractor a6(a[5], b[5], c5, opcode, sum[5], c6);
 A4Q2_1_bit_adder_subtractor a7(a[6], b[6], c6, opcode, sum[6], c7);
 A4Q2_1_bit_adder_subtractor a8(a[7], b[7], c7, opcode, sum[7], c8);

 assign overflow = c7^c8;



 endmodule
