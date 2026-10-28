module tb_mux4;
reg i0, i1, i2, i3, s0, s1;
wire y;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_mux4);
#000 i0=0; i1=1; i2=0; i3=1; s0=0; s1=0;
#100 i0=0; i1=1; i2=0; i3=1; s0=1; s1=0;
#100 i0=0; i1=1; i2=0; i3=1; s0=0; s1=1;
#100 i0=0; i1=1; i2=0; i3=1; s0=1; s1=1;
#100 $stop;
end
mux_4x1 U1(i0, i1, i2, i3, s0, s1, y);
endmodule
