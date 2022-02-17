`include "A3Q2_odd_parity_generator.v"
module odd_parity_generator_tb;
    reg rst,clk,print;
    // wire [7:0]q;
    // string
    reg [8:1] in;
    wire [8:1]out;
    
    reg [32:1] inp,outt,outp;

    odd_parity_generator g(clk,rst,in,out);

    initial begin
        clk=0;
        print=0;
        rst = 0;
    end

    
    always @(posedge print or negedge print) begin
        $display("TIME:%d rst:%d in:\"%s\" out:\"%s\"",$time,rst,inp,outp);
    end

    always #1 clk = ~clk;

    always @(inp) begin
        for(integer i=0;i<4;i=i+1) begin
            @(negedge clk);
            case (i)
                0: in=inp[32:25];
                1: in=inp[24:17];
                2: in=inp[16:9];
                3: in=inp[8:1];
            endcase
            @(posedge clk);
            outp={outp[24:1],out[8:1]};
        end
        // outp=outt;
        print=~print;
    end

    initial begin
        #1;
        inp="000 ";
        #5;
        inp="001 ";
        #5;
        inp="010 ";
        #5;
        inp="011 ";
        #5;
        inp="100 ";
        #5;
        inp="101 ";
        #5;
        inp="110 ";
        #5;
        inp="111 ";
        #5;
        $finish;
    end

endmodule