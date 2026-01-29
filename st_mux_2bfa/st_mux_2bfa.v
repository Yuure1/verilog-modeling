module st_mux_2bfa(y, A, B);
    input[1:0] A, B;
    output[0:6] y;
    wire[2:0] w;

    mux_2bfa adder(
        .s({w[2], w[1], w[0]}),
        .A({A[1], A[0]}),
        .B({B[1], B[0]})
    );

    bcd_7seg decoder(
        .leds(y),
        .bcd({1'b0, w[2], w[1], w[0]}) 
    );

endmodule