module shift_register(q, d, en, clk, rst);
    input[3:0] d;
    input en;
    input clk;
    input rst;
    output[3:0] q;

    reg[7:0] b; // 8-bit storage

    always @(posedge clk) begin
        if(!rst) begin
            b <= 8'b0; // clear storage; set all bits to zero
            b[3:0] <= d; // set 4 rightmost bits of b to whatever value d is
        end
        else if(en) // if en = 1
            b <= b << 1; // (<<) shift operator; shift b's bits by 1 to the left
    end

    /*
        assign keyword - continuously assign a value 
                         even as that value changes
    */
    assign q = b[7:4]; // explicit assignment
endmodule