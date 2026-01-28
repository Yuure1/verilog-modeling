module testbench;
    reg d;
    reg clk;
    reg rst;
    wire q;

    d_flip_flop dut(.q(q), .d(d), .clk(clk), .rst(rst));

    initial clk = 0;
    always #1 clk = ~clk;

    initial begin
        rst=0; d=0; #4;
        rst=0; d=1; #4;
        rst=1; d=0; #4;
        rst=1; d=1; #4;
    end
endmodule