
module s344(GND, VDD, CK, A0, A1, A2, A3, B0, B1, B2, B3, CNTVCO2, CNTVCON2, P0, P1, P2, P3, P4, P5, P6, P7, READY, START);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  input A0;
  input A1;
  input A2;
  input A3;
  wire ACVG1VD1;
  wire ACVG2VD1;
  wire ACVG3VD1;
  wire ACVG4VD1;
  wire ACVQN0;
  wire ACVQN1;
  wire ACVQN2;
  wire ACVQN3;
  wire AM0;
  wire AM1;
  wire AM2;
  wire AM3;
  wire AX0;
  wire AX1;
  wire AX2;
  wire AX3;
  input B0;
  input B1;
  input B2;
  input B3;
  wire BMVS0N;
  input CK;
  wire CNTVCO0;
  output CNTVCO2;
  output CNTVCON2;
  wire CNTVG1VD;
  wire CNTVG2VD;
  wire CNTVG3VD;
  wire CT0;
  wire CT1;
  wire CT2;
  wire \DFF_0.CK ;
  wire \DFF_0.D ;
  wire \DFF_0.Q ;
  wire \DFF_1.CK ;
  wire \DFF_1.D ;
  wire \DFF_1.Q ;
  wire \DFF_10.CK ;
  wire \DFF_10.D ;
  wire \DFF_10.Q ;
  wire \DFF_11.CK ;
  wire \DFF_11.D ;
  wire \DFF_11.Q ;
  wire \DFF_12.CK ;
  wire \DFF_12.D ;
  wire \DFF_12.Q ;
  wire \DFF_13.CK ;
  wire \DFF_13.D ;
  wire \DFF_13.Q ;
  wire \DFF_14.CK ;
  wire \DFF_14.D ;
  wire \DFF_14.Q ;
  wire \DFF_2.CK ;
  wire \DFF_2.D ;
  wire \DFF_2.Q ;
  wire \DFF_3.CK ;
  wire \DFF_3.D ;
  wire \DFF_3.Q ;
  wire \DFF_4.CK ;
  wire \DFF_4.D ;
  wire \DFF_4.Q ;
  wire \DFF_5.CK ;
  wire \DFF_5.D ;
  wire \DFF_5.Q ;
  wire \DFF_6.CK ;
  wire \DFF_6.D ;
  wire \DFF_6.Q ;
  wire \DFF_7.CK ;
  wire \DFF_7.D ;
  wire \DFF_7.Q ;
  wire \DFF_8.CK ;
  wire \DFF_8.D ;
  wire \DFF_8.Q ;
  wire \DFF_9.CK ;
  wire \DFF_9.D ;
  wire \DFF_9.Q ;
  input GND;
  wire MRVG1VD;
  wire MRVG2VD;
  wire MRVG3VD;
  wire MRVG4VD;
  wire MRVQN0;
  wire MRVQN1;
  wire MRVQN2;
  wire MRVQN3;
  output P0;
  output P1;
  output P2;
  output P3;
  output P4;
  output P5;
  output P6;
  output P7;
  output READY;
  input START;
  input VDD;
  al_inv _046_ (
    .a(\DFF_3.Q ),
    .y(P7)
  );
  al_inv _047_ (
    .a(\DFF_4.Q ),
    .y(P6)
  );
  al_inv _048_ (
    .a(\DFF_5.Q ),
    .y(P5)
  );
  al_inv _049_ (
    .a(\DFF_6.Q ),
    .y(P4)
  );
  al_inv _050_ (
    .a(\DFF_7.Q ),
    .y(P3)
  );
  al_inv _051_ (
    .a(\DFF_8.Q ),
    .y(P2)
  );
  al_inv _052_ (
    .a(\DFF_9.Q ),
    .y(P1)
  );
  al_inv _053_ (
    .a(\DFF_10.Q ),
    .y(P0)
  );
  al_and3ftt _054_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(\DFF_2.Q ),
    .y(READY)
  );
  al_and3 _055_ (
    .a(\DFF_0.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_1.Q ),
    .y(CNTVCO2)
  );
  al_inv _056_ (
    .a(CNTVCO2),
    .y(CNTVCON2)
  );
  al_inv _057_ (
    .a(START),
    .y(_012_)
  );
  al_and3fft _058_ (
    .a(\DFF_6.Q ),
    .b(\DFF_10.Q ),
    .c(\DFF_14.Q ),
    .y(_013_)
  );
  al_and3fft _059_ (
    .a(\DFF_5.Q ),
    .b(\DFF_10.Q ),
    .c(\DFF_13.Q ),
    .y(_014_)
  );
  al_oai21ftt _060_ (
    .a(\DFF_13.Q ),
    .b(\DFF_10.Q ),
    .c(\DFF_5.Q ),
    .y(_015_)
  );
  al_nand3fft _061_ (
    .a(_013_),
    .b(_014_),
    .c(_015_),
    .y(_016_)
  );
  al_or3 _062_ (
    .a(\DFF_0.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_1.Q ),
    .y(_017_)
  );
  al_and2ft _063_ (
    .a(READY),
    .b(_017_),
    .y(_018_)
  );
  al_oa21ftt _064_ (
    .a(_015_),
    .b(_014_),
    .c(_013_),
    .y(_019_)
  );
  al_nand3ftt _065_ (
    .a(_019_),
    .b(_016_),
    .c(_018_),
    .y(_020_)
  );
  al_oai21ftf _066_ (
    .a(_017_),
    .b(READY),
    .c(P4),
    .y(_021_)
  );
  al_nand3 _067_ (
    .a(_012_),
    .b(_021_),
    .c(_020_),
    .y(\DFF_6.D )
  );
  al_and3fft _068_ (
    .a(\DFF_4.Q ),
    .b(\DFF_10.Q ),
    .c(\DFF_12.Q ),
    .y(_022_)
  );
  al_oai21ftt _069_ (
    .a(\DFF_12.Q ),
    .b(\DFF_10.Q ),
    .c(\DFF_4.Q ),
    .y(_023_)
  );
  al_ao21 _070_ (
    .a(_015_),
    .b(_013_),
    .c(_014_),
    .y(_024_)
  );
  al_ao21ftf _071_ (
    .a(_022_),
    .b(_023_),
    .c(_024_),
    .y(_025_)
  );
  al_or3ftt _072_ (
    .a(_023_),
    .b(_022_),
    .c(_024_),
    .y(_026_)
  );
  al_nand3 _073_ (
    .a(_018_),
    .b(_025_),
    .c(_026_),
    .y(_027_)
  );
  al_oai21ftf _074_ (
    .a(_017_),
    .b(READY),
    .c(P5),
    .y(_028_)
  );
  al_nand3 _075_ (
    .a(_012_),
    .b(_028_),
    .c(_027_),
    .y(\DFF_5.D )
  );
  al_and2ft _076_ (
    .a(\DFF_10.Q ),
    .b(\DFF_14.Q ),
    .y(_029_)
  );
  al_ao21ftt _077_ (
    .a(\DFF_6.Q ),
    .b(_029_),
    .c(_014_),
    .y(_030_)
  );
  al_nand3 _078_ (
    .a(_015_),
    .b(_023_),
    .c(_030_),
    .y(_031_)
  );
  al_nand2ft _079_ (
    .a(\DFF_10.Q ),
    .b(\DFF_11.Q ),
    .y(_032_)
  );
  al_nand3ftt _080_ (
    .a(_022_),
    .b(_032_),
    .c(_031_),
    .y(_033_)
  );
  al_oai21ftf _081_ (
    .a(_018_),
    .b(_033_),
    .c(\DFF_3.Q ),
    .y(_034_)
  );
  al_inv _082_ (
    .a(READY),
    .y(_035_)
  );
  al_inv _083_ (
    .a(_023_),
    .y(_036_)
  );
  al_nand3ftt _084_ (
    .a(\DFF_6.Q ),
    .b(_015_),
    .c(_029_),
    .y(_037_)
  );
  al_nand3fft _085_ (
    .a(_014_),
    .b(_022_),
    .c(_037_),
    .y(_038_)
  );
  al_nand3fft _086_ (
    .a(_036_),
    .b(_032_),
    .c(_038_),
    .y(_039_)
  );
  al_or3fft _087_ (
    .a(_035_),
    .b(_017_),
    .c(_039_),
    .y(_040_)
  );
  al_ao21 _088_ (
    .a(_040_),
    .b(_034_),
    .c(START),
    .y(\DFF_3.D )
  );
  al_nand3 _089_ (
    .a(\DFF_3.Q ),
    .b(_039_),
    .c(_033_),
    .y(_041_)
  );
  al_ao21 _090_ (
    .a(_039_),
    .b(_033_),
    .c(\DFF_3.Q ),
    .y(_042_)
  );
  al_nand3 _091_ (
    .a(_018_),
    .b(_041_),
    .c(_042_),
    .y(_043_)
  );
  al_oa21ftf _092_ (
    .a(\DFF_4.Q ),
    .b(_018_),
    .c(START),
    .y(_044_)
  );
  al_nand2 _093_ (
    .a(_044_),
    .b(_043_),
    .y(\DFF_4.D )
  );
  al_ao21 _094_ (
    .a(\DFF_2.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_0.Q ),
    .y(_045_)
  );
  al_and3fft _095_ (
    .a(START),
    .b(CNTVCO2),
    .c(_045_),
    .y(\DFF_0.D )
  );
  al_oai21ftt _096_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_2.Q ),
    .y(_000_)
  );
  al_aoi21 _097_ (
    .a(\DFF_2.Q ),
    .b(\DFF_1.Q ),
    .c(START),
    .y(_001_)
  );
  al_aoi21ftf _098_ (
    .a(\DFF_1.Q ),
    .b(_000_),
    .c(_001_),
    .y(\DFF_1.D )
  );
  al_and2ft _099_ (
    .a(START),
    .b(_000_),
    .y(\DFF_2.D )
  );
  al_or2ft _100_ (
    .a(B3),
    .b(_017_),
    .y(_002_)
  );
  al_mux2l _101_ (
    .a(\DFF_7.Q ),
    .b(_002_),
    .s(READY),
    .y(_003_)
  );
  al_oai21ftt _102_ (
    .a(\DFF_14.Q ),
    .b(\DFF_10.Q ),
    .c(\DFF_6.Q ),
    .y(_004_)
  );
  al_and3ftt _103_ (
    .a(READY),
    .b(_017_),
    .c(_004_),
    .y(_005_)
  );
  al_aoi21ftf _104_ (
    .a(_013_),
    .b(_005_),
    .c(_003_),
    .y(\DFF_7.D )
  );
  al_or2ft _105_ (
    .a(B2),
    .b(_017_),
    .y(_006_)
  );
  al_aoi21ftf _106_ (
    .a(\DFF_8.Q ),
    .b(READY),
    .c(_006_),
    .y(_007_)
  );
  al_aoi21ftf _107_ (
    .a(\DFF_7.Q ),
    .b(_018_),
    .c(_007_),
    .y(\DFF_8.D )
  );
  al_or2ft _108_ (
    .a(B1),
    .b(_017_),
    .y(_008_)
  );
  al_aoi21ftf _109_ (
    .a(\DFF_9.Q ),
    .b(READY),
    .c(_008_),
    .y(_009_)
  );
  al_aoi21ftf _110_ (
    .a(\DFF_8.Q ),
    .b(_018_),
    .c(_009_),
    .y(\DFF_9.D )
  );
  al_or2ft _111_ (
    .a(B0),
    .b(_017_),
    .y(_010_)
  );
  al_aoi21ftf _112_ (
    .a(\DFF_10.Q ),
    .b(READY),
    .c(_010_),
    .y(_011_)
  );
  al_aoi21ftf _113_ (
    .a(\DFF_9.Q ),
    .b(_018_),
    .c(_011_),
    .y(\DFF_10.D )
  );
  al_mux2l _114_ (
    .a(\DFF_11.Q ),
    .b(A3),
    .s(_017_),
    .y(\DFF_11.D )
  );
  al_mux2l _115_ (
    .a(\DFF_12.Q ),
    .b(A2),
    .s(_017_),
    .y(\DFF_12.D )
  );
  al_mux2l _116_ (
    .a(\DFF_13.Q ),
    .b(A1),
    .s(_017_),
    .y(\DFF_13.D )
  );
  al_mux2l _117_ (
    .a(\DFF_14.Q ),
    .b(A0),
    .s(_017_),
    .y(\DFF_14.D )
  );
  al_dffl _118_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _119_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _120_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _121_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _122_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  al_dffl _123_ (
    .clk(CK),
    .d(\DFF_5.D ),
    .q(\DFF_5.Q )
  );
  al_dffl _124_ (
    .clk(CK),
    .d(\DFF_6.D ),
    .q(\DFF_6.Q )
  );
  al_dffl _125_ (
    .clk(CK),
    .d(\DFF_7.D ),
    .q(\DFF_7.Q )
  );
  al_dffl _126_ (
    .clk(CK),
    .d(\DFF_8.D ),
    .q(\DFF_8.Q )
  );
  al_dffl _127_ (
    .clk(CK),
    .d(\DFF_9.D ),
    .q(\DFF_9.Q )
  );
  al_dffl _128_ (
    .clk(CK),
    .d(\DFF_10.D ),
    .q(\DFF_10.Q )
  );
  al_dffl _129_ (
    .clk(CK),
    .d(\DFF_11.D ),
    .q(\DFF_11.Q )
  );
  al_dffl _130_ (
    .clk(CK),
    .d(\DFF_12.D ),
    .q(\DFF_12.Q )
  );
  al_dffl _131_ (
    .clk(CK),
    .d(\DFF_13.D ),
    .q(\DFF_13.Q )
  );
  al_dffl _132_ (
    .clk(CK),
    .d(\DFF_14.D ),
    .q(\DFF_14.Q )
  );
  assign ACVG1VD1 = \DFF_6.D ;
  assign ACVG2VD1 = \DFF_5.D ;
  assign ACVG3VD1 = \DFF_4.D ;
  assign ACVG4VD1 = \DFF_3.D ;
  assign ACVQN0 = \DFF_6.Q ;
  assign ACVQN1 = \DFF_5.Q ;
  assign ACVQN2 = \DFF_4.Q ;
  assign ACVQN3 = \DFF_3.Q ;
  assign AM0 = \DFF_14.D ;
  assign AM1 = \DFF_13.D ;
  assign AM2 = \DFF_12.D ;
  assign AM3 = \DFF_11.D ;
  assign AX0 = \DFF_14.Q ;
  assign AX1 = \DFF_13.Q ;
  assign AX2 = \DFF_12.Q ;
  assign AX3 = \DFF_11.Q ;
  assign BMVS0N = READY;
  assign CNTVCO0 = \DFF_2.Q ;
  assign CNTVG1VD = \DFF_2.D ;
  assign CNTVG2VD = \DFF_1.D ;
  assign CNTVG3VD = \DFF_0.D ;
  assign CT0 = \DFF_2.Q ;
  assign CT1 = \DFF_1.Q ;
  assign CT2 = \DFF_0.Q ;
  assign \DFF_0.CK  = CK;
  assign \DFF_1.CK  = CK;
  assign \DFF_10.CK  = CK;
  assign \DFF_11.CK  = CK;
  assign \DFF_12.CK  = CK;
  assign \DFF_13.CK  = CK;
  assign \DFF_14.CK  = CK;
  assign \DFF_2.CK  = CK;
  assign \DFF_3.CK  = CK;
  assign \DFF_4.CK  = CK;
  assign \DFF_5.CK  = CK;
  assign \DFF_6.CK  = CK;
  assign \DFF_7.CK  = CK;
  assign \DFF_8.CK  = CK;
  assign \DFF_9.CK  = CK;
  assign MRVG1VD = \DFF_10.D ;
  assign MRVG2VD = \DFF_9.D ;
  assign MRVG3VD = \DFF_8.D ;
  assign MRVG4VD = \DFF_7.D ;
  assign MRVQN0 = \DFF_10.Q ;
  assign MRVQN1 = \DFF_9.Q ;
  assign MRVQN2 = \DFF_8.Q ;
  assign MRVQN3 = \DFF_7.Q ;
endmodule
