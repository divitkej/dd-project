module tb_demux4;
reg D, S1, S0;
wire Y3, Y2, Y1, Y0;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_demux4);
#000 D=1; S1=0; S0=0;
#100 D=1; S1=0; S0=1;
#100 D=1; S1=1; S0=0;
#100 D=1; S1=1; S0=1;
#100 D=0; S1=0; S0=0;
#100 $stop;
end
demux_1x4 U1(D, S1, S0, Y3, Y2, Y1, Y0);
endmodule
