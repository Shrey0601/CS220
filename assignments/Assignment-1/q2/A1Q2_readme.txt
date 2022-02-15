module one_bit_comparator :
    Has 5 inputs a,b(values), agbi(a greater than b input),aebi(a equal b input),albi(a less than b input)
    and 3 outputs agbo(a greater than b output),aebo(a equal b output),albo(a less than b output)

    If previous bit is equal in a,b(aebi=1) then a{l,b}go is assigned according to current values of a,b else a{l,g}bi respectively
    aebo is 1 if pevious bit was equal and this bit also equal else 0

module eight_bit_comparator :
    It has 3 outputs agb,aeb,alb(as described above) and 2 inputss a,b
    It consists of 8 eight_bit_comparator(c0-c7)

    Here MSB is compared first
    if it is equal then next is tested
    if it is less then all preceding bits are assigned less(albo=1)
    if it is greater then all preceding bits are assigned greater(agbo=1)

    final output(in LSB) goes into agb,aeb,alb

module eight_bit_comparator_tb :
    It is a test bench file for eight_bit_comparator.
    Tests it on 15 different inputs, print output on terminal and produces a output file "result.vcd" for graphs.
