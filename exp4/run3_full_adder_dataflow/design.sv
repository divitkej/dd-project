module full_adder (Sum,Carry,A,B,Cin);
input A,B,Cin;
output Sum,Carry;
assign Sum = (A^B)^Cin;
assign Carry = (Cin&(A^B)) | (A&B);
endmodule
