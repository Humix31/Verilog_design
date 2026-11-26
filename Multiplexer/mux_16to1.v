module mux_16to1(
    input [15:0] D,
    input [3:0] S,
    output Y
);

assign Y = D[S];

endmodule