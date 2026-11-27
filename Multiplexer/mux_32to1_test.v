module mux_32to1_test;

reg [31:0] D;
reg [4:0] S;
wire Y;

integer i;

mux_32to1 uut(
    .D(D),
    .S(S),
    .Y(Y)
);

initial begin

    $dumpfile("mux_32to1.vcd");
    $dumpvars(0, mux_32to1_test);

    D = 32'hA5C3F00F;

    for (i = 0; i < 32; i = i + 1) begin
        S = i;
        #10;
    end

    $finish;

end

initial begin
    $monitor("Time=%0t | S=%b | Y=%b", $time, S, Y);
end

endmodule