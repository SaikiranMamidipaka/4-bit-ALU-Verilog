module alu(

    input [3:0] a,
    input [3:0] b,
    input [1:0] s,
    input cin,
    input mode,          // 0 = arithmetic , 1 = logical
    output [3:0] y,
    output cout

);

wire [3:0] arithmetic_out;
wire [3:0] logical_out;

wire cout_internal;

arithmetic A1(
    .a(a),
    .b(b),
    .s(s),
    .cin(cin),
    .sum(arithmetic_out),
    .cout(cout_internal)
);

logical L1(
    .a(a),
    .b(b),
    .s(s),
    .y(logical_out)
);

assign y = (mode == 1'b0) ? arithmetic_out : logical_out;
assign cout = (mode == 1'b0) ? cout_internal : 1'b0;

endmodule