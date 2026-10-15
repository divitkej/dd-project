module mux_2x1 (I1, I0, S, Y);
input I1, I0, S;
output Y;
assign Y = (S & I1) | (~S & I0);
endmodule

module xor_using_mux (A, B, Y);
input A, B;
output Y;
wire not_b;
assign not_b = ~B;
mux_2x1 M1(not_b, B, A, Y);
endmodule
