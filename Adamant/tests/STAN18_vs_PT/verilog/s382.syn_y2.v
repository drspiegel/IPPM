
module s382(GND, VDD, CK, CLR, FM, GRN1, GRN2, RED1, RED2, TEST, YLW1, YLW2);
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
  wire _046_;
  wire _047_;
  wire C1VCO0;
  wire C3_Q0;
  wire C3_Q0VD;
  wire C3_Q1;
  wire C3_Q1VD;
  wire C3_Q2;
  wire C3_Q2VD;
  wire C3_Q3;
  wire C3_Q3VD;
  input CK;
  input CLR;
  wire CLRB;
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
  wire \DFF_15.CK ;
  wire \DFF_15.D ;
  wire \DFF_15.Q ;
  wire \DFF_16.CK ;
  wire \DFF_16.D ;
  wire \DFF_16.Q ;
  wire \DFF_17.CK ;
  wire \DFF_17.D ;
  wire \DFF_17.Q ;
  wire \DFF_18.CK ;
  wire \DFF_18.D ;
  wire \DFF_18.Q ;
  wire \DFF_19.CK ;
  wire \DFF_19.D ;
  wire \DFF_19.Q ;
  wire \DFF_2.CK ;
  wire \DFF_2.D ;
  wire \DFF_2.Q ;
  wire \DFF_20.CK ;
  wire \DFF_20.D ;
  wire \DFF_20.Q ;
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
  input FM;
  wire FMB;
  wire FML;
  wire FMLVIINLATCHVCDAD;
  input GND;
  output GRN1;
  output GRN2;
  wire OLATCHVUC_5;
  wire OLATCHVUC_6;
  wire OLATCH_FEL;
  wire OLATCH_G1L;
  wire OLATCH_G2L;
  wire OLATCH_R1L;
  wire OLATCH_R2L;
  wire OLATCH_Y1L;
  wire OLATCH_Y2L;
  wire OUTBUFVBUFR2VIIR1;
  wire OUTBUFVBUFY1VIIR1;
  wire R2C;
  output RED1;
  output RED2;
  wire TCOMB_FE;
  wire TCOMB_FE_BF;
  wire TCOMB_GA1;
  wire TCOMB_GA2;
  wire TCOMB_RA1;
  wire TCOMB_YA2;
  input TEST;
  wire TESTB;
  wire TESTL;
  wire TESTLVIINLATCHVCDAD;
  wire UC_10;
  wire UC_10VD;
  wire UC_11;
  wire UC_11VD;
  wire UC_11VZ;
  wire UC_16;
  wire UC_16VD;
  wire UC_17;
  wire UC_17VD;
  wire UC_18;
  wire UC_18VD;
  wire UC_19;
  wire UC_19VD;
  wire UC_8;
  wire UC_8VD;
  wire UC_9;
  wire UC_9VD;
  input VDD;
  wire Y1C;
  output YLW1;
  output YLW2;
  al_inv _048_ (
    .a(\DFF_4.Q ),
    .y(RED2)
  );
  al_inv _049_ (
    .a(\DFF_3.Q ),
    .y(YLW1)
  );
  al_nand2ft _050_ (
    .a(\DFF_11.Q ),
    .b(\DFF_12.Q ),
    .y(_009_)
  );
  al_and2ft _051_ (
    .a(CLR),
    .b(\DFF_9.Q ),
    .y(_010_)
  );
  al_oai21ttf _052_ (
    .a(\DFF_10.Q ),
    .b(\DFF_8.Q ),
    .c(CLR),
    .y(_011_)
  );
  al_aoi21ttf _053_ (
    .a(_009_),
    .b(_010_),
    .c(_011_),
    .y(\DFF_5.D )
  );
  al_nand2ft _054_ (
    .a(CLR),
    .b(\DFF_8.Q ),
    .y(_012_)
  );
  al_or3 _055_ (
    .a(\DFF_1.Q ),
    .b(\DFF_9.Q ),
    .c(_009_),
    .y(_013_)
  );
  al_or2ft _056_ (
    .a(\DFF_10.Q ),
    .b(_013_),
    .y(_014_)
  );
  al_and2ft _057_ (
    .a(CLR),
    .b(\DFF_10.Q ),
    .y(_015_)
  );
  al_or2 _058_ (
    .a(\DFF_12.Q ),
    .b(\DFF_11.Q ),
    .y(_016_)
  );
  al_nor3fft _059_ (
    .a(\DFF_1.Q ),
    .b(_015_),
    .c(_016_),
    .y(_017_)
  );
  al_ao21ftt _060_ (
    .a(_012_),
    .b(_014_),
    .c(_017_),
    .y(\DFF_8.D )
  );
  al_or3 _061_ (
    .a(\DFF_18.Q ),
    .b(\DFF_19.Q ),
    .c(\DFF_20.Q ),
    .y(_018_)
  );
  al_aoi21 _062_ (
    .a(\DFF_17.Q ),
    .b(_018_),
    .c(CLR),
    .y(_019_)
  );
  al_and2ft _063_ (
    .a(\DFF_20.Q ),
    .b(_019_),
    .y(\DFF_20.D )
  );
  al_and3ftt _064_ (
    .a(CLR),
    .b(\DFF_12.Q ),
    .c(\DFF_11.Q ),
    .y(_020_)
  );
  al_or3ftt _065_ (
    .a(\DFF_9.Q ),
    .b(\DFF_12.Q ),
    .c(CLR),
    .y(_021_)
  );
  al_and3ftt _066_ (
    .a(_020_),
    .b(_011_),
    .c(_021_),
    .y(\DFF_6.D )
  );
  al_and3fft _067_ (
    .a(\DFF_10.Q ),
    .b(\DFF_8.Q ),
    .c(_020_),
    .y(\DFF_2.D )
  );
  al_aoi21ttf _068_ (
    .a(\DFF_1.Q ),
    .b(\DFF_9.Q ),
    .c(_015_),
    .y(_022_)
  );
  al_aoi21ftf _069_ (
    .a(_016_),
    .b(\DFF_1.Q ),
    .c(_022_),
    .y(_023_)
  );
  al_aoi21ttf _070_ (
    .a(\DFF_8.Q ),
    .b(_013_),
    .c(_023_),
    .y(\DFF_7.D )
  );
  al_nand3 _071_ (
    .a(\DFF_18.Q ),
    .b(\DFF_19.Q ),
    .c(\DFF_20.Q ),
    .y(_024_)
  );
  al_aoi21ftf _072_ (
    .a(\DFF_17.Q ),
    .b(_024_),
    .c(_019_),
    .y(\DFF_17.D )
  );
  al_ao21 _073_ (
    .a(\DFF_19.Q ),
    .b(\DFF_20.Q ),
    .c(\DFF_18.Q ),
    .y(_025_)
  );
  al_and3 _074_ (
    .a(_024_),
    .b(_025_),
    .c(_019_),
    .y(\DFF_18.D )
  );
  al_or2 _075_ (
    .a(\DFF_19.Q ),
    .b(\DFF_20.Q ),
    .y(_026_)
  );
  al_nand2 _076_ (
    .a(\DFF_19.Q ),
    .b(\DFF_20.Q ),
    .y(_027_)
  );
  al_and3 _077_ (
    .a(_026_),
    .b(_027_),
    .c(_019_),
    .y(\DFF_19.D )
  );
  al_ao21 _078_ (
    .a(\DFF_17.Q ),
    .b(_018_),
    .c(\DFF_0.Q ),
    .y(_028_)
  );
  al_nand2 _079_ (
    .a(\DFF_16.Q ),
    .b(_028_),
    .y(_029_)
  );
  al_or3fft _080_ (
    .a(\DFF_14.Q ),
    .b(\DFF_15.Q ),
    .c(_029_),
    .y(_030_)
  );
  al_or3 _081_ (
    .a(\DFF_14.Q ),
    .b(\DFF_15.Q ),
    .c(\DFF_16.Q ),
    .y(_031_)
  );
  al_and2 _082_ (
    .a(\DFF_13.Q ),
    .b(_031_),
    .y(_032_)
  );
  al_aoi21 _083_ (
    .a(_032_),
    .b(_028_),
    .c(CLR),
    .y(_033_)
  );
  al_aoi21ftf _084_ (
    .a(\DFF_13.Q ),
    .b(_030_),
    .c(_033_),
    .y(\DFF_13.D )
  );
  al_nand3 _085_ (
    .a(\DFF_15.Q ),
    .b(\DFF_16.Q ),
    .c(_028_),
    .y(_034_)
  );
  al_nand2ft _086_ (
    .a(\DFF_14.Q ),
    .b(_034_),
    .y(_035_)
  );
  al_and3 _087_ (
    .a(_033_),
    .b(_035_),
    .c(_030_),
    .y(\DFF_14.D )
  );
  al_ao21 _088_ (
    .a(\DFF_16.Q ),
    .b(_028_),
    .c(\DFF_15.Q ),
    .y(_036_)
  );
  al_and3 _089_ (
    .a(_034_),
    .b(_036_),
    .c(_033_),
    .y(\DFF_15.D )
  );
  al_or2 _090_ (
    .a(\DFF_16.Q ),
    .b(_028_),
    .y(_037_)
  );
  al_and3 _091_ (
    .a(_029_),
    .b(_037_),
    .c(_033_),
    .y(\DFF_16.D )
  );
  al_oai21ttf _092_ (
    .a(\DFF_10.Q ),
    .b(\DFF_9.Q ),
    .c(CLR),
    .y(_038_)
  );
  al_oai21ftt _093_ (
    .a(\DFF_1.Q ),
    .b(\DFF_9.Q ),
    .c(\DFF_10.Q ),
    .y(_039_)
  );
  al_nand3fft _094_ (
    .a(_016_),
    .b(_038_),
    .c(_039_),
    .y(_040_)
  );
  al_aoi21ftf _095_ (
    .a(_012_),
    .b(_014_),
    .c(_040_),
    .y(_041_)
  );
  al_ao21 _096_ (
    .a(\DFF_14.Q ),
    .b(\DFF_8.D ),
    .c(_041_),
    .y(\DFF_3.D )
  );
  al_aoi21ftt _097_ (
    .a(_016_),
    .b(_010_),
    .c(_015_),
    .y(_042_)
  );
  al_mux2l _098_ (
    .a(\DFF_14.Q ),
    .b(_042_),
    .s(\DFF_8.D ),
    .y(\DFF_4.D )
  );
  al_and3 _099_ (
    .a(\DFF_12.Q ),
    .b(_032_),
    .c(_028_),
    .y(_043_)
  );
  al_and3 _100_ (
    .a(\DFF_11.Q ),
    .b(\DFF_10.Q ),
    .c(_043_),
    .y(_044_)
  );
  al_inv _101_ (
    .a(CLR),
    .y(_045_)
  );
  al_or3 _102_ (
    .a(\DFF_12.Q ),
    .b(\DFF_11.Q ),
    .c(\DFF_10.Q ),
    .y(_046_)
  );
  al_nand2 _103_ (
    .a(\DFF_9.Q ),
    .b(_046_),
    .y(_047_)
  );
  al_nand3ftt _104_ (
    .a(_047_),
    .b(_032_),
    .c(_028_),
    .y(_000_)
  );
  al_and2 _105_ (
    .a(_045_),
    .b(_000_),
    .y(_001_)
  );
  al_oa21 _106_ (
    .a(\DFF_9.Q ),
    .b(_044_),
    .c(_001_),
    .y(\DFF_9.D )
  );
  al_ao21 _107_ (
    .a(\DFF_11.Q ),
    .b(_043_),
    .c(\DFF_10.Q ),
    .y(_002_)
  );
  al_and3ftt _108_ (
    .a(_044_),
    .b(_001_),
    .c(_002_),
    .y(\DFF_10.D )
  );
  al_nand2 _109_ (
    .a(\DFF_11.Q ),
    .b(_043_),
    .y(_003_)
  );
  al_nand3 _110_ (
    .a(\DFF_12.Q ),
    .b(_032_),
    .c(_028_),
    .y(_004_)
  );
  al_and2ft _111_ (
    .a(\DFF_11.Q ),
    .b(_004_),
    .y(_005_)
  );
  al_and3ftt _112_ (
    .a(_005_),
    .b(_003_),
    .c(_001_),
    .y(\DFF_11.D )
  );
  al_ao21 _113_ (
    .a(_032_),
    .b(_028_),
    .c(\DFF_12.Q ),
    .y(_006_)
  );
  al_and3 _114_ (
    .a(_004_),
    .b(_006_),
    .c(_001_),
    .y(\DFF_12.D )
  );
  al_oa21ttf _115_ (
    .a(\DFF_1.Q ),
    .b(FM),
    .c(CLR),
    .y(_007_)
  );
  al_aoi21ttf _116_ (
    .a(\DFF_1.Q ),
    .b(FM),
    .c(_007_),
    .y(\DFF_1.D )
  );
  al_oa21ttf _117_ (
    .a(\DFF_0.Q ),
    .b(TEST),
    .c(CLR),
    .y(_008_)
  );
  al_aoi21ttf _118_ (
    .a(\DFF_0.Q ),
    .b(TEST),
    .c(_008_),
    .y(\DFF_0.D )
  );
  al_dffl _119_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _120_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _121_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _122_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _123_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  al_dffl _124_ (
    .clk(CK),
    .d(\DFF_5.D ),
    .q(\DFF_5.Q )
  );
  al_dffl _125_ (
    .clk(CK),
    .d(\DFF_6.D ),
    .q(\DFF_6.Q )
  );
  al_dffl _126_ (
    .clk(CK),
    .d(\DFF_7.D ),
    .q(\DFF_7.Q )
  );
  al_dffl _127_ (
    .clk(CK),
    .d(\DFF_8.D ),
    .q(\DFF_8.Q )
  );
  al_dffl _128_ (
    .clk(CK),
    .d(\DFF_9.D ),
    .q(\DFF_9.Q )
  );
  al_dffl _129_ (
    .clk(CK),
    .d(\DFF_10.D ),
    .q(\DFF_10.Q )
  );
  al_dffl _130_ (
    .clk(CK),
    .d(\DFF_11.D ),
    .q(\DFF_11.Q )
  );
  al_dffl _131_ (
    .clk(CK),
    .d(\DFF_12.D ),
    .q(\DFF_12.Q )
  );
  al_dffl _132_ (
    .clk(CK),
    .d(\DFF_13.D ),
    .q(\DFF_13.Q )
  );
  al_dffl _133_ (
    .clk(CK),
    .d(\DFF_14.D ),
    .q(\DFF_14.Q )
  );
  al_dffl _134_ (
    .clk(CK),
    .d(\DFF_15.D ),
    .q(\DFF_15.Q )
  );
  al_dffl _135_ (
    .clk(CK),
    .d(\DFF_16.D ),
    .q(\DFF_16.Q )
  );
  al_dffl _136_ (
    .clk(CK),
    .d(\DFF_17.D ),
    .q(\DFF_17.Q )
  );
  al_dffl _137_ (
    .clk(CK),
    .d(\DFF_18.D ),
    .q(\DFF_18.Q )
  );
  al_dffl _138_ (
    .clk(CK),
    .d(\DFF_19.D ),
    .q(\DFF_19.Q )
  );
  al_dffl _139_ (
    .clk(CK),
    .d(\DFF_20.D ),
    .q(\DFF_20.Q )
  );
  assign C1VCO0 = \DFF_20.Q ;
  assign C3_Q0 = \DFF_12.Q ;
  assign C3_Q0VD = \DFF_12.D ;
  assign C3_Q1 = \DFF_11.Q ;
  assign C3_Q1VD = \DFF_11.D ;
  assign C3_Q2 = \DFF_10.Q ;
  assign C3_Q2VD = \DFF_10.D ;
  assign C3_Q3 = \DFF_9.Q ;
  assign C3_Q3VD = \DFF_9.D ;
  assign CLRB = CLR;
  assign \DFF_0.CK  = CK;
  assign \DFF_1.CK  = CK;
  assign \DFF_10.CK  = CK;
  assign \DFF_11.CK  = CK;
  assign \DFF_12.CK  = CK;
  assign \DFF_13.CK  = CK;
  assign \DFF_14.CK  = CK;
  assign \DFF_15.CK  = CK;
  assign \DFF_16.CK  = CK;
  assign \DFF_17.CK  = CK;
  assign \DFF_18.CK  = CK;
  assign \DFF_19.CK  = CK;
  assign \DFF_2.CK  = CK;
  assign \DFF_20.CK  = CK;
  assign \DFF_3.CK  = CK;
  assign \DFF_4.CK  = CK;
  assign \DFF_5.CK  = CK;
  assign \DFF_6.CK  = CK;
  assign \DFF_7.CK  = CK;
  assign \DFF_8.CK  = CK;
  assign \DFF_9.CK  = CK;
  assign FMB = FM;
  assign FML = \DFF_1.Q ;
  assign FMLVIINLATCHVCDAD = \DFF_1.D ;
  assign GRN1 = \DFF_7.Q ;
  assign GRN2 = \DFF_6.Q ;
  assign OLATCHVUC_5 = \DFF_4.Q ;
  assign OLATCHVUC_6 = \DFF_3.Q ;
  assign OLATCH_FEL = \DFF_8.Q ;
  assign OLATCH_G1L = \DFF_7.Q ;
  assign OLATCH_G2L = \DFF_6.Q ;
  assign OLATCH_R1L = \DFF_5.Q ;
  assign OLATCH_R2L = RED2;
  assign OLATCH_Y1L = YLW1;
  assign OLATCH_Y2L = \DFF_2.Q ;
  assign OUTBUFVBUFR2VIIR1 = \DFF_4.Q ;
  assign OUTBUFVBUFY1VIIR1 = \DFF_3.Q ;
  assign R2C = \DFF_4.D ;
  assign RED1 = \DFF_5.Q ;
  assign TCOMB_FE = \DFF_8.D ;
  assign TCOMB_FE_BF = \DFF_8.D ;
  assign TCOMB_GA1 = \DFF_7.D ;
  assign TCOMB_GA2 = \DFF_6.D ;
  assign TCOMB_RA1 = \DFF_5.D ;
  assign TCOMB_YA2 = \DFF_2.D ;
  assign TESTB = TEST;
  assign TESTL = \DFF_0.Q ;
  assign TESTLVIINLATCHVCDAD = \DFF_0.D ;
  assign UC_10 = \DFF_19.Q ;
  assign UC_10VD = \DFF_19.D ;
  assign UC_11 = \DFF_20.Q ;
  assign UC_11VD = \DFF_20.D ;
  assign UC_11VZ = \DFF_20.Q ;
  assign UC_16 = \DFF_13.Q ;
  assign UC_16VD = \DFF_13.D ;
  assign UC_17 = \DFF_14.Q ;
  assign UC_17VD = \DFF_14.D ;
  assign UC_18 = \DFF_15.Q ;
  assign UC_18VD = \DFF_15.D ;
  assign UC_19 = \DFF_16.Q ;
  assign UC_19VD = \DFF_16.D ;
  assign UC_8 = \DFF_17.Q ;
  assign UC_8VD = \DFF_17.D ;
  assign UC_9 = \DFF_18.Q ;
  assign UC_9VD = \DFF_18.D ;
  assign Y1C = \DFF_3.D ;
  assign YLW2 = \DFF_2.Q ;
endmodule
