module tb_decoder;
reg A,B,En;
wire [3:0] D;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_decoder);
#000 En=1; A=0; B=0;
#100 En=1; A=0; B=1;
#100 En=1; A=1; B=0;
#100 En=1; A=1; B=1;
#100 En=0; A=0; B=0;
#100 En=0; A=0; B=1;
#100 En=0; A=1; B=0;
#100 En=0; A=1; B=1;
#100 $stop;
end
decoder_2to4 U1(D,A,B,En);
endmodule
