// Q3: Even parity bit generator for a 4-bit binary number
// P = A ^ B ^ C ^ D, so the 5-bit word {A,B,C,D,P} always has an even number of 1s
module even_parity_gen (
  input  A, B, C, D,
  output P
);
  assign P = A ^ B ^ C ^ D;
endmodule
