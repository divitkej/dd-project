module demux_1x2 (input D, S, output Y0, Y1);
assign Y0 = D & ~S;
assign Y1 = D & S;
endmodule
