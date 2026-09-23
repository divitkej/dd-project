module tb_gates_nand;
reg A,B;
wire Y_NOT,Y_AND,Y_OR,Y_XOR;
initial
begin
$dumpvars (1, tb_gates_nand);
#000 A=0; B=0;
#100 A=0; B=1;
#100 A=1; B=0;
#100 A=1; B=1;
#100 $stop;
end
gates_using_nand U1(Y_NOT,Y_AND,Y_OR,Y_XOR,A,B);
endmodule
