
module vasya_s27 ( CK, G0, G1, G17, G2, G3 );
  input CK, G0, G1, G2, G3;
  output G17;
  wire   G5, G10, G6, G7, G13, n6, n7, n8, n9;

  al_dff Q_reg2 ( .d(G13), .clk(CK), .q(G7) );
  al_dff Q_reg ( .d(G10), .clk(CK), .q(G5) );
  al_dff Q_reg1 ( .d(n9), .clk(CK), .q(G6) );
  al_oa21ttf U2 ( .a(G7), .b(G1), .c(G2), .y(G13) );
  al_nand2ft U8 ( .a(G1), .b(G3), .y(n6) );
  al_nand2ft U9 ( .a(G0), .b(G6), .y(n7) );
  al_or3 U10 ( .a(G5), .b(n6), .c(G7), .y(n8) );
  al_oa21 U11 ( .a(G5), .b(n7), .c(n8), .y(G17) );
  al_inv U12 ( .a(G17), .y(n9) );
  al_and2 U13 ( .a(G0), .b(n8), .y(G10) );
endmodule

