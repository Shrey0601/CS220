module helper (
    o,g,p,w
);  
    output o;
    input g,p,w;
    assign o = g | ( p&w );
endmodule