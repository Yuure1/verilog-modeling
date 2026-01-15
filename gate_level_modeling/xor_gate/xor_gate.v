module xor_gate(Y, A, B); // output always first
    input A, B;
    output Y;
    wire[3:0] w;

    not u1(w[0], A);
    not u2(w[1], B);
    and u3(w[2], w[0], B);
    and u4(w[3], w[1], A);
    or u5(Y, w[2], w[3]);
    
endmodule
