module decoder_two_four (
    input in0,
    input in1,
    input en,
    output d0,
    output d1,
    output d2,
    output d3
);

   assign d0 = en & (~in0) & (~in1) ;
   assign d1 = en & in0 & (~in1) ;
   assign d2 = en & (~in0) & in1 ;
   assign d3 = en & in0 & in1 ;
       
endmodule