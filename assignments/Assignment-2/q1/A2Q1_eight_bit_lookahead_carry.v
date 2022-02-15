module eight_bit_lookahead_carry (
    carry_bus,cin,p,g
);
    output[8:1] carry_bus;
    input cin;
    input[7:0] p,g;
    assign carry_bus[1]= (g[0]) | (p[0]&cin);
    assign carry_bus[2]= (g[1]) | (p[1]&g[0]) | (p[1]&p[0]&cin);
    assign carry_bus[3]= (g[2]) | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&cin);
    assign carry_bus[4]= (g[3]) | (p[3]&g[2]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&cin);
    assign carry_bus[5]= (g[4]) | (p[4]&g[3]) | (p[4]&p[3]&g[2]) | (p[4]&p[3]&p[2]&g[1]) | (p[4]&p[3]&p[2]&p[1]&g[0]) | (p[4]&p[3]&p[2]&p[1]&p[0]&cin);
    assign carry_bus[6]= (g[5]) | (p[5]&g[4]) | (p[5]&p[4]&g[3]) | (p[5]&p[4]&p[3]&g[2]) | (p[5]&p[4]&p[3]&p[2]&g[1]) | (p[5]&p[4]&p[3]&p[2]&p[1]&g[0]) | (p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin);
    assign carry_bus[7]= (g[6]) | (p[6]&g[5]) | (p[6]&p[5]&g[4]) | (p[6]&p[5]&p[4]&g[3]) | (p[6]&p[5]&p[4]&p[3]&g[2]) | (p[6]&p[5]&p[4]&p[3]&p[2]&g[1]) | (p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0]) | (p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin);
    assign carry_bus[8]= (g[7]) | (p[7]&g[6]) | (p[7]&p[6]&g[5]) | (p[7]&p[6]&p[5]&g[4]) | (p[7]&p[6]&p[5]&p[4]&g[3]) | (p[7]&p[6]&p[5]&p[4]&p[3]&g[2]) | (p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1]) | (p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0]) | (p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin);
endmodule