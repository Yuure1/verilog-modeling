module full_adder(Sum, Cout, A, B, Cin);
    input A, B, Cin;
    output Sum, Cout;
    wire[2:0] w;

    xor u1(w[0], A, B);
    xor u2(Sum, w[0], Cin);
    and u3(w[1], w[0], Cin);
    and u4(w[2], A, B);
    or u5(Cout, w[1], w[2]);

endmodule
