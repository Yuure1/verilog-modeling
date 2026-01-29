module testbench;
    reg[3:0] d;
    reg en;
    reg clk;
    reg rst;
    wire[3:0] q;

    shift_register dut(.q(q), .d(d), .en(en), .clk(clk), .rst(rst));

    initial begin // assign these values at time unit 0
        clk <= 0;
        d <= 4'b1000;
    end

    always #1 clk = ~clk;

    initial begin
        rst=0; en=0; #4;
        rst=1; en=0; #4;
        rst=1; en=1; #12;
    end
endmodule