module circuit_2 (input D_in, en, rst, output q);
assign q = !(rst == 1'b0) ? 0 : en ? D_in : q;
endmodule
