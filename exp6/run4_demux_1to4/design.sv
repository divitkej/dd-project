module demux_1x4 (D, S1, S0, Y3, Y2, Y1, Y0);
input D, S1, S0;
output Y3, Y2, Y1, Y0;
assign Y0 = D & ~S1 & ~S0;
assign Y1 = D & ~S1 & S0;
assign Y2 = D & S1 & ~S0;
assign Y3 = D & S1 & S0;
endmodule
