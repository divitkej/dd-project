module mux_2x1 (I1, I0, S, Y);
input I1, I0, S;
output Y;
wire p, q;
assign p = I0 & ~S;
assign q = I1 & S;
assign Y = p | q;
endmodule

module nand_using_mux (A, B, Y);
input A, B;
output Y;
wire not_b;
assign not_b = ~B;
mux_2x1 M1(not_b, 1'b1, A, Y);
endmodule
