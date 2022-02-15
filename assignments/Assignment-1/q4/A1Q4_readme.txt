module eight_bit_prio_enco :
    It has one 3-bit output d_out and one 8-bit input d_in

    It starts checking from LSB of d_in, when 1 is encountered then d_out is assigned respective value.

module eight_bit_prio_enco_tb :
    It is a test bench file for eight_bit_prio_enco.
    Tests it on 8 different inputs, print output on terminal and produces a output file "result.vcd" for graphs.