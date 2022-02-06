`include "A2Q2_johnson_counter.v"
module johnsontstbnch;
    reg rst,clk;
    wire [7:0]q;
    johnson_counter j1(q,rst,clk);

    initial
    begin
        clk=0;
        rst = 1;

        // $monitor($time, , ,"c=%b", , ,clk, , ,"r=%b", , ,rst, ,"q=%b", ,q);
        $monitor("TIME:%d clk:%d rst:%d Q:%b",$time,clk,rst,q);
        #2 rst =0;
    end

    always #1 clk = ~clk;

    initial #32 $finish;

endmodule