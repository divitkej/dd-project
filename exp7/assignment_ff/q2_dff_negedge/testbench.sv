module tb_dff_negedge;
reg d, clk;
wire q;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_dff_negedge);
#000 clk=0; d=0;
#50 clk=1; d=1;
#50 clk=0; d=1;
#50 clk=1; d=0;
#50 clk=0; d=0;
#50 clk=1; d=1;
#50 clk=0; d=1;
#50 clk=1; d=0;
#50 clk=0; d=0;
#50 $stop;
end
dff_negedge U1(d, clk, q);
endmodule
