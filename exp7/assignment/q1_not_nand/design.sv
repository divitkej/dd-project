module nand_gate (A, B, Y);
input A, B;
output Y;
assign Y = ~(A & B);
endmodule

module not_using_nand (A, Y);
input A;
output Y;
nand_gate N1(A, A, Y);
endmodule
