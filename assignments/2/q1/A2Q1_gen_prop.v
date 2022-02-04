module gen_prop (
    p,g,a,b
);
    input a,b;
    output p,g;
    and(g,a,b);
    xor(p,a,b);
endmodule