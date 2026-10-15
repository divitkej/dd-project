module mux_2x1 (I1, I0, S, Y);
input I1, I0, S;
output Y;
assign Y = (S & I1) | (~S & I0);
endmodule

module not_using_mux (A, Y);
input A;
output Y;
mux_2x1 M1(1'b0, 1'b1, A, Y);
endmodule
