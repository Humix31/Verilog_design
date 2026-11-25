module mux_8to1_test;

reg D0,D1,D2,D3,D4,D5,D6,D7;
reg S2,S1,S0;
wire Y;

mux_8to1 uut(D0,D1,D2,D3,D4,D5,D6,D7,S2,S1,S0,Y);

initial begin

    $dumpfile("mux_8to1.vcd");
    $dumpvars(0,mux_8to1_test);

    D0=0; D1=1; D2=0; D3=1;
    D4=0; D5=1; D6=0; D7=1;

    S2=0; S1=0; S0=0; #10;
    S2=0; S1=0; S0=1; #10;
    S2=0; S1=1; S0=0; #10;
    S2=0; S1=1; S0=1; #10;
    S2=1; S1=0; S0=0; #10;
    S2=1; S1=0; S0=1; #10;
    S2=1; S1=1; S0=0; #10;
    S2=1; S1=1; S0=1; #10;

    $finish;

end

endmodule