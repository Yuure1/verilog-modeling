module testbench;
    reg[3:0] bcd;
    wire[0:6] leds;

    parameter n_count = 16; // parameter equivalent to const in C++
    integer k;

    bcd_7seg dut(.leds(leds), .bcd(bcd));

    initial begin
        for(k=0; k<n_count; k=k+1) begin
            if(!k) bcd = 4'b0;
            else bcd = bcd + 1'b1; # 10;
        end
    end
endmodule
