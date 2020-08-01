module tabla_03_POS();

reg A, B, C, D;
wire notA, notB, notC, notD, ter1, ter2, ter3, ter4, ter5, ter6, ter7, ter8, ter9, out1, out2, out3, out;

not a(notA, A);
not b(notB, B);
not c(notC, C);
not d(notD, D);

or I(ter1, A, notB, C, D);
or J(ter2, A, notB, C, notD);
or K(ter3, A, notB, notC, D);
or L(ter4, A, notB, notC, notD);
or M(ter5, notA, B, C, notD);
or N(ter6, notA, B, notC, notD);
or O(ter7, notA, notB, C, D);
or P(ter8, notA, notB, C, notD);
or Q(ter9, notA, notB, notC, notD);


and U1(out1, ter1, ter2, ter3);
and U2(out2, ter4, ter5, ter6);
and U3(out3, ter7, ter8, ter9);
and U4(out, out1, out2, out3);

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
initial
    begin
      $dumpfile("tabla_03_POS_tb.vcd");
      $dumpvars(0,tabla_03_POS);
    end

endmodule
