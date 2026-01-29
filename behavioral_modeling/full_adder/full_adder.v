module full_adder(Sum, Cout, A, B, Cin);
    input A, B, Cin;
    output reg Sum, Cout;

    always @(A, B, Cin) begin
        case({A, B, Cin})
            3'b000: {Sum, Cout} = 2'b00;
            3'b001: {Sum, Cout} = 2'b10;
            3'b010: {Sum, Cout} = 2'b10;
            3'b011: {Sum, Cout} = 2'b01;
            3'b100: {Sum, Cout} = 2'b10;
            3'b101: {Sum, Cout} = 2'b01;
            3'b110: {Sum, Cout} = 2'b01;
            3'b111: {Sum, Cout} = 2'b11;
        endcase
    end
endmodule
