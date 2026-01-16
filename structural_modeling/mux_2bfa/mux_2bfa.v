module mux_2bfa(s, A, B);
    input[1:0] A, B;
    output[2:0] s;
    wire w;

    mux_full_adder fa1(
        .Sum(s[0]),
        .Cout(w),
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0) // set Cin to ground
    );

    mux_full_adder fa2(
        .Sum(s[1]),
        .Cout(s[2]),
        .A(A[1]),
        .B(B[1]),
        .Cin(w)
    );
    
endmodule