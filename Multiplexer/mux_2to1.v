module mux_2to1 (
    input A,
    input B,
    input s,
    output Y
);
assign Y=s?B:A;
    
endmodule