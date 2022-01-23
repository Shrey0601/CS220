module one_bit_adder :
    This has three input a,b(values),cin(carry in) and two outputs sum (summation of a,b), cout(carry out)
    sum = cin xor (a xor b)     //xor is basically cyclic sum
    cout = ((a xor b) and cin) or (a and b)

module eight_bit_adder :
    Has same input output as one_bit_adder but input a,b and output sum are 8-bit
    It has eight one bit adders(b1-b8). b(i) cout is connected to cin of b(i+1)

module eight_bit_adder_tb :
    It is a test bench file for eight_bit_adder.
    Tests it on 15 different inputs, print output on terminal and produces a output file "result.vcd" for graphs.