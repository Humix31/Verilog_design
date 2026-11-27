module demux_1to4_test;

reg D;
reg [1:0] S;
wire [3:0] Y;

demux_1to4 uut(
    .D(D),
    .S(S),
    .Y(Y)
);

integer i;

initial begin
    $dumpfile("demux_1to4.vcd");
    $dumpvars(0, demux_1to4_test);

    D = 1;

    for(i = 0; i < 4; i = i + 1) begin
        S = i;
        #10;
    end

    D = 0;

    for(i = 0; i < 4; i = i + 1) begin
        S = i;
        #10;
    end

    $finish;
end

initial begin
    $monitor("Time=%0t | D=%b | S=%b | Y=%b", $time, D, S, Y);
end

endmodule