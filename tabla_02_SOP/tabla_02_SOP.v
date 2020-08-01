module tabla_02_SOP();

reg A, B, C;
wire notA, notB, notC, ter1, ter2, ter3, out;

not a(notA, A);
not b(notB, B);
not c(notC, C);

and I(ter1, notA, notB, C);
and J(ter2, A, B, notC);
and K(ter3, A, B, C);


or U1(out, ter1, ter2, ter3);

initial begin

$display("| A B C | Y |");
$display("|-------|---|");
$monitor("| %b %b %b | %b |", A, B, C, out);
A = 0; B = 0; C = 0;
#1 C = 1;
#1 B = 1; C = 0;
#1 C = 1;
#1 A = 1; B = 0; C = 0;
#1 C = 1;
#1 B = 1; C = 0;
#1 C = 1;


end
initial
    begin
      $dumpfile("tabla_02_SOP_tb.vcd");
      $dumpvars(0,tabla_02_SOP);
    end
endmodule
