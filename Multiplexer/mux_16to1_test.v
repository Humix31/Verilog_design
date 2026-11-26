module mux_16to1_test;

reg [15:0] D;
reg [3:0] S;
wire Y;

mux_16to1 uut (
    .D(D),
    .S(S),
    .Y(Y)
);

initial begin

    $dumpfile("mux_16to1.vcd");
    $dumpvars(0, mux_16to1_test);

    D = 16'hA53C;

    S = 4'b0000; #10;
    S = 4'b0001; #10;
    S = 4'b0010; #10;
    S = 4'b0011; #10;
    S = 4'b0100; #10;
    S = 4'b0101; #10;
    S = 4'b0110; #10;
    S = 4'b0111; #10;
    S = 4'b1000; #10;
    S = 4'b1001; #10;
    S = 4'b1010; #10;
    S = 4'b1011; #10;
    S = 4'b1100; #10;
    S = 4'b1101; #10;
    S = 4'b1110; #10;
    S = 4'b1111; #10;

    $finish;

end

initial begin
    $monitor("Time=%0t | S=%b | Y=%b", $time, S, Y);
end

endmodule