`include "A3Q2_odd_parity_generator.v"
`timescale 1ns/1ps
module odd_parity_generator_tb;
    reg rst,clk,print;
    
    reg [8:1] in;
    wire [8:1]out;
    
    reg [32:1] inp,outp;

    odd_parity_generator g(clk,rst,in,out);

    initial begin
        clk=0;
        print=0;
        rst = 0;
    end

    
    always @(print) begin
        $display("TIME:%d rst:%d in:\"%s\" out:\"%s\"",$time,rst,inp,outp);
    end

    always #0.1 clk = ~clk;

    always @(inp) begin
        for(integer i=0;i<4;i=i+1) begin
            @(posedge clk);
            case (i)
                0: in=inp[32:25];
                1: in=inp[24:17];
                2: in=inp[16:9];
                3: in=inp[8:1];
            endcase
            @(negedge clk);
            outp={outp[24:1],out[8:1]};
        end
        print=~print;
    end

    initial begin
        
        inp="000 ";
        #5 ;
        inp="001 ";
        #5 ;
        inp="010 ";
        #5 ;
        inp="011 ";
        #5 ;
        inp="100 ";
        #5 ;
        inp="101 ";
        #5 ;
        inp="110 ";
        #5 ;
        inp="111 ";
        #5;
        $finish;
    end

endmodule