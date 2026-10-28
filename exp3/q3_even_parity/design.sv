module even_parity (Y,A,B,C,D);
input A,B,C,D;
output Y;
assign Y = A^B^C^D;
endmodule
