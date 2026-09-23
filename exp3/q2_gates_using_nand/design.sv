module gates_nand(input a, b, output ynot, yand, yor, yxor);
  wire w1, w2, w3, w4, w5, w6;
  nand(ynot, a, a);
  nand(w1, a, b);
  nand(yand, w1, w1);
  nand(w2, a, a);
  nand(w3, b, b);
  nand(yor, w2, w3);
  nand(w4, a, b);
  nand(w5, a, w4);
  nand(w6, b, w4);
  nand(yxor, w5, w6);
endmodule
