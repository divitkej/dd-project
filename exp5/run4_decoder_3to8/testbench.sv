module tb_decoder3to8;
reg A2, A1, A0;
wire Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_decoder3to8);
#000 A2=0; A1=0; A0=0;
#100 A2=0; A1=0; A0=1;
#100 A2=0; A1=1; A0=0;
#100 A2=0; A1=1; A0=1;
#100 A2=1; A1=0; A0=0;
#100 A2=1; A1=0; A0=1;
#100 A2=1; A1=1; A0=0;
#100 A2=1; A1=1; A0=1;
#100 $stop;
end
decoder_3to8 U1(A2, A1, A0, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);
endmodule
