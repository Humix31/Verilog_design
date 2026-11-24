module mux_4to1(
    input A,
    input B,
    input C,
    input D,
    input s1,
    input s0,
    output Y
);
assign Y=s1 ? (s0 ? D : C) : (s0 ? B : A);

endmodule