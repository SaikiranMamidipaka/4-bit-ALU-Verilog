/*module alu_tb;


    reg [3:0] a,b;
    reg [1:0] s;
    reg cin;
    reg mode;
    wire [3:0] y;
    wire cout;

    alu uut(a, b, s, cin, mode, y, cout);

    initial begin

        $dumpfile("alu_tb.vcd");
        $dumpvars(0,alu_tb);

        $monitor("time=%0t a=%b b=%b s=%b mode=%b cin=%b y=%b cout=%b",
          $time,a,b,s,mode,cin,y,cout);

       // Test set 1
    a = 4'b1111; b = 4'b0100;

    // Arithmetic mode
    mode = 1'b0;
    s = 2'b00; cin = 1'b0; #10;
    s = 2'b01; cin = 1'b1; #10;
    s = 2'b10; cin = 1'b0; #10;
    s = 2'b11; cin = 1'b1; #10;

    // Logical mode
    mode = 1'b1;
    s = 2'b00; cin = 1'b0; #10;
    s = 2'b01; cin = 1'b0; #10;
    s = 2'b10; cin = 1'b0; #10;
    s = 2'b11; cin = 1'b0; #10;

    // Test set 2
    a = 4'b0011; b = 4'b1010;

    // Arithmetic mode
    mode = 1'b0;
    s = 2'b00; cin = 1'b0; #10;
    s = 2'b01; cin = 1'b1; #10;
    s = 2'b10; cin = 1'b0; #10;
    s = 2'b11; cin = 1'b1; #10;

    // Logical mode
    mode = 1'b1;
    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;

        $finish;

     end
endmodule*/



module alu_tb;

    reg [3:0] a,b;
    reg [1:0] s;
    reg cin;
    reg mode;
    wire [3:0] y;
    wire cout;

    alu uut(a, b, s, cin, mode, y, cout);

    initial begin

        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);

        $monitor("time=%0t a=%b b=%b s=%b mode=%b cin=%b y=%b cout=%b",
                 $time, a, b, s, mode, cin, y, cout);

        // Test set 1
        a = 4'b1111;
        b = 4'b0100;

        // Arithmetic mode
        mode = 1'b0;
        s = 2'b00; cin = 1'b0; #10;
        s = 2'b01; cin = 1'b1; #10;
        s = 2'b10; cin = 1'b0; #10;
        s = 2'b11; cin = 1'b1; #10;

        // Logical mode
        mode = 1'b1;
        s = 2'b00; cin = 1'b0; #10;
        s = 2'b01; cin = 1'b0; #10;
        s = 2'b10; cin = 1'b0; #10;
        s = 2'b11; cin = 1'b0; #10;

        // Test set 2
        a = 4'b0011;
        b = 4'b1010;

        // Arithmetic mode
        mode = 1'b0;
        s = 2'b00; cin = 1'b0; #10;
        s = 2'b01; cin = 1'b1; #10;
        s = 2'b10; cin = 1'b0; #10;
        s = 2'b11; cin = 1'b1; #10;

        // Logical mode
        mode = 1'b1;
        s = 2'b00; cin = 1'b0; #10;
        s = 2'b01; cin = 1'b0; #10;
        s = 2'b10; cin = 1'b0; #10;
        s = 2'b11; cin = 1'b0; #10;

        $finish;

    end

endmodule