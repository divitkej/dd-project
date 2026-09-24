module tb_full_adder_ha;
reg A,B,Cin;
wire Sum,Carry;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_full_adder_ha);
#000 A=0; B=0; Cin=0;
#100 A=0; B=0; Cin=1;
#100 A=0; B=1; Cin=0;
#100 A=0; B=1; Cin=1;
#100 A=1; B=0; Cin=0;
#100 A=1; B=0; Cin=1;
#100 A=1; B=1; Cin=0;
#100 A=1; B=1; Cin=1;
#100 $stop;
end
full_adder_ha U1(Sum,Carry,A,B,Cin);
endmodule
