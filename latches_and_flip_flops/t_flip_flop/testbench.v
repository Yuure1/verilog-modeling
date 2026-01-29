module testbench;
    reg t;
    reg clk;
    reg rst;
    wire q;

    t_flip_flop dut(.q(q), .t(t), .clk(clk), .rst(rst));
    
    initial clk = 0;
    always #1 clk = ~clk;

    initial begin
        rst=0; t=0; #4;
        rst=0; t=1; #4;
        rst=1; t=0; #4;
        rst=1; t=1; #4;
    end
endmodule