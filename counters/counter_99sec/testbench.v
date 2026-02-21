module testbench;
    reg clkIn;
    reg rst;
    wire[6:0] q; // 7-bit digit output
    wire q2; // led indicator

    counter_99sec dut(
        .q(q),
        .q2(q2),
        .clkIn(clkIn),
        .rst(rst)
    );

    initial clkIn = 1'b0;
    always #1 clkIn = ~clkIn;

    initial begin
        rst = 0; #30;
        rst = 1; #100; // counter will only start counting down @ this point
        rst = 0; #40;
    end
endmodule