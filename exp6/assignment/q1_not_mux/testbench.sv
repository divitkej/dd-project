module tb_not;
reg A;
wire Y;
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1, tb_not);
#000 A=0;
#100 A=1;
#100 $stop;
end
not_using_mux U1(A, Y);
endmodule
