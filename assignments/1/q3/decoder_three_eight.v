`include "decoder_two_four.v"
module decoder_three_eight (
    input in0,
    input in1,
    input in2,
    input en,
    output d0,
    output d1,
    output d2,
    output d3,
    output d4,
    output d5,
    output d6,
    output d7
);
   decoder_two_four a0(in0, in1, ((~in2) & en), d0, d1, d2, d3);
   decoder_two_four a1(in0, in1, (in2 & en), d4, d5, d6, d7);
   
    
endmodule