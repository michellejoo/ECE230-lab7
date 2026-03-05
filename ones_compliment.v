

module ones_compliment(
    input  wire [3:0] A,
    input  wire [3:0] B,
    output wire [3:0] S
);

wire [3:0] s0;
wire c1, c2, c3, c4;
    
    full_adder fa0(.A(A[0]), .B(B[0]), .Cin(1'b0), .Y(s0[0]), .Cout(c1));
    full_adder fa1(.A(A[1]), .B(B[1]), .Cin(c1),   .Y(s0[1]), .Cout(c2));
    full_adder fa2(.A(A[2]), .B(B[2]), .Cin(c2),   .Y(s0[2]), .Cout(c3));
    full_adder fa3(.A(A[3]), .B(B[3]), .Cin(c3),   .Y(s0[3]), .Cout(c4));

    assign S = s0 + {3'b000, c4};
    
endmodule  


