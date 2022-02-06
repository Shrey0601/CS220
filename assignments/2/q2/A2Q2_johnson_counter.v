module johnson_counter(Q, rst, clk);
    input rst, clk;
    output reg[7:0] Q;
    
    always @(negedge rst or posedge clk)
        if(rst)
            Q <= 0;
        else
            Q <= {{Q[6:0]},{~Q[7]}};
endmodule