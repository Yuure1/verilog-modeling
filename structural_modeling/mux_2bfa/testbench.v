module testbench;
    reg[1:0] a, b;
    wire[2:0] s;

    mux_2bfa dut(.s(s), .A(a), .B(b));

    initial begin
        a=0; b=0; #10;
        repeat(4) begin
            repeat(3) begin
                b = b + 1; #10;
            end
            b = 0;
            a = a + 1; #10;
        end
    end
endmodule