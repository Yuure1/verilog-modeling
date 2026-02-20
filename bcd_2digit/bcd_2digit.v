module bcd_2digit(dec1s, dec10s, binaryNum);
    input[6:0] binaryNum; // 7 bits (can represent any unsigned binary value from 0-99)
    output[0:6] dec10s; // 7-segment display digit @ 10s place
    output[0:6] dec1s; // * * * @ 1s place

    reg[14:0] b; // 15-bit storage for the double-dabble algorithm
    /*
        bits[14:11] - 10s place digit (4 bits each for a max value of 9)
        bits[10:7] - 1s place digit 
        bits[6:0] - original 7-bit binary number to be converted
    */
    reg[3:0] binary10s;
    reg[3:0] binary1s;

    always @(binaryNum) begin
        b = 15'b0; // clear at first 
        b[6:0] = binaryNum;

        repeat(7) begin
            // 10s
            if(b[14:11] >= 4'd5) b[14:11] = b[14:11] + 4'd3;
            // 1s
            if(b[10:7] >= 4'd5) b[10:7] = b[10:7] + 4'd3;

            b = b << 4'b1; // shift b's bits by 1 to the left

        end // repeat end
    end // always end

    assign binary10s = b[14:11];
    assign binary1s = b[10:7];

    assign dec10s = digTo7Seg(binary10s);
    assign dec1s = digTo7Seg(binary1s);

    // function to convert a digit to their 7-segment display representation
    function[0:6] digTo7Seg;
        // parameter/s
        input[3:0] digit; 

        case(digit)
            // for common anode
            4'd0: digTo7Seg = 7'b0000001;
            4'd1: digTo7Seg = 7'b1001111;
            4'd2: digTo7Seg = 7'b0010010;
            4'd3: digTo7Seg = 7'b0000110; 
            4'd4: digTo7Seg = 7'b1001100; 
            4'd5: digTo7Seg = 7'b0100100;
            4'd6: digTo7Seg = 7'b1100000;
            4'd7: digTo7Seg = 7'b0001111;
            4'd8: digTo7Seg = 7'b0000000;
            4'd9: digTo7Seg = 7'b0001100;

            // if no match
            default: digTo7Seg = 7'b1111110;

        endcase
    endfunction
endmodule