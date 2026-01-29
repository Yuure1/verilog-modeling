module testbench;
    reg[1:0] s;
    reg[3:0] i;
    wire y;
    
    mux_4x1 dut(.y(y), .i(i), .s(s));

    initial begin
        i = 4'b1011;

        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
    end
endmodule
