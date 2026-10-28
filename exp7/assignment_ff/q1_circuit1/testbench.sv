module tb_circuit1;
reg A, B;
wire C;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_circuit1);
#000 A=1; B=0;
#100 A=1; B=1;
#100 A=0; B=0;
#100 A=0; B=1;
#100 A=1; B=0;
#100 A=0; B=1;
#100 A=0; B=0;
#100 $stop;
end
circuit_1 U1(A, B, C);
endmodule
