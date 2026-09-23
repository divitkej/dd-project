module tb;
reg A, B;
wire Y_NOT, Y_AND, Y_OR, Y_XOR;
gates_using_nand U1 (A, B, Y_NOT, Y_AND, Y_OR, Y_XOR);
initial begin
A = 0; B = 0; #10;
A = 0; B = 1; #10;
A = 1; B = 0; #10;
A = 1; B = 1; #10;
end
endmodule
