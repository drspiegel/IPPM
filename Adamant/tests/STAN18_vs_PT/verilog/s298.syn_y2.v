
module s298(GND, VDD, CK, G0, G1, G117, G118, G132, G133, G2, G66, G67);
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
  input G0;
  input G1;
  wire G10;
  wire G102;
  wire G107;
  wire G11;
  wire G113;
  output G117;
  output G118;
  wire G119;
  wire G12;
  wire G124;
  wire G125;
  wire G13;
  wire G130;
  wire G131;
  output G132;
  output G133;
  wire G14;
  wire G15;
  wire G16;
  wire G17;
  wire G18;
  wire G19;
  input G2;
  wire G20;
  wire G21;
  wire G22;
  wire G23;
  wire G29;
  wire G30;
  wire G34;
  wire G39;
  wire G44;
  wire G56;
  output G66;
  output G67;
  wire G86;
  wire G92;
  wire G98;
  input GND;
  input VDD;
  al_nor2 _040_ (
    .a(\DFF_0.Q ),
    .b(G0),
    .y(\DFF_0.D )
  );
  al_and3fft _041_ (
    .a(\DFF_1.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_3.Q ),
    .y(_000_)
  );
  al_or2 _042_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .y(_001_)
  );
  al_ao21 _043_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(G0),
    .y(_002_)
  );
  al_and3fft _044_ (
    .a(_002_),
    .b(_000_),
    .c(_001_),
    .y(\DFF_1.D )
  );
  al_and3 _045_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_2.Q ),
    .y(_003_)
  );
  al_ao21 _046_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_2.Q ),
    .y(_004_)
  );
  al_and3fft _047_ (
    .a(G0),
    .b(_003_),
    .c(_004_),
    .y(\DFF_2.D )
  );
  al_nor2 _048_ (
    .a(\DFF_1.Q ),
    .b(\DFF_2.Q ),
    .y(_005_)
  );
  al_ao21 _049_ (
    .a(\DFF_0.Q ),
    .b(_005_),
    .c(G0),
    .y(_006_)
  );
  al_or2ft _050_ (
    .a(\DFF_3.Q ),
    .b(_003_),
    .y(_007_)
  );
  al_nand2ft _051_ (
    .a(\DFF_3.Q ),
    .b(_003_),
    .y(_008_)
  );
  al_aoi21 _052_ (
    .a(_008_),
    .b(_007_),
    .c(_006_),
    .y(\DFF_3.D )
  );
  al_aoi21 _053_ (
    .a(\DFF_0.Q ),
    .b(_000_),
    .c(\DFF_13.Q ),
    .y(_009_)
  );
  al_aoi21ftt _054_ (
    .a(\DFF_4.Q ),
    .b(_009_),
    .c(G0),
    .y(_010_)
  );
  al_aoi21ftf _055_ (
    .a(_009_),
    .b(\DFF_4.Q ),
    .c(_010_),
    .y(\DFF_4.D )
  );
  al_nand2ft _056_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_011_)
  );
  al_and3fft _057_ (
    .a(\DFF_1.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_12.Q ),
    .y(_012_)
  );
  al_ao21ftt _058_ (
    .a(_011_),
    .b(_012_),
    .c(\DFF_5.Q ),
    .y(_013_)
  );
  al_and2ft _059_ (
    .a(\DFF_12.Q ),
    .b(\DFF_1.Q ),
    .y(_014_)
  );
  al_nand3fft _060_ (
    .a(\DFF_2.Q ),
    .b(_011_),
    .c(_014_),
    .y(_015_)
  );
  al_and3ftt _061_ (
    .a(G0),
    .b(_015_),
    .c(_013_),
    .y(\DFF_5.D )
  );
  al_ao21 _062_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_3.Q ),
    .y(_016_)
  );
  al_ao21ftf _063_ (
    .a(\DFF_6.Q ),
    .b(\DFF_4.Q ),
    .c(_016_),
    .y(_017_)
  );
  al_aoi21 _064_ (
    .a(_015_),
    .b(_013_),
    .c(_017_),
    .y(\DFF_6.D )
  );
  al_aoi21 _065_ (
    .a(\DFF_4.Q ),
    .b(_005_),
    .c(\DFF_3.Q ),
    .y(_018_)
  );
  al_ao21ttf _066_ (
    .a(_015_),
    .b(_013_),
    .c(_018_),
    .y(_019_)
  );
  al_and2 _067_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_020_)
  );
  al_ao21ttf _068_ (
    .a(_015_),
    .b(_013_),
    .c(_020_),
    .y(_021_)
  );
  al_nand3ftt _069_ (
    .a(\DFF_4.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_2.Q ),
    .y(_022_)
  );
  al_ao21ftf _070_ (
    .a(\DFF_7.Q ),
    .b(_016_),
    .c(_022_),
    .y(_023_)
  );
  al_aoi21 _071_ (
    .a(_019_),
    .b(_021_),
    .c(_023_),
    .y(\DFF_7.D )
  );
  al_and2ft _072_ (
    .a(\DFF_8.Q ),
    .b(_016_),
    .y(_024_)
  );
  al_aoi21 _073_ (
    .a(_019_),
    .b(_021_),
    .c(_024_),
    .y(\DFF_8.D )
  );
  al_inv _074_ (
    .a(\DFF_9.Q ),
    .y(_025_)
  );
  al_inv _075_ (
    .a(\DFF_5.Q ),
    .y(_026_)
  );
  al_nand3ftt _076_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .c(_012_),
    .y(_027_)
  );
  al_ao21ttf _077_ (
    .a(_026_),
    .b(_027_),
    .c(_015_),
    .y(_028_)
  );
  al_nand3 _078_ (
    .a(_025_),
    .b(_020_),
    .c(_028_),
    .y(_029_)
  );
  al_nand3 _079_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_9.Q ),
    .y(_030_)
  );
  al_and3 _080_ (
    .a(_018_),
    .b(_030_),
    .c(_028_),
    .y(_031_)
  );
  al_nand3 _081_ (
    .a(\DFF_0.Q ),
    .b(_015_),
    .c(_013_),
    .y(_032_)
  );
  al_nor3fft _082_ (
    .a(_032_),
    .b(_029_),
    .c(_031_),
    .y(\DFF_9.D )
  );
  al_oai21ttf _083_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_10.Q ),
    .y(_033_)
  );
  al_and3fft _084_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_1.Q ),
    .y(_034_)
  );
  al_or3fft _085_ (
    .a(\DFF_4.Q ),
    .b(_033_),
    .c(_034_),
    .y(_035_)
  );
  al_aoi21ttf _086_ (
    .a(_035_),
    .b(_028_),
    .c(_032_),
    .y(\DFF_10.D )
  );
  al_mux2l _087_ (
    .a(\DFF_11.Q ),
    .b(\DFF_1.Q ),
    .s(\DFF_4.Q ),
    .y(_036_)
  );
  al_mux2l _088_ (
    .a(\DFF_4.Q ),
    .b(\DFF_2.Q ),
    .s(\DFF_3.Q ),
    .y(_037_)
  );
  al_and3 _089_ (
    .a(_036_),
    .b(_037_),
    .c(_028_),
    .y(\DFF_11.D )
  );
  al_oa21ttf _090_ (
    .a(\DFF_12.Q ),
    .b(G2),
    .c(G0),
    .y(_038_)
  );
  al_aoi21ttf _091_ (
    .a(\DFF_12.Q ),
    .b(G2),
    .c(_038_),
    .y(\DFF_12.D )
  );
  al_oa21ttf _092_ (
    .a(\DFF_13.Q ),
    .b(G1),
    .c(G0),
    .y(_039_)
  );
  al_aoi21ttf _093_ (
    .a(\DFF_13.Q ),
    .b(G1),
    .c(_039_),
    .y(\DFF_13.D )
  );
  al_dffl _094_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _095_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _096_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _097_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _098_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  al_dffl _099_ (
    .clk(CK),
    .d(\DFF_5.D ),
    .q(\DFF_5.Q )
  );
  al_dffl _100_ (
    .clk(CK),
    .d(\DFF_6.D ),
    .q(\DFF_6.Q )
  );
  al_dffl _101_ (
    .clk(CK),
    .d(\DFF_7.D ),
    .q(\DFF_7.Q )
  );
  al_dffl _102_ (
    .clk(CK),
    .d(\DFF_8.D ),
    .q(\DFF_8.Q )
  );
  al_dffl _103_ (
    .clk(CK),
    .d(\DFF_9.D ),
    .q(\DFF_9.Q )
  );
  al_dffl _104_ (
    .clk(CK),
    .d(\DFF_10.D ),
    .q(\DFF_10.Q )
  );
  al_dffl _105_ (
    .clk(CK),
    .d(\DFF_11.D ),
    .q(\DFF_11.Q )
  );
  al_dffl _106_ (
    .clk(CK),
    .d(\DFF_12.D ),
    .q(\DFF_12.Q )
  );
  al_dffl _107_ (
    .clk(CK),
    .d(\DFF_13.D ),
    .q(\DFF_13.Q )
  );
  assign \DFF_0.CK  = CK;
  assign \DFF_1.CK  = CK;
  assign \DFF_10.CK  = CK;
  assign \DFF_11.CK  = CK;
  assign \DFF_12.CK  = CK;
  assign \DFF_13.CK  = CK;
  assign \DFF_2.CK  = CK;
  assign \DFF_3.CK  = CK;
  assign \DFF_4.CK  = CK;
  assign \DFF_5.CK  = CK;
  assign \DFF_6.CK  = CK;
  assign \DFF_7.CK  = CK;
  assign \DFF_8.CK  = CK;
  assign \DFF_9.CK  = CK;
  assign G10 = \DFF_0.Q ;
  assign G102 = \DFF_9.D ;
  assign G107 = \DFF_10.D ;
  assign G11 = \DFF_1.Q ;
  assign G113 = \DFF_11.D ;
  assign G117 = \DFF_8.Q ;
  assign G118 = \DFF_9.Q ;
  assign G119 = \DFF_12.D ;
  assign G12 = \DFF_2.Q ;
  assign G124 = G2;
  assign G125 = \DFF_13.D ;
  assign G13 = \DFF_3.Q ;
  assign G130 = G0;
  assign G131 = G1;
  assign G132 = \DFF_10.Q ;
  assign G133 = \DFF_11.Q ;
  assign G14 = \DFF_4.Q ;
  assign G15 = \DFF_5.Q ;
  assign G16 = \DFF_6.Q ;
  assign G17 = \DFF_7.Q ;
  assign G18 = \DFF_8.Q ;
  assign G19 = \DFF_9.Q ;
  assign G20 = \DFF_10.Q ;
  assign G21 = \DFF_11.Q ;
  assign G22 = \DFF_12.Q ;
  assign G23 = \DFF_13.Q ;
  assign G29 = \DFF_0.D ;
  assign G30 = \DFF_1.D ;
  assign G34 = \DFF_2.D ;
  assign G39 = \DFF_3.D ;
  assign G44 = \DFF_4.D ;
  assign G56 = \DFF_5.D ;
  assign G66 = \DFF_6.Q ;
  assign G67 = \DFF_7.Q ;
  assign G86 = \DFF_6.D ;
  assign G92 = \DFF_7.D ;
  assign G98 = \DFF_8.D ;
endmodule
