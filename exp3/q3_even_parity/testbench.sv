module tb;
  reg a, b, c, d;
  wire p;
  integer i;
  parity dut(a, b, c, d, p);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    for (i = 0; i < 16; i = i + 1) begin
      {a, b, c, d} = i;
      #10;
    end
    $finish;
  end
endmodule
