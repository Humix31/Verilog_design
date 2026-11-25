module mux_8to1(
    input D0,
    input D1,
    input D2,
    input D3,
    input D4,
    input D5,
    input D6,
    input D7,
    input S2,
    input S1,
    input S0,
    output Y
);

assign Y = S2 ?
           (S1 ? (S0 ? D7 : D6) : (S0 ? D5 : D4)):
           (S1 ? (S0 ? D3 : D2) : (S0 ? D1 : D0));


endmodule