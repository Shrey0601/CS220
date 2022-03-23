`include "A5Q1_GCD.v"
module GCD_calc (
);
    reg[7:0] a,b;
    wire[7:0] cout;
    GCD g(cout,a,b);
    initial begin
        a=15;b=10;
        #5;
        a=25;b=20;
        #5;
        a=35;b=30;
        #5;
        a=45;b=40;
        #5;
        a=55;b=50;
        #5;
        a=65;b=60;
        #5;
        a=75;b=70;
        #5;
        a=85;b=80;
        #5;
        a=95;b=90;
        #5;
        a=105;b=100;
        #5;
        a=15;b=21;
        #5;
        a=115;b=110;
        #5;
        a=125;b=120;
        #5;
        a=135;b=130;
        #5;
        a=151;b=210;
        #5;
        $finish;
    end
    // initial begin
    //     $dumpfile("result.vcd");
    //     $dumpvars(0,);
    // end
    initial begin
        $monitor("TIME: %d, a:%d, b:%d, GCD:%d",$time,a,b,cout[7:0]);
    end
endmodule