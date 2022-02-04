module test (
    
);
    reg[3:0] b;
    wire out;
    initial begin
        clk=0;
        b=0;
    end
    always * begin
        b[0]<=#5 ~b[0];
        b[1]<=#10 ~b[1];
        b[2]<=#20 ~b[2];
        b[3]<=#40 ~b[3];
        #5;
    end
    and(out,{b});
endmodule