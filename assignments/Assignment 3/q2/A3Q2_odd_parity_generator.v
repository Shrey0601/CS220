module odd_parity_generator(
    input clk,
    input reset,
    input [8:1] in,
    output reg[8:1] out
);

//-------------Internal Variables---------------------------

reg [1:0] curr_st, next_st;
parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
initial begin
    curr_st=0;
end
 
//----------Code starts Here------------------------

always @(curr_st or in) begin
    case (in)
        "1": next_st = curr_st + 1;
        "0": next_st = curr_st;
        default: next_st = 0;
    endcase
end

//----------Seq Logic-----------------------------

always @(posedge clk) begin
        if (reset) begin
            curr_st <= S0;
        end
        else begin
            curr_st <= next_st;
        end
end

//----------Output Logic-----------------------------

always @(curr_st or in) begin
    if (in == " ") begin
        case(curr_st)
            S0 : out = "1";
            S1 : out = "0";
            S2 : out = "1";
            S3 : out = "0";
            default : out = "x";
        endcase
    end else begin
        out = in;
    end
end
endmodule







