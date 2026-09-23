module tb;
reg A, B;
wire Y;
and_using_nor U1 (A, B, Y);
initial begin
A = 0; B = 0; #10;
A = 0; B = 1; #10;
A = 1; B = 0; #10;
A = 1; B = 1; #10;
end
endmodule
