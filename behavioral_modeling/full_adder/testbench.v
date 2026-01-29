module testbench;
    reg a, b, cin;
    wire sum, cout;

    full_adder dut(.Sum(sum), .Cout(cout), .A(a), .B(b), .Cin(cin));

    initial begin
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;
    end
endmodule
