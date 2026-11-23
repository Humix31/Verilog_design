module mux_2to1_test;
    reg A;
    reg B;
    reg s;
    wire Y;

    mux_2to1 uut (A, B, s, Y);

    initial begin
        $dumpfile("mux_2to1.vcd");
        $dumpvars(0, mux_2to1_test);
        // Test case 1: A=0, B=0, s=0
        A = 0; B = 0; s = 0;
        #10;

        // Test case 2: A=0, B=1, s=0
        A = 0; B = 1; s = 0;
        #10;
        
        // Test case 3: A=1, B=0, s=1
        A = 1; B = 0; s = 1;
        #10;

        // Test case 4: A=1, B=1, s=1
        A = 1; B = 1; s = 1;
        #10;

        $finish;
    end
endmodule