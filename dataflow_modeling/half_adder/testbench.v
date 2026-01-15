module testbench;
    reg a, b;
    wire sum, cout;

    half_adder dut(.Sum(sum), .Cout(cout), .A(a), .B(b));

    initial begin
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
    end
endmodule
