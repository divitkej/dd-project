module tb_encoder;
reg [7:0] D;
wire [2:0] Y;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, tb_encoder);
#000 D=8'b00000001;
#100 D=8'b00000010;
#100 D=8'b00000100;
#100 D=8'b00001000;
#100 D=8'b00010000;
#100 D=8'b00100000;
#100 D=8'b01000000;
#100 D=8'b10000000;
#100 $stop;
end
encoder_8to3 U1(Y,D);
endmodule
