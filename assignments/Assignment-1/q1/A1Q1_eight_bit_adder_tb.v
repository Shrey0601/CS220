`include "A1Q1_eight_bit_adder.v"
module eight_bit_adder_tb (
);
    reg[7:0] a,b,result;
    reg cin;
    wire [7:0] sum;
    
    wire cout;
    eight_bit_adder add1(sum,cout,a,b,cin);
    initial begin
        a=15;b=10;cin=1;
        #5;
        a=25;b=20;cin=0;
        #5;
        a=35;b=30;cin=1;
        #5;
        a=45;b=40;cin=0;
        #5;
        a=55;b=50;cin=1;
        #5;
        a=65;b=60;cin=0;
        #5;
        a=75;b=70;cin=1;
        #5;
        a=85;b=80;cin=0;
        #5;
        a=95;b=90;cin=1;
        #5;
        a=105;b=100;cin=0;
        #5;
        a=15;b=21;cin=1;
        #5;
        a=115;b=110;cin=0;
        #5;
        a=125;b=120;cin=1;
        #5;
        a=135;b=130;cin=0;
        #5;
        a=151;b=210;cin=1;
        #5;
        $finish;
    end
    initial begin
        $dumpfile("result.vcd");
        $dumpvars(0,eight_bit_adder_tb);
    end
    initial begin
        $monitor("TIME: %d, a:%d, b:%d, cin:%d, sum:%d, cout:%d",$time,a,b,cin,sum,cout);
    end
endmodule