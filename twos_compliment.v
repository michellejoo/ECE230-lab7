
module twos_compliment(
    input  wire [7:0] X,
    output wire [7:0] Y
);
  assign Y = (~X) + 1;
endmodule
