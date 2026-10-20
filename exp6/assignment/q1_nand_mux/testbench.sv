module tb_nand;
reg A, B;
wire Y;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_nand);
#000 A=0; B=0;
#100 A=0; B=1;
#100 A=1; B=0;
#100 A=1; B=1;
#100 $stop;
end
nand_using_mux U1(A, B, Y);
endmodule
