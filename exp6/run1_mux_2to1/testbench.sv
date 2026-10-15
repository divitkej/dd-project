module tb_mux2;
reg I0, I1, S;
wire Y;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_mux2);
#000 I0=0; I1=0; S=0;
#100 I0=0; I1=0; S=1;
#100 I0=0; I1=1; S=0;
#100 I0=0; I1=1; S=1;
#100 I0=1; I1=0; S=0;
#100 I0=1; I1=0; S=1;
#100 I0=1; I1=1; S=0;
#100 I0=1; I1=1; S=1;
#100 $stop;
end
mux_2x1 U1(I1, I0, S, Y);
endmodule
