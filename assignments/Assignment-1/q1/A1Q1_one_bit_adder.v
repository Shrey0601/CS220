module one_bit_adder(sum, cout, a, b, cin) ; 
     
    output sum, cout; 
    input a, b, cin; 
    wire s1, c1, c2; 

    xor (s1, a, b); 
    and (c1, a, b); 
    xor (sum, s1, cin); 
    and (c2, s1, cin); 
    or (cout, c2, c1);
endmodule