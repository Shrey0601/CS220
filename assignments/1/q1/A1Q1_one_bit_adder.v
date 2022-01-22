// Define a l-bit full adder 
module one_bit_adder(sum, cout, a, b, cin) ; 
    // I/O port declarations 
    output sum, cout; 
    input a, b, cin; 

    // Internal nets 
    wire s1, c1, c2; 

    // Instantiate logic gate primitives 
    xor (s1, a, b); 
    and (c1, a, b); 
    xor (sum, s1, cin) ; 
    and (c2, s1, cin); 
    or (cout, c2, c1);
endmodule