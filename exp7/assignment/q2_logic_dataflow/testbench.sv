module tb_logic;
reg A, B, C;
wire Y;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_logic);
#000 A=0; B=0; C=0;
#100 A=0; B=0; C=1;
#100 A=0; B=1; C=0;
#100 A=0; B=1; C=1;
#100 A=1; B=0; C=0;
#100 A=1; B=0; C=1;
#100 A=1; B=1; C=0;
#100 A=1; B=1; C=1;
#100 $stop;
end
logic_dataflow U1(A, B, C, Y);
endmodule
