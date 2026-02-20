module testbench;
    reg clkIn;
    wire clkOut;
    wire clkOut2; 

    clk_div #(.ticksAtHalfSec(4)) dut(
        .clkOut(clkOut),
        .clkOut2(clkOut2),
        .clkIn(clkIn)
    );

    initial clkIn = 0; // initialize value 
    always #1 clkIn = ~clkIn;
endmodule