module mux_32to1(
    input [31:0] D,
    input [4:0] S,
    output Y
);

assign Y = D[S];

endmodule