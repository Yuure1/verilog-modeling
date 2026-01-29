module half_adder(Sum, Cout, A, B);
    input A, B;
    output reg Sum, Cout;

    always @(A, B) begin
        case({A, B}) // { } - concatenate into a single bit
            2'b00: {Sum, Cout} = 2'b00;
            2'b01: {Sum, Cout} = 2'b10;
            2'b10: {Sum, Cout} = 2'b10;
            2'b11: {Sum, Cout} = 2'b01;
        endcase
    end
endmodule
