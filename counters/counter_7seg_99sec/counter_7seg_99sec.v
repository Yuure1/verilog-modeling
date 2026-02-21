module counter_7seg_99sec(digit1, digit0, indicator, clkIn, rst);
    input rst;
    input clkIn;
    output indicator; // led clock pulse indicator
    output[0:6] digit0; // lsb
    output[0:6] digit1; // msb

    wire[6:0] numToConvert; // counter output will be the input to the converter

    counter_99sec counter(
        .q(numToConvert),
        .q2(indicator),
        .clkIn(clkIn),
        .rst(rst)
    );

    bcd_2digit converter(
        .dec1s(digit0),
        .dec10s(digit1),
        .binaryNum(numToConvert)
    );

endmodule