// Define a 2-4 decoder
module decoder_two_four (
    input in0,
    input in1,
    input en,
    output d0,
    output d1,
    output d2,
    output d3
);
    
    // Assigning the four outputs of the decoder given the two inputs and the enable signal

   assign d0 = en & (~in0) & (~in1) ;
   assign d1 = en & in0 & (~in1) ;
   assign d2 = en & (~in0) & in1 ;
   assign d3 = en & in0 & in1 ;
       
endmodule
