module mux_2to1_test;
    reg A;
    reg B;
    reg s;
    wire Y;

    mux_2to1 uut (A, B, s, Y);

    initial begin
        $dumpfile("mux_2to1.vcd");
        $dumpvars(0, mux_2to1_test);
        A = 0; B = 0; s = 0;
        #10;

        A = 0; B = 1; s = 0;
        #10;
        
        A = 1; B = 0; s = 1;
        #10;

  
        A = 1; B = 1; s = 1;
        #10;

        $finish;
    end
endmodule