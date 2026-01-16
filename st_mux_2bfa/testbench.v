module testbench;
    reg[1:0] a, b;
    wire[0:6] y;

    st_mux_2bfa dut(.y(y), .A(a), .B(b));

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
