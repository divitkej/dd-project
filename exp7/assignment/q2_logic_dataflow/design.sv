module logic_dataflow (A, B, C, Y);
input A, B, C;
output Y;
assign Y = (A & B & C) | (A & B) | (A & C);
endmodule
