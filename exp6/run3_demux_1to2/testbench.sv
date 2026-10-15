module tb_demux;
reg D, S;
wire Y0, Y1;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_demux);
#000 D=0; S=0;
#100 D=0; S=1;
#100 D=1; S=0;
#100 D=1; S=1;
#100 $stop;
end
demux_1x2 U1(D, S, Y0, Y1);
endmodule
