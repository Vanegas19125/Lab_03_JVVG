module tabla_02_POS();

reg A, B, C;
wire notA, notB, notC, ter1, ter2, ter3, ter4, ter5, out;

not a(notA, A);
not b(notB, B);
not c(notC, C);

or I(ter1, A, B, C);
or J(ter2, A, notB, C);
or K(ter3, A, notB, notC);
or M(ter4, notA, B, C);
or L(ter5, notA, B, notC);

and U2(out, ter1, ter2, ter3, ter4, ter5);


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

endmodule
