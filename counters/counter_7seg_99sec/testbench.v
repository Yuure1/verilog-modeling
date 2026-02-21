module testbench;
    reg rst;
    reg clkIn;
    wire indicator; // led clock pulse indicator
    wire[0:6] digit0; // lsb
    wire[0:6] digit1; // msb

    counter_7seg_99sec dut(
        .digit1(digit1),
        .digit0(digit0),
        .indicator(indicator),
        .clkIn(clkIn), 
        .rst(rst)
    );

    initial clkIn = 1'b0;
    always #1 clkIn = ~clkIn;

    initial begin
        rst = 1;
    end
endmodule