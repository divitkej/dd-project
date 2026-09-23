// Q2: Basic gates using only 2-input NAND gates (structural)
module gates_using_nand (
  input  A, B,
  output Y_NOT, Y_AND, Y_OR, Y_XOR
);
  wire w1, w2, w3, w4, w5, w6;

  // 1. NOT gate using NAND
  nand g1 (Y_NOT, A, A);

  // 2. AND gate using NAND
  nand g2 (w1, A, B);
  nand g3 (Y_AND, w1, w1);

  // 3. OR gate using NAND
  nand g4 (w2, A, A);
  nand g5 (w3, B, B);
  nand g6 (Y_OR, w2, w3);

  // 4. XOR gate using NAND
  nand g7  (w4, A, B);
  nand g8  (w5, A, w4);
  nand g9  (w6, B, w4);
  nand g10 (Y_XOR, w5, w6);
endmodule
