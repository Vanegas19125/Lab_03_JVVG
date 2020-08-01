module tabla_03_SOP();

reg A, B, C, D;
wire notA, notB, notC, notD, ter1, ter2, ter3, ter4, ter5, ter6, ter7, out1, out2, out;

not a(notA, A);
not b(notB, B);
not c(notC, C);
not d(notD, D);

and I(ter1, notA, notB, notC, notD);
and J(ter2, notA, notB, C, notD);
and K(ter3, notA, notB, C, D);
and L(ter4, notA, B, C, notD);
and M(ter5, notA, B, C, D);
and N(ter6, A, notB, notC, notD);
and O(ter7, A, notB, C, notD);


or U1(out1, ter1, ter2, ter3);
or U2(out2, ter4, ter5, ter6);
or U3(out, out1, out2, ter7);

initial begin

$display("| A B C D | Y |");
$display("|---------|---|");
$monitor("| %b %b %b %b | %b |", A, B, C, D, out);
A = 0; B = 0; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;
#1 B = 1; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;
#1 A = 1; B = 0; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;
#1 B = 1; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;


end


endmodule
