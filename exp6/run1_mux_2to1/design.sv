module mux_2x1 (I1, I0, S, Y);
input I1, I0, S;
output Y;
wire p, q;
assign p = I0 & ~S;
assign q = I1 & S;
assign Y = p | q;
endmodule
