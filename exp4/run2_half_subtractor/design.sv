module half_subtractor (Diff,Borrow,A,B);
input A,B;
output Diff,Borrow;
assign Diff = A^B;
assign Borrow = ~A & B;
endmodule
