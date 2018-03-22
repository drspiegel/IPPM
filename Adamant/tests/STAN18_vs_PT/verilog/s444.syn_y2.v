
module s444(GND, VDD, CK, G0, G1, G107, G108, G118, G119, G167, G168, G2);
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
  input CK;
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
  input G0;
  input G1;
  wire G101;
  wire G106;
  output G107;
  output G108;
  wire G109;
  wire G11;
  wire G110;
  wire G111;
  wire G112;
  wire G113;
  wire G114;
  output G118;
  output G119;
  wire G12;
  wire G13;
  wire G14;
  wire G15;
  wire G152;
  wire G155;
  wire G16;
  wire G160;
  wire G162;
  wire G162BF;
  output G167;
  output G168;
  wire G17;
  wire G18;
  wire G19;
  input G2;
  wire G20;
  wire G21;
  wire G22;
  wire G23;
  wire G24;
  wire G25;
  wire G26;
  wire G27;
  wire G28;
  wire G29;
  wire G30;
  wire G31;
  wire G37;
  wire G38;
  wire G41;
  wire G43;
  wire G45;
  wire G49;
  wire G58;
  wire G62;
  wire G66;
  wire G70;
  wire G80;
  wire G84;
  wire G88;
  wire G92;
  input GND;
  wire IIII182;
  input VDD;
  al_inv _051_ (
    .a(\DFF_17.Q ),
    .y(G119)
  );
  al_inv _052_ (
    .a(\DFF_18.Q ),
    .y(G167)
  );
  al_nand2ft _053_ (
    .a(\DFF_9.Q ),
    .b(\DFF_8.Q ),
    .y(_012_)
  );
  al_and2ft _054_ (
    .a(G0),
    .b(\DFF_11.Q ),
    .y(_013_)
  );
  al_oa21ttf _055_ (
    .a(\DFF_10.Q ),
    .b(\DFF_13.Q ),
    .c(G0),
    .y(_014_)
  );
  al_aoi21 _056_ (
    .a(_012_),
    .b(_013_),
    .c(_014_),
    .y(\DFF_16.D )
  );
  al_and3fft _057_ (
    .a(\DFF_9.Q ),
    .b(\DFF_8.Q ),
    .c(\DFF_12.Q ),
    .y(_015_)
  );
  al_nand3ftt _058_ (
    .a(G0),
    .b(\DFF_10.Q ),
    .c(_015_),
    .y(_016_)
  );
  al_inv _059_ (
    .a(G0),
    .y(_017_)
  );
  al_and3fft _060_ (
    .a(\DFF_9.Q ),
    .b(\DFF_12.Q ),
    .c(\DFF_8.Q ),
    .y(_018_)
  );
  al_nand3ftt _061_ (
    .a(\DFF_11.Q ),
    .b(\DFF_10.Q ),
    .c(_018_),
    .y(_019_)
  );
  al_nand3 _062_ (
    .a(\DFF_13.Q ),
    .b(_017_),
    .c(_019_),
    .y(_020_)
  );
  al_nand2 _063_ (
    .a(_016_),
    .b(_020_),
    .y(\DFF_13.D )
  );
  al_ao21ftf _064_ (
    .a(\DFF_11.Q ),
    .b(_018_),
    .c(\DFF_13.Q ),
    .y(_021_)
  );
  al_nand2ft _065_ (
    .a(G0),
    .b(\DFF_10.Q ),
    .y(_022_)
  );
  al_aoi21 _066_ (
    .a(\DFF_11.Q ),
    .b(\DFF_12.Q ),
    .c(_022_),
    .y(_023_)
  );
  al_and3ftt _067_ (
    .a(_015_),
    .b(_023_),
    .c(_021_),
    .y(\DFF_14.D )
  );
  al_and3ftt _068_ (
    .a(G0),
    .b(\DFF_9.Q ),
    .c(\DFF_8.Q ),
    .y(_024_)
  );
  al_nand2ft _069_ (
    .a(\DFF_8.Q ),
    .b(_013_),
    .y(_025_)
  );
  al_and3fft _070_ (
    .a(_014_),
    .b(_024_),
    .c(_025_),
    .y(\DFF_15.D )
  );
  al_and3fft _071_ (
    .a(\DFF_10.Q ),
    .b(\DFF_13.Q ),
    .c(_024_),
    .y(\DFF_19.D )
  );
  al_or3 _072_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_2.Q ),
    .y(_026_)
  );
  al_aoi21 _073_ (
    .a(\DFF_3.Q ),
    .b(_026_),
    .c(G0),
    .y(_027_)
  );
  al_and2ft _074_ (
    .a(\DFF_0.Q ),
    .b(_027_),
    .y(\DFF_0.D )
  );
  al_or2 _075_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .y(_028_)
  );
  al_ao21 _076_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(G0),
    .y(_029_)
  );
  al_and3fft _077_ (
    .a(\DFF_3.Q ),
    .b(_029_),
    .c(_028_),
    .y(\DFF_1.D )
  );
  al_nand3 _078_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_2.Q ),
    .y(_030_)
  );
  al_ao21 _079_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_2.Q ),
    .y(_031_)
  );
  al_and3 _080_ (
    .a(_030_),
    .b(_031_),
    .c(_027_),
    .y(\DFF_2.D )
  );
  al_nand2 _081_ (
    .a(\DFF_3.Q ),
    .b(_030_),
    .y(_032_)
  );
  al_or2 _082_ (
    .a(\DFF_3.Q ),
    .b(_030_),
    .y(_033_)
  );
  al_aoi21ttf _083_ (
    .a(_032_),
    .b(_033_),
    .c(_027_),
    .y(\DFF_3.D )
  );
  al_nor2 _084_ (
    .a(\DFF_9.Q ),
    .b(\DFF_8.Q ),
    .y(_034_)
  );
  al_aoi21 _085_ (
    .a(_013_),
    .b(_034_),
    .c(_014_),
    .y(_035_)
  );
  al_ao21 _086_ (
    .a(\DFF_6.Q ),
    .b(\DFF_13.D ),
    .c(_035_),
    .y(\DFF_17.D )
  );
  al_nand3fft _087_ (
    .a(\DFF_11.Q ),
    .b(_022_),
    .c(_015_),
    .y(_036_)
  );
  al_nand3ftt _088_ (
    .a(\DFF_10.Q ),
    .b(_013_),
    .c(_034_),
    .y(_037_)
  );
  al_and3 _089_ (
    .a(_036_),
    .b(_037_),
    .c(_020_),
    .y(_038_)
  );
  al_ao21 _090_ (
    .a(\DFF_6.Q ),
    .b(\DFF_13.D ),
    .c(_038_),
    .y(\DFF_18.D )
  );
  al_ao21 _091_ (
    .a(\DFF_3.Q ),
    .b(_026_),
    .c(\DFF_20.Q ),
    .y(_039_)
  );
  al_or3 _092_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(\DFF_6.Q ),
    .y(_040_)
  );
  al_and2 _093_ (
    .a(\DFF_7.Q ),
    .b(_040_),
    .y(_041_)
  );
  al_ao21 _094_ (
    .a(_041_),
    .b(_039_),
    .c(G0),
    .y(_042_)
  );
  al_or2 _095_ (
    .a(\DFF_4.Q ),
    .b(_039_),
    .y(_043_)
  );
  al_and2 _096_ (
    .a(\DFF_4.Q ),
    .b(_039_),
    .y(_044_)
  );
  al_and3fft _097_ (
    .a(_044_),
    .b(_042_),
    .c(_043_),
    .y(\DFF_4.D )
  );
  al_nand3 _098_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(_039_),
    .y(_045_)
  );
  al_ao21 _099_ (
    .a(\DFF_4.Q ),
    .b(_039_),
    .c(\DFF_5.Q ),
    .y(_046_)
  );
  al_nor3fft _100_ (
    .a(_045_),
    .b(_046_),
    .c(_042_),
    .y(\DFF_5.D )
  );
  al_nand3 _101_ (
    .a(\DFF_5.Q ),
    .b(\DFF_6.Q ),
    .c(_044_),
    .y(_047_)
  );
  al_nand2ft _102_ (
    .a(\DFF_6.Q ),
    .b(_045_),
    .y(_048_)
  );
  al_and3ftt _103_ (
    .a(_042_),
    .b(_048_),
    .c(_047_),
    .y(\DFF_6.D )
  );
  al_aoi21ftt _104_ (
    .a(\DFF_7.Q ),
    .b(_047_),
    .c(_042_),
    .y(\DFF_7.D )
  );
  al_or3 _105_ (
    .a(\DFF_9.Q ),
    .b(\DFF_10.Q ),
    .c(\DFF_8.Q ),
    .y(_049_)
  );
  al_nand2 _106_ (
    .a(\DFF_11.Q ),
    .b(_049_),
    .y(_050_)
  );
  al_nand3ftt _107_ (
    .a(_050_),
    .b(_041_),
    .c(_039_),
    .y(_000_)
  );
  al_and2 _108_ (
    .a(_017_),
    .b(_000_),
    .y(_001_)
  );
  al_ao21 _109_ (
    .a(_041_),
    .b(_039_),
    .c(\DFF_8.Q ),
    .y(_002_)
  );
  al_nand3 _110_ (
    .a(\DFF_8.Q ),
    .b(_041_),
    .c(_039_),
    .y(_003_)
  );
  al_and3 _111_ (
    .a(_002_),
    .b(_003_),
    .c(_001_),
    .y(\DFF_8.D )
  );
  al_nand2ft _112_ (
    .a(\DFF_9.Q ),
    .b(_003_),
    .y(_004_)
  );
  al_and2 _113_ (
    .a(\DFF_9.Q ),
    .b(\DFF_8.Q ),
    .y(_005_)
  );
  al_nand3 _114_ (
    .a(_005_),
    .b(_041_),
    .c(_039_),
    .y(_006_)
  );
  al_and3 _115_ (
    .a(_006_),
    .b(_004_),
    .c(_001_),
    .y(\DFF_9.D )
  );
  al_inv _116_ (
    .a(\DFF_10.Q ),
    .y(_007_)
  );
  al_or2 _117_ (
    .a(_007_),
    .b(_006_),
    .y(_008_)
  );
  al_and2 _118_ (
    .a(_007_),
    .b(_006_),
    .y(_009_)
  );
  al_and3ftt _119_ (
    .a(_009_),
    .b(_001_),
    .c(_008_),
    .y(\DFF_10.D )
  );
  al_aoi21ftf _120_ (
    .a(\DFF_11.Q ),
    .b(_008_),
    .c(_001_),
    .y(\DFF_11.D )
  );
  al_oa21ttf _121_ (
    .a(\DFF_20.Q ),
    .b(G1),
    .c(G0),
    .y(_010_)
  );
  al_aoi21ttf _122_ (
    .a(\DFF_20.Q ),
    .b(G1),
    .c(_010_),
    .y(\DFF_20.D )
  );
  al_oa21ttf _123_ (
    .a(\DFF_12.Q ),
    .b(G2),
    .c(G0),
    .y(_011_)
  );
  al_aoi21ttf _124_ (
    .a(\DFF_12.Q ),
    .b(G2),
    .c(_011_),
    .y(\DFF_12.D )
  );
  al_dffl _125_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _126_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _127_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _128_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _129_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  al_dffl _130_ (
    .clk(CK),
    .d(\DFF_5.D ),
    .q(\DFF_5.Q )
  );
  al_dffl _131_ (
    .clk(CK),
    .d(\DFF_6.D ),
    .q(\DFF_6.Q )
  );
  al_dffl _132_ (
    .clk(CK),
    .d(\DFF_7.D ),
    .q(\DFF_7.Q )
  );
  al_dffl _133_ (
    .clk(CK),
    .d(\DFF_8.D ),
    .q(\DFF_8.Q )
  );
  al_dffl _134_ (
    .clk(CK),
    .d(\DFF_9.D ),
    .q(\DFF_9.Q )
  );
  al_dffl _135_ (
    .clk(CK),
    .d(\DFF_10.D ),
    .q(\DFF_10.Q )
  );
  al_dffl _136_ (
    .clk(CK),
    .d(\DFF_11.D ),
    .q(\DFF_11.Q )
  );
  al_dffl _137_ (
    .clk(CK),
    .d(\DFF_12.D ),
    .q(\DFF_12.Q )
  );
  al_dffl _138_ (
    .clk(CK),
    .d(\DFF_13.D ),
    .q(\DFF_13.Q )
  );
  al_dffl _139_ (
    .clk(CK),
    .d(\DFF_14.D ),
    .q(\DFF_14.Q )
  );
  al_dffl _140_ (
    .clk(CK),
    .d(\DFF_15.D ),
    .q(\DFF_15.Q )
  );
  al_dffl _141_ (
    .clk(CK),
    .d(\DFF_16.D ),
    .q(\DFF_16.Q )
  );
  al_dffl _142_ (
    .clk(CK),
    .d(\DFF_17.D ),
    .q(\DFF_17.Q )
  );
  al_dffl _143_ (
    .clk(CK),
    .d(\DFF_18.D ),
    .q(\DFF_18.Q )
  );
  al_dffl _144_ (
    .clk(CK),
    .d(\DFF_19.D ),
    .q(\DFF_19.Q )
  );
  al_dffl _145_ (
    .clk(CK),
    .d(\DFF_20.D ),
    .q(\DFF_20.Q )
  );
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
  assign G101 = \DFF_12.D ;
  assign G106 = G2;
  assign G107 = \DFF_14.Q ;
  assign G108 = \DFF_15.Q ;
  assign G109 = \DFF_14.D ;
  assign G11 = \DFF_0.Q ;
  assign G110 = \DFF_15.D ;
  assign G111 = \DFF_16.D ;
  assign G112 = \DFF_17.D ;
  assign G113 = \DFF_18.D ;
  assign G114 = \DFF_19.D ;
  assign G118 = \DFF_16.Q ;
  assign G12 = \DFF_1.Q ;
  assign G13 = \DFF_2.Q ;
  assign G14 = \DFF_3.Q ;
  assign G15 = \DFF_4.Q ;
  assign G152 = G0;
  assign G155 = \DFF_20.D ;
  assign G16 = \DFF_5.Q ;
  assign G160 = G1;
  assign G162 = \DFF_13.D ;
  assign G162BF = \DFF_13.D ;
  assign G168 = \DFF_19.Q ;
  assign G17 = \DFF_6.Q ;
  assign G18 = \DFF_7.Q ;
  assign G19 = \DFF_8.Q ;
  assign G20 = \DFF_9.Q ;
  assign G21 = \DFF_10.Q ;
  assign G22 = \DFF_11.Q ;
  assign G23 = \DFF_12.Q ;
  assign G24 = \DFF_13.Q ;
  assign G25 = \DFF_14.Q ;
  assign G26 = \DFF_15.Q ;
  assign G27 = \DFF_16.Q ;
  assign G28 = \DFF_17.Q ;
  assign G29 = \DFF_18.Q ;
  assign G30 = \DFF_19.Q ;
  assign G31 = \DFF_20.Q ;
  assign G37 = \DFF_0.D ;
  assign G38 = \DFF_0.Q ;
  assign G41 = \DFF_1.D ;
  assign G43 = \DFF_0.Q ;
  assign G45 = \DFF_2.D ;
  assign G49 = \DFF_3.D ;
  assign G58 = \DFF_4.D ;
  assign G62 = \DFF_5.D ;
  assign G66 = \DFF_6.D ;
  assign G70 = \DFF_7.D ;
  assign G80 = \DFF_8.D ;
  assign G84 = \DFF_9.D ;
  assign G88 = \DFF_10.D ;
  assign G92 = \DFF_11.D ;
  assign IIII182 = \DFF_0.Q ;
endmodule
