
module c17(N1, N2, N3, N6, N7, N22, N23);
  wire _0_;
  wire _1_;
  input N1;
  input N2;
  output N22;
  output N23;
  input N3;
  input N6;
  input N7;
  al_ao21ttf _2_ (
    .a(N3),
    .b(N6),
    .c(N2),
    .y(_1_)
  );
  al_ao21ttf _3_ (
    .a(N1),
    .b(N3),
    .c(_1_),
    .y(N22)
  );
  al_or2 _4_ (
    .a(N2),
    .b(N7),
    .y(_0_)
  );
  al_aoi21ttf _5_ (
    .a(N3),
    .b(N6),
    .c(_0_),
    .y(N23)
  );
endmodule
