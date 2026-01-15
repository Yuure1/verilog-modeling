module half_adder(Sum, Cout, A, B);
    input A, B;
    output Sum, Cout;
    wire[3:0] w;

    not u1(w[0], A);
    not u2(w[1], B);
    and u3(Cout, A, B);
    and u4(w[2], w[0], B);
    and u5(w[3], w[1], A);
    or u6(Sum, w[2], w[3]);

endmodule
