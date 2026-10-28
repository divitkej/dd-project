module tb_circuit2;
reg D_in, en, rst;
wire q;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_circuit2);
#000 D_in=1; en=1; rst=0;
#100 D_in=0; en=0; rst=0;
#100 D_in=0; en=1; rst=0;
#100 D_in=1; en=0; rst=0;
#100 D_in=1; en=1; rst=0;
#100 D_in=0; en=0; rst=0;
#100 D_in=1; en=1; rst=1;
#100 D_in=1; en=0; rst=0;
#100 $stop;
end
circuit_2 U1(D_in, en, rst, q);
endmodule
