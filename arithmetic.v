module arithmetic (
    input [3:0] a,b,
    input [1:0] s,
    input cin,
    output [3:0] sum,
    output cout
    
);
    wire [3:0] d;
    mux_4x1 m0 (.a({1'b1, 1'b0, ~b[0], b[0]}), .s(s), .y(d[0]));
    mux_4x1 m1 (.a({1'b1, 1'b0, ~b[1], b[1]}), .s(s), .y(d[1]));
    mux_4x1 m2 (.a({1'b1, 1'b0, ~b[2], b[2]}), .s(s), .y(d[2]));
    mux_4x1 m3 (.a({1'b1, 1'b0, ~b[3], b[3]}), .s(s), .y(d[3]));

    /*mux_4x1 m0 (.a[0](b[0]), .a[1](~b[0]), .a[2](0), .a[3](1), .s(s), .y(d[0]));
    mux_4x1 m1 (.a[0](b[1]), .a[1](~b[1]), .a[2](0), .a[3](1), .s(s), .y(d[1]));
    mux_4x1 m2 (.a[0](b[2]), .a[1](~b[2]), .a[2](0), .a[3](1), .s(s), .y(d[2]));
    mux_4x1 m3 (.a[0](b[3]), .a[1](~b[3]), .a[2](0), .a[3](1), .s(s), .y(d[3]));*/

    ripple_carry_adder_4bit r (.a(a), .b(d), .cin(cin), .sum(sum), .cout(cout));
    
endmodule