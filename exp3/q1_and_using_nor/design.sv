module and_nor(input a, b, output y);
  wire w1, w2;
  nor(w1, a, a);
  nor(w2, b, b);
  nor(y, w1, w2);
endmodule
