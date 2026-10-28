module tb_dff_negedge;
reg d, clk;
wire q;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_dff_negedge);
clk = 0;
d = 0;
#120 d = 1;
#50 d = 0;
#50 d = 1;
#100 d = 0;
#100 d = 1;
#130 $stop;
end
always #50 clk = ~clk;
dff_negedge U1(d, clk, q);
endmodule
