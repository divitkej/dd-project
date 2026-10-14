module tb_mux;
reg I1, I0, S;
wire Y;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_mux);
#000 I1=0; I0=0; S=0;
#100 I1=0; I0=0; S=1;
#100 I1=0; I0=1; S=0;
#100 I1=0; I0=1; S=1;
#100 I1=1; I0=0; S=0;
#100 I1=1; I0=0; S=1;
#100 I1=1; I0=1; S=0;
#100 I1=1; I0=1; S=1;
#100 $stop;
end
mux_2x1 U1(I1, I0, S, Y);
endmodule
