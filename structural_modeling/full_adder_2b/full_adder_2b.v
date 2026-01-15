// !! Use block diagram as reference

module full_adder_2b(s, A, B);
    input[1:0] A, B; // bus - [MSB:LSB]
    output[2:0] s;
    wire w;

    full_adder fa1(
        .Sum(s[0]),
        .Cout(w),
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0) // we give a value of 0 as it is connected to ground
    );

    full_adder fa2(
        .Sum(s[1]),
        .Cout(s[2]),
        .A(A[1]),
        .B(B[1]),
        .Cin(w)
    );

endmodule