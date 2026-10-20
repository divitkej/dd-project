module decoder_2to4 (A1, A0, E, Y3, Y2, Y1, Y0);
input A1, A0, E;
output Y3, Y2, Y1, Y0;
assign Y0 = (~A1 & ~A0 & E);
assign Y1 = (~A1 & A0 & E);
assign Y2 = (A1 & ~A0 & E);
assign Y3 = (A1 & A0 & E);
endmodule

module decoder_3to8 (A2, A1, A0, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);
input A2, A1, A0;
output Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0;
wire not_a2;
not N1(not_a2, A2);
decoder_2to4 D1(A1, A0, not_a2, Y3, Y2, Y1, Y0);
decoder_2to4 D2(A1, A0, A2, Y7, Y6, Y5, Y4);
endmodule
