module comparator_4bit (L,G,E,A,B);
input [3:0] A,B;
output reg L,G,E;
always @(A or B)
begin
if (A > B)
begin
G = 1; E = 0; L = 0;
end
else if (A == B)
begin
G = 0; E = 1; L = 0;
end
else
begin
G = 0; E = 0; L = 1;
end
end
endmodule
