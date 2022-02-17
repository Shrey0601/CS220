module sequence_detector(
    input clk,
    input reset,
    input in,
    output reg out
);

reg [1:0] curr_st, next_st;

//-------------Internal Variables---------------------------

parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
 
//----------Code starts Here------------------------

always @(curr_st or in) begin
    case(curr_st)
        S0 : if (in == 1'b1)  begin
                 next_st = S1;
             end
             else begin
                 next_st = curr_st;
             end
        S1 : if (in == 1'b0)  begin
                 next_st = S2;
             end
             else begin
                 next_st = curr_st;
             end
        S2 : if (in == 1'b1)  begin
                 next_st = S3;
             end
             else begin
                 next_st = S0;
             end
        S3 : if (in == 1'b0)  begin
                 next_st = S2;
             end
             else begin
                 next_st = S1;
             end
        default : next_st = S0;
    endcase
end

//----------Seq Logic-----------------------------

always@(posedge clk) begin
        if (reset) begin
            curr_st <= S0;
        end
        else begin
            curr_st <= next_st;
        end
end

//----------Output Logic-----------------------------

always @(curr_st or in) begin
    case(curr_st)
        S0 : out = 1'b0 ;
        S1 : out = 1'b0;
        S2 : out = 1'b0;
        S3 : if (in == 1'b0)  begin
                 out = 1'b1;
             end
             else begin
                 out = 1'b0;
             end
        default : out = 1'b0;
    endcase
end
endmodule







