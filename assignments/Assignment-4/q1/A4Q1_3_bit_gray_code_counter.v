module gray_code_counter(
    input clk,           //clock
    input reset,         //reset signal
    output reg out       //output terminal
);

//--------------Internal Variables-------------------

reg [2:0] curr_state, next_state;
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b011, S3 = 3'b010,
          S4 = 3'b110, S5 = 3'b111, S6 = 3'b101, S7 = 3'b100;

//--------------Combinational logic---------------------

always @(curr_state or clk)
begin : gray_combi
    case(curr_state)
        S0 :  next_state = S1;
        S1 :  next_state = S2;
        S2 :  next_state = S3;
        S3 :  next_state = S4;
        S4 :  next_state = S5;
        S5 :  next_state = S6;
        S6 :  next_state = S7;
        S7 :  next_state = S0;
        default : next_state = S0;
    endcase
end

//-------------Sequential logic------------------

always@(posedge clk) 
begin : gray_seq
         if (reset) begin
             curr_state <= S0;
         end
         else begin
             curr_state <= next_state;
         end
end

//--------------Output logic----------------------

always @(curr_state) begin
    case(curr_state)
        S0 : out = 1'b0;
        S1 : out = 1'b0;
        S2 : out = 1'b0;
        S3 : out = 1'b0;
        S4 : out = 1'b0;
        S5 : out = 1'b0;
        S6 : out = 1'b0;
        S7 : out = 1'b1;
        default : out = 1'b0;
    endcase
end
endmodule
