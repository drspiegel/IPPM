
module s27(GND, VDD, CK, G0, G1, G17, G2, G3);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  input CK;
  wire \DFF_0.CK ;
  wire \DFF_0.D ;
  wire \DFF_0.Q ;
  wire \DFF_1.CK ;
  wire \DFF_1.D ;
  wire \DFF_1.Q ;
  wire \DFF_2.CK ;
  wire \DFF_2.D ;
  wire \DFF_2.Q ;
  input G0;
  input G1;
  wire G10;
  wire G11;
  wire G13;
  output G17;
  input G2;
  input G3;
  wire G5;
  wire G6;
  wire G7;
  input GND;
  input VDD;
  al_inv _05_ (
    .a(G0),
    .y(_00_)
  );
  al_inv _06_ (
    .a(\DFF_0.Q ),
    .y(_01_)
  );
  al_and3fft _07_ (
    .a(G1),
    .b(\DFF_2.Q ),
    .c(G3),
    .y(_02_)
  );
  al_ao21ftt _08_ (
    .a(G0),
    .b(\DFF_1.Q ),
    .c(_02_),
    .y(_03_)
  );
  al_aoi21 _09_ (
    .a(_01_),
    .b(_03_),
    .c(_00_),
    .y(\DFF_0.D )
  );
  al_nand2ft _10_ (
    .a(G0),
    .b(\DFF_1.Q ),
    .y(_04_)
  );
  al_oai21ftf _11_ (
    .a(_04_),
    .b(_02_),
    .c(\DFF_0.Q ),
    .y(G17)
  );
  al_oa21ftt _12_ (
    .a(_04_),
    .b(_02_),
    .c(_01_),
    .y(\DFF_1.D )
  );
  al_oa21ttf _13_ (
    .a(G1),
    .b(\DFF_2.Q ),
    .c(G2),
    .y(\DFF_2.D )
  );
  al_dffl _14_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _15_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _16_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  assign \DFF_0.CK  = CK;
  assign \DFF_1.CK  = CK;
  assign \DFF_2.CK  = CK;
  assign G10 = \DFF_0.D ;
  assign G11 = \DFF_1.D ;
  assign G13 = \DFF_2.D ;
  assign G5 = \DFF_0.Q ;
  assign G6 = \DFF_1.Q ;
  assign G7 = \DFF_2.Q ;
endmodule
