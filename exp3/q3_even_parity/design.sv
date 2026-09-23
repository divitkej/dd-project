module even_parity (
input A, B, C, D,
output Y);
assign Y = A ^ B ^ C ^ D;
endmodule
