module mux_2x1 (I1, I0, S, Y);
input I1, I0, S;
output Y;
assign Y = (S & I1) | (~S & I0);
endmodule

module mux_4to1 (I0, I1, I2, I3, S0, S1, Y);
input I0, I1, I2, I3, S0, S1;
output Y;
wire out1, out2;
mux_2x1 M1(I1, I0, S0, out1);
mux_2x1 M2(I3, I2, S0, out2);
mux_2x1 M3(out2, out1, S1, Y);
endmodule
