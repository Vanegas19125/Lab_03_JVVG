module tabla_01_POS();

reg A, B, C;
wire notA, notB, notC, ter1, ter2, ter3, out;

not a(notA, A);
not b(notB, B);
not c(notC, C);

or I(ter1, A, B, notC);
or J(ter2, A, notB, notC);
or K(ter3, notA, notB, C);

and U2(out, ter1, ter2, ter3);


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
      $dumpfile("tabla_01_POS_tb.vcd");
      $dumpvars(0,tabla_01_POS);
    end
endmodule
