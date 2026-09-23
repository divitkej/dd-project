// Testbench for basic gates using NAND, all input combinations
module tb_gates_using_nand;
  reg  A, B;
  wire Y_NOT, Y_AND, Y_OR, Y_XOR;
  integer i;

  gates_using_nand uut (
    .A(A), .B(B),
    .Y_NOT(Y_NOT), .Y_AND(Y_AND), .Y_OR(Y_OR), .Y_XOR(Y_XOR)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_gates_using_nand);
    $display("A B | NOT AND OR XOR");
    for (i = 0; i < 4; i = i + 1) begin
      {A, B} = i;
      #10 $display("%b %b |  %b   %b   %b   %b", A, B, Y_NOT, Y_AND, Y_OR, Y_XOR);
    end
    $finish;
  end
endmodule
