// Implement module called full_adder
module full_adder(
  input wire A,
  input wire B,
  input wire Cin,
  output wire Y,
  output wire Cout
);
  // Sum
  assign Y = A ^ B ^ Cin;
  // Carry-out
  assign Cout = (A & B)| (A & Cin) | (B & Cin);
endmodule
