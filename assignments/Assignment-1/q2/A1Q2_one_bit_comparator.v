module one_bit_comparator (
    agbo,aebo,albo,a,b,agbi,aebi,albi
);
    output agbo,albo,aebo;
    input a,b,agbi,aebi,albi;
    assign aebo = (aebi & (~(a^b))?1:0);
    assign albo = (aebi ? (~a)&b : albi);
    assign agbo = (aebi ? a&(~b) : agbi);
endmodule