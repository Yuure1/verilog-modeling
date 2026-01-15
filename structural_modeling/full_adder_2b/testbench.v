module testbench;
    reg[1:0] a, b; // must be a bus like in the module file
    wire[2:0] s;

    full_adder_2b dut(.s(s), .A(a), .B(b));

    initial begin
        a=0; b=0; #10; // initial value
        repeat(4) begin 
            repeat(3) begin // concatenate b 3 times
                b = b + 1; #10;
            end
            b = 0; // set b back to 0
            a = a + 1; #10;     // concatenate a; repeat concatenating b
        end
    end
endmodule