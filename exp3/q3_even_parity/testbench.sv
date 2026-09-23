module tb;
reg A, B, C, D;
wire Y;
even_parity U1 (A, B, C, D, Y);
initial begin
A = 0; B = 0; C = 0; D = 0; #10;
A = 0; B = 0; C = 0; D = 1; #10;
A = 0; B = 0; C = 1; D = 0; #10;
A = 0; B = 0; C = 1; D = 1; #10;
A = 0; B = 1; C = 0; D = 0; #10;
A = 0; B = 1; C = 0; D = 1; #10;
A = 0; B = 1; C = 1; D = 0; #10;
A = 0; B = 1; C = 1; D = 1; #10;
A = 1; B = 0; C = 0; D = 0; #10;
A = 1; B = 0; C = 0; D = 1; #10;
A = 1; B = 0; C = 1; D = 0; #10;
A = 1; B = 0; C = 1; D = 1; #10;
A = 1; B = 1; C = 0; D = 0; #10;
A = 1; B = 1; C = 0; D = 1; #10;
A = 1; B = 1; C = 1; D = 0; #10;
A = 1; B = 1; C = 1; D = 1; #10;
end
endmodule
