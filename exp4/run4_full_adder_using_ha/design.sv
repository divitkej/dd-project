module half_addr (S,C,A,B);
input A,B;
output S,C;
assign S = A^B;
assign C = A&B;
endmodule

module full_adder_ha (Sum,Carry,A,B,Cin);
input A,B,Cin;
output Sum,Carry;
wire S0,C0,C1;
half_addr HA1 (S0,C0,A,B);
half_addr HA2 (Sum,C1,S0,Cin);
assign Carry = C0 | C1;
endmodule
