`include "1_bit_adder.v"
module adder(
    sum,cout,a,b,cin
);
    output[7:0] sum;
    output cout;
    input cin;
    input[7:0] a,b;
    wire c1,c2,c3,c4,c5,c6,c7;
    bitadd b1(sum[0],c1,a[0],b[0],cin);
    bitadd b2(sum[1],c2,a[1],b[1],c1);
    bitadd b3(sum[2],c3,a[2],b[2],c2);
    bitadd b4(sum[3],c4,a[3],b[3],c3);
    bitadd b5(sum[4],c5,a[4],b[4],c4);
    bitadd b6(sum[5],c6,a[5],b[5],c5);
    bitadd b7(sum[6],c7,a[6],b[6],c6);
    bitadd b8(sum[7],cout,a[7],b[7],c7);
endmodule