module tb_and_nor;
reg A,B;
wire Y;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_and_nor);
#000 A=0; B=0;
#100 A=0; B=1;
#100 A=1; B=0;
#100 A=1; B=1;
#100 $stop;
end
and_using_nor U1(Y,A,B);
endmodule
