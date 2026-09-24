module gates_using_nand (Y_NOT,Y_AND,Y_OR,Y_XOR,A,B);
input A,B;
output Y_NOT,Y_AND,Y_OR,Y_XOR;
wire w1,w2,w3,w4,w5,w6;
nand g1 (Y_NOT,A,A);
nand g2 (w1,A,B);
nand g3 (Y_AND,w1,w1);
nand g4 (w2,A,A);
nand g5 (w3,B,B);
nand g6 (Y_OR,w2,w3);
nand g7 (w4,A,B);
nand g8 (w5,A,w4);
nand g9 (w6,B,w4);
nand g10 (Y_XOR,w5,w6);
endmodule
