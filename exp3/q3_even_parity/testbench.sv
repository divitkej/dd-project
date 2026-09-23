// Testbench for 4-bit even parity generator, all 16 input combinations
module tb_even_parity_gen;
  reg  A, B, C, D;
  wire P;
  integer i;

  even_parity_gen uut (.A(A), .B(B), .C(C), .D(D), .P(P));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_even_parity_gen);
    $display("A B C D | P");
    for (i = 0; i < 16; i = i + 1) begin
      {A, B, C, D} = i;
      #10 $display("%b %b %b %b | %b", A, B, C, D, P);
    end
    $finish;
  end
endmodule
