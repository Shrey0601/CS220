module johnson_counter(Q, rst, clk);
    input rst, clk;
    output reg[7:0] Q;
    
    always @(negedge rst or posedge clk)
        if(rst)
            Q = 0;
        else
            Q = {Q[6],Q[5],Q[4],Q[3],Q[2],Q[1],Q[0],~Q[7]};
endmodule