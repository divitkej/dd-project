module decoder_2to4 (D,A,B,En);
input A,B,En;
output [3:0] D;
assign D[0] = (~A&~B&~En);
assign D[1] = (~A&B&~En);
assign D[2] = (A&~B&~En);
assign D[3] = (A&B&~En);
endmodule
