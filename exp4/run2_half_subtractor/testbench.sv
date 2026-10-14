module tb_half_sub;
reg A,B;
wire Diff,Borrow;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_half_sub);
#000 A=0; B=0;
#100 A=0; B=1;
#100 A=1; B=0;
#100 A=1; B=1;
#100 $stop;
end
half_subtractor U1(Diff,Borrow,A,B);
endmodule
