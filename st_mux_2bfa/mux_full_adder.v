module mux_full_adder(Sum, Cout, A, B, Cin);
    input A, B, Cin;
    output Sum, Cout;

    mux_4x1 fa1(
        .y(Cout),
        .i({1'b1, Cin, Cin, 1'b0}), // from shannon's decomposition method 
        .s({A, B})  // { } since s is 2 bits
    );

    mux_4x1 fa2(
        .y(Sum),
        .i({Cin, ~Cin, ~Cin, Cin}), 
        .s({A, B})  
    );
endmodule
