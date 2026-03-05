

module ones_compliment(
    input  wire [3:0] A,
    input  wire [3:0] B,
    output wire [3:0] S
);

wire [3:0] s0;
wire c1, c2, c3, c4;
    
    full_adder fa0(.a(A[0]), .b(B[0]), .Cin(1'b0), .sum(s0[0]), .Cout(c1));
    full_adder fa1(.a(A[1]), .b(B[1]), .Cin(c1),   .sum(s0[1]), .Cout(c2));
    full_adder fa2(.a(A[2]), .b(B[2]), .Cin(c2),   .sum(s0[2]), .Cout(c3));
    full_adder fa3(.a(A[3]), .b(B[3]), .Cin(c3),   .sum(s0[3]), .Cout(c4));

wire d1, d2, d3, d4;

    full_adder fb0(.a(s0[0]), .b(1'b0), .Cin(c4),  .sum(S[0]), .Cout(d1));
    full_adder fb1(.a(s0[1]), .b(1'b0), .Cin(d1),  .sum(S[1]), .Cout(d2));
    full_adder fb2(.a(s0[2]), .b(1'b0), .Cin(d2),  .sum(S[2]), .Cout(d3));
    full_adder fb3(.a(s0[3]), .b(1'b0), .Cin(d3),  .sum(S[3]), .Cout(d4));

endmodule  

