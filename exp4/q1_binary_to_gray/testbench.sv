module tb_bin_to_gray;
reg [7:0] B;
wire [7:0] G;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_bin_to_gray);
#000 B=8'b00000000;
#100 B=8'b00000001;
#100 B=8'b00000010;
#100 B=8'b00000011;
#100 B=8'b00001111;
#100 B=8'b01010101;
#100 B=8'b10101010;
#100 B=8'b11110000;
#100 B=8'b11111111;
#100 $stop;
end
bin_to_gray U1(G,B);
endmodule
