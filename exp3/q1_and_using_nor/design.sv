// Q1: 2-input AND gate using only 2-input NOR gates (structural)
// Y = A & B = ~(~A | ~B) = NOR(NOR(A,A), NOR(B,B))
module and_using_nor (
  input  A, B,
  output Y
);
  wire w1, w2;
  nor g1 (w1, A, A);   // w1 = ~A
  nor g2 (w2, B, B);   // w2 = ~B
  nor g3 (Y, w1, w2);  // Y  = ~(~A | ~B) = A & B
endmodule
