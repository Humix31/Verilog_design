module demux_1to2_test;

reg D, S;
wire Y0, Y1;

demux_1to2 uut(
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $dumpfile("demux_1to2.vcd");
    $dumpvars(0, demux_1to2_test);

    D = 0; S = 0; #10;
    D = 1; S = 0; #10;
    D = 0; S = 1; #10;
    D = 1; S = 1; #10;

    $finish;
end

initial begin
    $monitor("D=%b | S=%b | Y0=%b | Y1=%b", D, S, Y0, Y1);
end

endmodule