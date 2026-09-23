// Testbench for AND gate using NOR gates
module tb_and_using_nor;
  reg  A, B;
  wire Y;
  integer i;

  and_using_nor uut (.A(A), .B(B), .Y(Y));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_and_using_nor);
    $display("A B | Y");
    for (i = 0; i < 4; i = i + 1) begin
      {A, B} = i;
      #10 $display("%b %b | %b", A, B, Y);
    end
    $finish;
  end
endmodule
