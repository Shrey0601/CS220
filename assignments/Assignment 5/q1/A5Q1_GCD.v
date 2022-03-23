module GCD (
    out,u,v
);
    input [7:0] u,v;
    output reg [7:0] out;
    reg [7:0] X,Y,count;
    always @(u or v) begin
        X=u;
        Y=v;
        count=0;
        while (X!=Y) begin
            if(X[0]==0 & Y[0]==0) begin
                X=X>>1;
                Y=Y>>1;
                count=count+1;
            end
            else if(X[0]==1 & Y[0]==0)begin
                Y=Y>>1;
            end
            else if (X[0]==0 & Y[0]==1)begin
                X=X>>1;
            end
            else begin
                if (X>=Y) begin
                    X=(X-Y)>>1;
                end
                else begin
                    Y=(Y-X)>>1;
                end
            end
        end
        while(count>0)begin
            X=X<<1;
            count=count-1;
        end
        out=X;
    end
    

endmodule