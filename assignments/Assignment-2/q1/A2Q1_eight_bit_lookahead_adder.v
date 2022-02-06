`include "A2Q1_eight_bit_lookahead_carry.v"
`include "A2Q1_gen_prop.v"
module eight_bit_lookahead_adder (
    cout,sum,a,b,cin
);
    output cout;
    output[7:0] sum;
    input cin;
    input[7:0] a,b;
    wire[7:0] p,g;

    gen_prop gp1(p,g,a,b);

    wire[8:1] carry_bus;

    eight_bit_lookahead_carry c1(carry_bus,cin,p,g);

    xor(sum[0],a[0],b[0],cin);
    xor(sum[1],a[1],b[1],carry_bus[1]);
    xor(sum[2],a[2],b[2],carry_bus[2]);
    xor(sum[3],a[3],b[3],carry_bus[3]);
    xor(sum[4],a[4],b[4],carry_bus[4]);
    xor(sum[5],a[5],b[5],carry_bus[5]);
    xor(sum[6],a[6],b[6],carry_bus[6]);
    xor(sum[7],a[7],b[7],carry_bus[7]);

    assign cout=carry_bus[8];
    
endmodule