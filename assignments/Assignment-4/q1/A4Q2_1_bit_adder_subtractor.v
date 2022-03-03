module A4Q2_1_bit_adder_subtractor(
    input a,
    input b,
    input cin,
    input opcode,
    output sum,
    output cout
);

  wire sum,cout;
  assign sum=a^(b^opcode)^cin;
  assign cout=(a&(b^opcode))|((b^opcode)&cin)|(cin&a);

endmodule



