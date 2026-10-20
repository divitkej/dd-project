module full_subtractor (D,Bout,A,B,Bin);
input A,B,Bin;
output reg D,Bout;
always @(*)
begin
D = A^B^Bin;
Bout = (~A&B) | (~(A^B)&Bin);
end
endmodule
