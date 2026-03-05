

module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S
);


wire c1, c2, c3, c4;
wire [3:0] s0;
    
    full_adder fa0(A[0], B[0], 1'b0, s0[0], c1);
    full_adder fa1(A[1], B[1], c1, s0[1], c2);
    full_adder fa2(A[2], B[2], c2, s0[2], c3);
    full_adder fa3(A[3], B[3], c3, s0[3], c4);

wire c5, c6, c7;
    // Add the end-around carry from the MSB back to the LSB (1's complement rule)
    full_adder fa4(s0[0], c4, 1'b0, S[0], c5);
    full_adder fa5(s0[1], 1'b0, c5, S[1], c6);
    full_adder fa6(s0[2], 1'b0, c6, S[2], c7);
    full_adder fa7(s0[3], 1'b0, c7, S[3], );
    
endmodule  



