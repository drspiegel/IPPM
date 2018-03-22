
module s420(GND, VDD, CK, C_0, C_1, C_10, C_11, C_12, C_13, C_14, C_15, C_16, C_2, C_3, C_4, C_5, C_6, C_7, C_8, C_9, P_0, Z);
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
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  input CK;
  input C_0;
  input C_1;
  input C_10;
  input C_11;
  input C_12;
  input C_13;
  input C_14;
  input C_15;
  input C_16;
  input C_2;
  input C_3;
  input C_4;
  input C_5;
  input C_6;
  input C_7;
  input C_8;
  input C_9;
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
  wire I110;
  wire I111;
  wire I112;
  wire I113;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I208;
  wire I209;
  wire I210;
  wire I211;
  wire I306;
  wire I307;
  wire I308;
  wire I309;
  input P_0;
  input VDD;
  wire X_1;
  wire X_10;
  wire X_11;
  wire X_12;
  wire X_13;
  wire X_14;
  wire X_15;
  wire X_16;
  wire X_2;
  wire X_3;
  wire X_4;
  wire X_5;
  wire X_6;
  wire X_7;
  wire X_8;
  wire X_9;
  output Z;
  al_and3 _069_ (
    .a(\DFF_3.Q ),
    .b(\DFF_2.Q ),
    .c(P_0),
    .y(_036_)
  );
  al_and3 _070_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(_036_),
    .y(_037_)
  );
  al_ao21 _071_ (
    .a(\DFF_1.Q ),
    .b(_036_),
    .c(\DFF_0.Q ),
    .y(_038_)
  );
  al_and2ft _072_ (
    .a(_037_),
    .b(_038_),
    .y(\DFF_0.D )
  );
  al_and3 _073_ (
    .a(\DFF_7.Q ),
    .b(\DFF_6.Q ),
    .c(_037_),
    .y(_039_)
  );
  al_and3 _074_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(_039_),
    .y(_040_)
  );
  al_ao21 _075_ (
    .a(\DFF_5.Q ),
    .b(_039_),
    .c(\DFF_4.Q ),
    .y(_041_)
  );
  al_and2ft _076_ (
    .a(_040_),
    .b(_041_),
    .y(\DFF_4.D )
  );
  al_and3 _077_ (
    .a(\DFF_11.Q ),
    .b(\DFF_10.Q ),
    .c(_040_),
    .y(_042_)
  );
  al_and3 _078_ (
    .a(\DFF_9.Q ),
    .b(\DFF_8.Q ),
    .c(_042_),
    .y(_043_)
  );
  al_ao21 _079_ (
    .a(\DFF_9.Q ),
    .b(_042_),
    .c(\DFF_8.Q ),
    .y(_044_)
  );
  al_and2ft _080_ (
    .a(_043_),
    .b(_044_),
    .y(\DFF_8.D )
  );
  al_inv _081_ (
    .a(\DFF_12.Q ),
    .y(_045_)
  );
  al_and3 _082_ (
    .a(\DFF_15.Q ),
    .b(\DFF_14.Q ),
    .c(_043_),
    .y(_046_)
  );
  al_ao21 _083_ (
    .a(\DFF_13.Q ),
    .b(_046_),
    .c(_045_),
    .y(_047_)
  );
  al_and3 _084_ (
    .a(\DFF_13.Q ),
    .b(_045_),
    .c(_046_),
    .y(_048_)
  );
  al_nand2ft _085_ (
    .a(_048_),
    .b(_047_),
    .y(\DFF_12.D )
  );
  al_and2 _086_ (
    .a(\DFF_15.Q ),
    .b(_043_),
    .y(_049_)
  );
  al_nand3 _087_ (
    .a(\DFF_14.Q ),
    .b(\DFF_13.Q ),
    .c(_049_),
    .y(_050_)
  );
  al_nand3 _088_ (
    .a(\DFF_15.Q ),
    .b(\DFF_14.Q ),
    .c(_043_),
    .y(_051_)
  );
  al_and2ft _089_ (
    .a(\DFF_13.Q ),
    .b(_051_),
    .y(_052_)
  );
  al_and2ft _090_ (
    .a(_052_),
    .b(_050_),
    .y(\DFF_13.D )
  );
  al_aoi21 _091_ (
    .a(\DFF_3.Q ),
    .b(P_0),
    .c(\DFF_2.Q ),
    .y(_053_)
  );
  al_nor2 _092_ (
    .a(_053_),
    .b(_036_),
    .y(\DFF_2.D )
  );
  al_ao21 _093_ (
    .a(\DFF_7.Q ),
    .b(_037_),
    .c(\DFF_6.Q ),
    .y(_054_)
  );
  al_and2ft _094_ (
    .a(_039_),
    .b(_054_),
    .y(\DFF_6.D )
  );
  al_ao21 _095_ (
    .a(\DFF_11.Q ),
    .b(_040_),
    .c(\DFF_10.Q ),
    .y(_055_)
  );
  al_and2ft _096_ (
    .a(_042_),
    .b(_055_),
    .y(\DFF_10.D )
  );
  al_ao21 _097_ (
    .a(\DFF_15.Q ),
    .b(_043_),
    .c(\DFF_14.Q ),
    .y(_056_)
  );
  al_and2ft _098_ (
    .a(_046_),
    .b(_056_),
    .y(\DFF_14.D )
  );
  al_and2 _099_ (
    .a(\DFF_1.Q ),
    .b(_036_),
    .y(_057_)
  );
  al_or2 _100_ (
    .a(\DFF_1.Q ),
    .b(_036_),
    .y(_058_)
  );
  al_and2ft _101_ (
    .a(_057_),
    .b(_058_),
    .y(\DFF_1.D )
  );
  al_and2ft _102_ (
    .a(P_0),
    .b(\DFF_3.Q ),
    .y(_059_)
  );
  al_nand2ft _103_ (
    .a(\DFF_3.Q ),
    .b(P_0),
    .y(_060_)
  );
  al_nand2ft _104_ (
    .a(_059_),
    .b(_060_),
    .y(\DFF_3.D )
  );
  al_and2 _105_ (
    .a(\DFF_5.Q ),
    .b(_039_),
    .y(_061_)
  );
  al_or2 _106_ (
    .a(\DFF_5.Q ),
    .b(_039_),
    .y(_062_)
  );
  al_and2ft _107_ (
    .a(_061_),
    .b(_062_),
    .y(\DFF_5.D )
  );
  al_and2 _108_ (
    .a(\DFF_7.Q ),
    .b(_037_),
    .y(_063_)
  );
  al_or2 _109_ (
    .a(\DFF_7.Q ),
    .b(_037_),
    .y(_064_)
  );
  al_and2ft _110_ (
    .a(_063_),
    .b(_064_),
    .y(\DFF_7.D )
  );
  al_and2 _111_ (
    .a(\DFF_9.Q ),
    .b(_042_),
    .y(_065_)
  );
  al_or2 _112_ (
    .a(\DFF_9.Q ),
    .b(_042_),
    .y(_066_)
  );
  al_and2ft _113_ (
    .a(_065_),
    .b(_066_),
    .y(\DFF_9.D )
  );
  al_and2 _114_ (
    .a(\DFF_11.Q ),
    .b(_040_),
    .y(_067_)
  );
  al_or2 _115_ (
    .a(\DFF_11.Q ),
    .b(_040_),
    .y(_068_)
  );
  al_and2ft _116_ (
    .a(_067_),
    .b(_068_),
    .y(\DFF_11.D )
  );
  al_or2 _117_ (
    .a(\DFF_15.Q ),
    .b(_043_),
    .y(_000_)
  );
  al_and2ft _118_ (
    .a(_049_),
    .b(_000_),
    .y(\DFF_15.D )
  );
  al_nor2 _119_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_001_)
  );
  al_and3fft _120_ (
    .a(\DFF_3.Q ),
    .b(\DFF_2.Q ),
    .c(_001_),
    .y(_002_)
  );
  al_inv _121_ (
    .a(P_0),
    .y(_003_)
  );
  al_ao21 _122_ (
    .a(\DFF_8.Q ),
    .b(C_12),
    .c(\DFF_9.Q ),
    .y(_004_)
  );
  al_oa21ftf _123_ (
    .a(\DFF_9.Q ),
    .b(C_11),
    .c(\DFF_10.Q ),
    .y(_005_)
  );
  al_ao21 _124_ (
    .a(\DFF_10.Q ),
    .b(C_10),
    .c(\DFF_11.Q ),
    .y(_006_)
  );
  al_ao21 _125_ (
    .a(_004_),
    .b(_005_),
    .c(_006_),
    .y(_007_)
  );
  al_nand2ft _126_ (
    .a(C_9),
    .b(\DFF_11.Q ),
    .y(_008_)
  );
  al_nor2 _127_ (
    .a(\DFF_7.Q ),
    .b(\DFF_6.Q ),
    .y(_009_)
  );
  al_nand3fft _128_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(_009_),
    .y(_010_)
  );
  al_nand3ftt _129_ (
    .a(_010_),
    .b(_008_),
    .c(_007_),
    .y(_011_)
  );
  al_and2 _130_ (
    .a(\DFF_6.Q ),
    .b(C_6),
    .y(_012_)
  );
  al_ao21 _131_ (
    .a(\DFF_4.Q ),
    .b(C_8),
    .c(\DFF_5.Q ),
    .y(_013_)
  );
  al_oa21ftf _132_ (
    .a(\DFF_5.Q ),
    .b(C_7),
    .c(\DFF_6.Q ),
    .y(_014_)
  );
  al_ao21 _133_ (
    .a(_013_),
    .b(_014_),
    .c(_012_),
    .y(_015_)
  );
  al_mux2l _134_ (
    .a(C_5),
    .b(_015_),
    .s(\DFF_7.Q ),
    .y(_016_)
  );
  al_oai21ftf _135_ (
    .a(_011_),
    .b(_016_),
    .c(_003_),
    .y(_017_)
  );
  al_or3 _136_ (
    .a(\DFF_11.Q ),
    .b(\DFF_8.Q ),
    .c(_010_),
    .y(_018_)
  );
  al_or3 _137_ (
    .a(\DFF_10.Q ),
    .b(\DFF_9.Q ),
    .c(_018_),
    .y(_019_)
  );
  al_and3fft _138_ (
    .a(\DFF_15.Q ),
    .b(\DFF_14.Q ),
    .c(P_0),
    .y(_020_)
  );
  al_nand3 _139_ (
    .a(\DFF_13.Q ),
    .b(C_15),
    .c(_020_),
    .y(_021_)
  );
  al_nand3 _140_ (
    .a(P_0),
    .b(\DFF_15.Q ),
    .c(C_13),
    .y(_022_)
  );
  al_and2ft _141_ (
    .a(\DFF_15.Q ),
    .b(P_0),
    .y(_023_)
  );
  al_nand3 _142_ (
    .a(\DFF_14.Q ),
    .b(C_14),
    .c(_023_),
    .y(_024_)
  );
  al_nand3 _143_ (
    .a(_022_),
    .b(_021_),
    .c(_024_),
    .y(_025_)
  );
  al_nand3ftt _144_ (
    .a(\DFF_13.Q ),
    .b(\DFF_12.Q ),
    .c(C_16),
    .y(_026_)
  );
  al_ao21ftt _145_ (
    .a(_026_),
    .b(_020_),
    .c(_025_),
    .y(_027_)
  );
  al_ao21ftf _146_ (
    .a(_019_),
    .b(_027_),
    .c(_017_),
    .y(_028_)
  );
  al_or3fft _147_ (
    .a(\DFF_2.Q ),
    .b(C_2),
    .c(_060_),
    .y(_029_)
  );
  al_or2 _148_ (
    .a(\DFF_3.Q ),
    .b(\DFF_2.Q ),
    .y(_030_)
  );
  al_mux2l _149_ (
    .a(C_3),
    .b(C_4),
    .s(\DFF_1.Q ),
    .y(_031_)
  );
  al_nand3fft _150_ (
    .a(_030_),
    .b(_001_),
    .c(_031_),
    .y(_032_)
  );
  al_aoi21 _151_ (
    .a(\DFF_3.Q ),
    .b(C_1),
    .c(C_0),
    .y(_033_)
  );
  al_ao21 _152_ (
    .a(_033_),
    .b(_032_),
    .c(_003_),
    .y(_034_)
  );
  al_nand2 _153_ (
    .a(_029_),
    .b(_034_),
    .y(_035_)
  );
  al_ao21 _154_ (
    .a(_002_),
    .b(_028_),
    .c(_035_),
    .y(Z)
  );
  al_dffl _155_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _156_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _157_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _158_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _159_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  al_dffl _160_ (
    .clk(CK),
    .d(\DFF_5.D ),
    .q(\DFF_5.Q )
  );
  al_dffl _161_ (
    .clk(CK),
    .d(\DFF_6.D ),
    .q(\DFF_6.Q )
  );
  al_dffl _162_ (
    .clk(CK),
    .d(\DFF_7.D ),
    .q(\DFF_7.Q )
  );
  al_dffl _163_ (
    .clk(CK),
    .d(\DFF_8.D ),
    .q(\DFF_8.Q )
  );
  al_dffl _164_ (
    .clk(CK),
    .d(\DFF_9.D ),
    .q(\DFF_9.Q )
  );
  al_dffl _165_ (
    .clk(CK),
    .d(\DFF_10.D ),
    .q(\DFF_10.Q )
  );
  al_dffl _166_ (
    .clk(CK),
    .d(\DFF_11.D ),
    .q(\DFF_11.Q )
  );
  al_dffl _167_ (
    .clk(CK),
    .d(\DFF_12.D ),
    .q(\DFF_12.Q )
  );
  al_dffl _168_ (
    .clk(CK),
    .d(\DFF_13.D ),
    .q(\DFF_13.Q )
  );
  al_dffl _169_ (
    .clk(CK),
    .d(\DFF_14.D ),
    .q(\DFF_14.Q )
  );
  al_dffl _170_ (
    .clk(CK),
    .d(\DFF_15.D ),
    .q(\DFF_15.Q )
  );
  assign \DFF_0.CK  = CK;
  assign \DFF_1.CK  = CK;
  assign \DFF_10.CK  = CK;
  assign \DFF_11.CK  = CK;
  assign \DFF_12.CK  = CK;
  assign \DFF_13.CK  = CK;
  assign \DFF_14.CK  = CK;
  assign \DFF_15.CK  = CK;
  assign \DFF_2.CK  = CK;
  assign \DFF_3.CK  = CK;
  assign \DFF_4.CK  = CK;
  assign \DFF_5.CK  = CK;
  assign \DFF_6.CK  = CK;
  assign \DFF_7.CK  = CK;
  assign \DFF_8.CK  = CK;
  assign \DFF_9.CK  = CK;
  assign I110 = \DFF_4.D ;
  assign I111 = \DFF_5.D ;
  assign I112 = \DFF_6.D ;
  assign I113 = \DFF_7.D ;
  assign I12 = \DFF_0.D ;
  assign I13 = \DFF_1.D ;
  assign I14 = \DFF_2.D ;
  assign I15 = \DFF_3.D ;
  assign I208 = \DFF_8.D ;
  assign I209 = \DFF_9.D ;
  assign I210 = \DFF_10.D ;
  assign I211 = \DFF_11.D ;
  assign I306 = \DFF_12.D ;
  assign I307 = \DFF_13.D ;
  assign I308 = \DFF_14.D ;
  assign I309 = \DFF_15.D ;
  assign X_1 = \DFF_3.Q ;
  assign X_10 = \DFF_10.Q ;
  assign X_11 = \DFF_9.Q ;
  assign X_12 = \DFF_8.Q ;
  assign X_13 = \DFF_15.Q ;
  assign X_14 = \DFF_14.Q ;
  assign X_15 = \DFF_13.Q ;
  assign X_16 = \DFF_12.Q ;
  assign X_2 = \DFF_2.Q ;
  assign X_3 = \DFF_1.Q ;
  assign X_4 = \DFF_0.Q ;
  assign X_5 = \DFF_7.Q ;
  assign X_6 = \DFF_6.Q ;
  assign X_7 = \DFF_5.Q ;
  assign X_8 = \DFF_4.Q ;
  assign X_9 = \DFF_11.Q ;
endmodule
