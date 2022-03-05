module gray_code_counter(
    input clk,           //clock
    input reset,         //reset signal
    input inp,           //input terminal
    output reg out       //output terminal
);

//--------------Internal Variables-------------------

reg [2:0] curr_state, next_state;
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b011, S3 = 3'b010,
          S4 = 3'b110, S5 = 3'b111, S6 = 3'b101, S7 = 3'b100;

//--------------Combinational logic---------------------

always @(curr_state or inp)
begin : gray_combi
    case(curr_state)
        S0 : if (inp == 1'b1)  begin
                 next_state = S1;
             end
             else begin
                 next_state = curr_state;
             end
        S1 : if (inp == 1'b1)  begin
                 next_state = S2;
             end
             else begin
                 next_state = curr_state;
             end
        S2 : if (inp == 1'b1)  begin
                 next_state = S3;
             end
             else begin
                 next_state = curr_state;
             end
        S3 : if (inp == 1'b1)  begin
                 next_state = S4;
             end
             else begin
                 next_state = curr_state;
             end
        S4 : if (inp == 1'b1)  begin
                 next_state = S5;
             end
             else begin
                 next_state = curr_state;
             end
        S5 : if (inp == 1'b1)  begin
                 next_state = S6;
             end
             else begin
                 next_state = curr_state;
             end
        S6 : if (inp == 1'b1)  begin
                 next_state = S7;
             end
             else begin
                 next_state = curr_state;
             end
        S7 : if (inp == 1'b1)  begin
                 next_state = S0;
             end
             else begin
                 next_state = curr_state;
             end
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

always @(curr_state or inp) begin
    case(curr_state)
        S0 : out = 1'b0;
        S1 : out = 1'b0;
        S2 : out = 1'b0;
        S3 : out = 1'b0;
        S4 : out = 1'b0;
        S5 : out = 1'b0;
        S6 : out = 1'b0;
        S7 : if (inp == 1'b0) begin
            out = 1'b0;
            end
            else begin
                out = 1'b1;
            end
        default : out = 1'b0;
    endcase
end
endmodule