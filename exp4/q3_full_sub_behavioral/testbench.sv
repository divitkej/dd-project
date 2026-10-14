module tb_full_sub;
reg A,B,Bin;
wire D,Bout;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_full_sub);
#000 A=0; B=0; Bin=0;
#100 A=0; B=0; Bin=1;
#100 A=0; B=1; Bin=0;
#100 A=0; B=1; Bin=1;
#100 A=1; B=0; Bin=0;
#100 A=1; B=0; Bin=1;
#100 A=1; B=1; Bin=0;
#100 A=1; B=1; Bin=1;
#100 $stop;
end
full_subtractor U1(D,Bout,A,B,Bin);
endmodule
