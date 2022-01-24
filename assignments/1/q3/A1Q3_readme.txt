module decoder_two_four :
   This has 3 inputs, in0, in1 and en signals and 4 ouputs d0, d1, d2, and d3.
   The outputs are assigned with different and combinatins of in0 and in1 and the not of both signals, which is also and with en signal.
   The ouput is in accordance with the 2-4 decoder, which can be further used in designing a 3-8 decoder.
   
module decoder_three_eight :
   This has 4 inputs in0,in1,in2 and en signal and 8 ouputs as suggested by the name 3-8 decoder.
   This uses 2 2-4 decoders to make a 3-8 decoder.
   The inputs of 2-4 deocder as taken such that the ouputs are in accordance with the truth table of the 3-8 decoder
   Also, the en signal is accomodated by connecting it with the third input ( except the in0 and in1 ) via and gate so that its functionality
   is also satisfied without increasing the number of 2-4 decoders
   
module decoder_tb :
   This is a test bench for 3-8 deocder.
   Tests it on all possible inputs and generated 8 ouputs, d0, d1,.... d7.
  
