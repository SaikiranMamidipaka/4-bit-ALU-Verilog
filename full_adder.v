module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    //always @(*) begin
        
    assign  sum = a^b^cin;
    assign  cout = (a&b)|(b&cin)|(cin&a);
    //end
endmodule