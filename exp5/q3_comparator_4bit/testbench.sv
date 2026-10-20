module tb_comparator;
reg [3:0] A,B;
wire L,G,E;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_comparator);
#000 A=4'b0000; B=4'b1111;
#100 A=4'b1111; B=4'b0000;
#100 A=4'b0000; B=4'b0000;
#100 A=4'b1111; B=4'b1111;
#100 A=4'b0101; B=4'b1000;
#100 A=4'b1010; B=4'b0011;
#100 A=4'b1001; B=4'b1001;
#100 $stop;
end
comparator_4bit U1(L,G,E,A,B);
endmodule
