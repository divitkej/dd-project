module tb_mux4;
reg I0, I1, I2, I3, S0, S1;
wire Y;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_mux4);
#000 I0=0; I1=0; I2=0; I3=0; S0=0; S1=0;
#100 I0=0; I1=0; I2=0; I3=0; S0=1; S1=0;
#100 I0=0; I1=0; I2=0; I3=0; S0=0; S1=1;
#100 I0=0; I1=0; I2=0; I3=0; S0=1; S1=1;
#100 I0=1; I1=1; I2=1; I3=1; S0=0; S1=0;
#100 I0=1; I1=1; I2=1; I3=1; S0=1; S1=0;
#100 I0=1; I1=1; I2=1; I3=1; S0=0; S1=1;
#100 I0=1; I1=1; I2=1; I3=1; S0=1; S1=1;
#100 $stop;
end
mux_4to1 U1(I0, I1, I2, I3, S0, S1, Y);
endmodule
