module counter_99sec(q, q2, clkIn, rst);
    input clkIn;
    input rst;

    output[6:0] q; // 7-bit digit output
    output q2; // led indicator

    clk_div divider( // change parameter ticksAtHalfSec to smaller number to verify design on testbench
        .clkOut(clk),
        .clkOut2(q2),
        .clkIn(clkIn)
    );

    reg[6:0] startNum = 7'd99; // number to count from
    reg[6:0] endNum = 7'd0; // number to count until to

    always @(posedge clk, negedge rst) begin
        if(!rst) startNum <= 7'd99;
        else if(startNum == endNum) startNum <= 7'd99;
        else startNum <= startNum - 7'd1;
    end

    assign q = startNum;
endmodule