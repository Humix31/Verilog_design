module mux_4to1_test;

reg A, B, C, D;
reg s1, s0;
wire Y;

mux_4to1 uut(A, B, C, D, s1, s0, Y);

initial begin

    $dumpfile("mux_4to1.vcd");
    $dumpvars(0, mux_4to1_test);

    A=0; B=1; C=0; D=1;

    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;

    $finish;

end

endmodule