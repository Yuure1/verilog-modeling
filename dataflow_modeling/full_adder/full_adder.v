module full_adder(Sum, Cout, A, B, Cin);
    input A, B, Cin;
    output Sum, Cout;

    assign Sum = Cin^A^B;
    assign Cout = Cin&(A^B)|(A&B);

endmodule
