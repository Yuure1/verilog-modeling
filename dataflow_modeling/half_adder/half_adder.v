module half_adder(Sum, Cout, A, B);
    input A, B;
    output Sum, Cout;

    /* Symbols
        ^ - xor
        | - or
        & - and
    */

    assign Sum = A^B;
    assign Cout = A&B;

endmodule
