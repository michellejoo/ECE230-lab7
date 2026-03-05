
module twos_compliment(
    input [7:0] X,
    output [7:0] Y
);

    wire [7:0] s0;
    wire c1, c2, c3, c4, c5, c6, c7, c8;
    
    assign s0 = ~X;
    
    full_adder fa0(s0[0], 1'b1, 1'b0, Y[0], c1);
    full_adder fa1(s0[1], 1'b0, c1, Y[1], c2);
    full_adder fa2(s0[2], 1'b0, c2, Y[2], c3);
    full_adder fa3(s0[3], 1'b0, c3, Y[3], c4);
    full_adder fa4(s0[4], 1'b0, c4, Y[4], c5);
    full_adder fa5(s0[5], 1'b0, c5, Y[5], c6);
    full_adder fa6(s0[6], 1'b0, c6, Y[6], c7);
    full_adder fa7(s0[7], 1'b0, c7, Y[7], c8);

endmodule

