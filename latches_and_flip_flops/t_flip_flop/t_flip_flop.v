module t_flip_flop(q, t, clk, rst);
    input t;
    input clk;
    input rst;
    output reg q;

    always @(posedge clk) begin
        if(!rst) q <= 0;
        else if(t) q <= ~q;
    end
endmodule