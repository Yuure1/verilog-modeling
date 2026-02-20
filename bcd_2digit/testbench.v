module testbench;
    // signals
    reg[6:0] binaryNum; 
    wire[0:6] dec10s; 
    wire[0:6] dec1s; 

    // device to test
    bcd_2digit dut(
        .dec1s(dec1s),
        .dec10s(dec10s),
        .binaryNum(binaryNum)
    );

    // apply stimuli
    initial begin
        // set binaryNum to these values
        binaryNum = 7'd12; #10;
        binaryNum = 7'd67; #10;
        binaryNum = 7'd27; #10;
        binaryNum = 7'd99; #10;
    end
endmodule
