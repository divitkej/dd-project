module and_using_nor (Y,A,B);
input A,B;
output Y;
wire w1,w2;
nor g1 (w1,A,A);
nor g2 (w2,B,B);
nor g3 (Y,w1,w2);
endmodule
