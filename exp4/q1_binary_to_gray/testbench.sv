module tb_bin_to_gray;
reg B7,B6,B5,B4,B3,B2,B1,B0;
wire G7,G6,G5,G4,G3,G2,G1,G0;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_bin_to_gray);
#000 B7=0; B6=0; B5=0; B4=0; B3=0; B2=0; B1=0; B0=0;
#100 B7=0; B6=0; B5=0; B4=0; B3=0; B2=0; B1=0; B0=1;
#100 B7=0; B6=0; B5=0; B4=0; B3=0; B2=0; B1=1; B0=0;
#100 B7=0; B6=0; B5=0; B4=0; B3=0; B2=0; B1=1; B0=1;
#100 B7=0; B6=0; B5=0; B4=0; B3=1; B2=1; B1=1; B0=1;
#100 B7=0; B6=1; B5=0; B4=1; B3=0; B2=1; B1=0; B0=1;
#100 B7=1; B6=0; B5=1; B4=0; B3=1; B2=0; B1=1; B0=0;
#100 B7=1; B6=1; B5=1; B4=1; B3=0; B2=0; B1=0; B0=0;
#100 B7=1; B6=1; B5=1; B4=1; B3=1; B2=1; B1=1; B0=1;
#100 $stop;
end
bin_to_gray U1(G7,G6,G5,G4,G3,G2,G1,G0,B7,B6,B5,B4,B3,B2,B1,B0);
endmodule
