`include "eight_bit_comparator.v"
module eight_bit_comparator_tb ;
    reg [7:0] a,b;
    wire agb,aeb,alb;
    eight_bit_comparator comp(agb,aeb,alb,a,b);
    initial begin
        a=15;b=10;
        #5;
        a=25;b=20;
        #5;
        a=35;b=30;
        #5;
        a=45;b=45;
        #5;
        a=55;b=50;
        #5;
        a=65;b=60;
        #5;
        a=75;b=75;
        #5;
        a=85;b=80;
        #5;
        a=95;b=100;
        #5;
        a=105;b=100;
        #5;
        a=15;b=21;
        #5;
        a=115;b=110;
        #5;
        a=125;b=120;
        #5;
        a=135;b=200;
        #5;
        a=151;b=210;
        #5;
        $finish;
    end
    initial begin
        $dumpfile("result.vcd");
        $dumpvars(0,eight_bit_comparator_tb);
    end
    initial begin
        $monitor("TIME: %d, a:%d, b:%d, a greater:%d, a equal:%d, a smaller:%d",$time,a,b,agb,aeb,alb);
    end
endmodule