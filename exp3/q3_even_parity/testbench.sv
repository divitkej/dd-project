module tb_parity;
reg A,B,C,D;
wire Y;
initial
begin
$dumpvars (1, tb_parity);
#000 A=0; B=0; C=0; D=0;
#100 A=0; B=0; C=0; D=1;
#100 A=0; B=0; C=1; D=0;
#100 A=0; B=0; C=1; D=1;
#100 A=0; B=1; C=0; D=0;
#100 A=0; B=1; C=0; D=1;
#100 A=0; B=1; C=1; D=0;
#100 A=0; B=1; C=1; D=1;
#100 A=1; B=0; C=0; D=0;
#100 A=1; B=0; C=0; D=1;
#100 A=1; B=0; C=1; D=0;
#100 A=1; B=0; C=1; D=1;
#100 A=1; B=1; C=0; D=0;
#100 A=1; B=1; C=0; D=1;
#100 A=1; B=1; C=1; D=0;
#100 A=1; B=1; C=1; D=1;
#100 $stop;
end
even_parity U1(Y,A,B,C,D);
endmodule
