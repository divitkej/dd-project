module bin_to_gray (G7,G6,G5,G4,G3,G2,G1,G0,B7,B6,B5,B4,B3,B2,B1,B0);
input B7,B6,B5,B4,B3,B2,B1,B0;
output G7,G6,G5,G4,G3,G2,G1,G0;
assign G7 = B7;
assign G6 = B7^B6;
assign G5 = B6^B5;
assign G4 = B5^B4;
assign G3 = B4^B3;
assign G2 = B3^B2;
assign G1 = B2^B1;
assign G0 = B1^B0;
endmodule
