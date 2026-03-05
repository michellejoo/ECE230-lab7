
module top(
    input [9:0]  sw,
    output [13:0] led
);

    // half subtractor wires
    wire y_sub, borrow_sub;

    // ones complement wires
    wire [3:0] a_ones = sw[5:2];
    wire [3:0] b_ones = sw[9:6];
    wire [3:0] s_ones;

    // twos complement wires
    wire [7:0] x_twos = sw[9:2];
    wire [7:0] y_twos;

    half_sub halfsub(
        .A(sw[0]),
        .B(sw[1]),
        .Y(y_sub),
        .Borrow(borrow_sub)
    );

    ones_compliment ones(
        .A(a_ones),
        .B(b_ones),
        .S(s_ones)
    );

    twos_compliment twos(
        .X(x_twos),
        .Y(y_twos)
    );

    // led drivers
    assign led[0]  = y_sub;
    assign led[1]  = borrow_sub;
    assign led[2]  = s_ones[0];
    assign led[3]  = s_ones[1];
    assign led[4]  = s_ones[2];
    assign led[5]  = s_ones[3];
    assign led[6]  = y_twos[0];
    assign led[7]  = y_twos[1];
    assign led[8]  = y_twos[2];
    assign led[9]  = y_twos[3];
    assign led[10] = y_twos[4];
    assign led[11] = y_twos[5];
    assign led[12] = y_twos[6];
    assign led[13] = y_twos[7];
endmodule
