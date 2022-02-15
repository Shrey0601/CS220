`include "A1Q2_one_bit_comparator.v"
module eight_bit_comparator (
    agb,aeb,alb,a,b
);
    output agb,aeb,alb;
    wire[6:0] agbw,aebw,albw;
    input [7:0]  a,b;
    assign high=1, low=0;

    one_bit_comparator c7(agbw[6],aebw[6],albw[6],a[7],b[7],low,high,low);
    one_bit_comparator c6(agbw[5],aebw[5],albw[5],a[6],b[6],agbw[6],aebw[6],albw[6]);
    one_bit_comparator c5(agbw[4],aebw[4],albw[4],a[5],b[5],agbw[5],aebw[5],albw[5]);
    one_bit_comparator c4(agbw[3],aebw[3],albw[3],a[4],b[4],agbw[4],aebw[4],albw[4]);
    one_bit_comparator c3(agbw[2],aebw[2],albw[2],a[3],b[3],agbw[3],aebw[3],albw[3]);
    one_bit_comparator c2(agbw[1],aebw[1],albw[1],a[2],b[2],agbw[2],aebw[2],albw[2]);
    one_bit_comparator c1(agbw[0],aebw[0],albw[0],a[1],b[1],agbw[1],aebw[1],albw[1]);
    one_bit_comparator c0(agb,aeb,alb,a[0],b[0],agbw[0],aebw[0],albw[0]);

    
endmodule