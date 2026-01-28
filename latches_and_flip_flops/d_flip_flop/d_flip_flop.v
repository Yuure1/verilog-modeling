module d_flip_flop(q, d, clk, rst);
    input d;
    input clk;
    input rst;
    output reg q;

    always @(posedge clk) begin
        if(!rst) q <= 0; // (<=) non-blocking operator; parallel execution of statements in a sequential block
        else q <= d;
    end
endmodule