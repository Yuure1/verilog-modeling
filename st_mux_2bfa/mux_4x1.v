module mux_4x1(y, i, s);
/* 
    s = select input
    i = data input
*/
    input[1:0] s;
    input[3:0] i;
    output reg y;

    always @(i, s) begin
        case(s) // s only because we give a fixed value to i
            2'b00: y = i[0]; 
            2'b01: y = i[1];
            2'b10: y = i[2];
            2'b11: y = i[3];
        endcase
    end
endmodule