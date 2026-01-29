module bcd_7seg(leds, bcd);
    input[3:0] bcd; // data input in mux
    output reg[0:6] leds; // to reorder led

    always @(bcd) begin
        case(bcd)
            4'd0: leds = 7'b0000001;
            4'd1: leds = 7'b1001111;
            4'd2: leds = 7'b0010010;
            4'd3: leds = 7'b0000110; 
            4'd4: leds = 7'b1001100;
            4'd5: leds = 7'b0100100;
            4'd6: leds = 7'b1100000;
            4'd7: leds = 7'b0001111; 
            4'd8: leds = 7'b0000000;
            4'd9: leds = 7'b0001100;
            default: leds = 7'b1111110;
        endcase
    end
endmodule
