
module s386(GND, VDD, CK, v0, v1, v13_D_10, v13_D_11, v13_D_12, v13_D_6, v13_D_7, v13_D_8, v13_D_9, v2, v3, v4, v5, v6);
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
  wire \DFF_3.CK ;
  wire \DFF_3.D ;
  wire \DFF_3.Q ;
  wire \DFF_4.CK ;
  wire \DFF_4.D ;
  wire \DFF_4.Q ;
  wire \DFF_5.CK ;
  wire \DFF_5.D ;
  wire \DFF_5.Q ;
  input GND;
  wire Lv13_D_0;
  wire Lv13_D_1;
  wire Lv13_D_10;
  wire Lv13_D_11;
  wire Lv13_D_12;
  wire Lv13_D_2;
  wire Lv13_D_3;
  wire Lv13_D_4;
  wire Lv13_D_5;
  wire Lv13_D_6;
  wire Lv13_D_7;
  wire Lv13_D_8;
  wire Lv13_D_9;
  input VDD;
  input v0;
  input v1;
  wire v10;
  wire v11;
  wire v12;
  wire v13_D_0;
  wire v13_D_1;
  output v13_D_10;
  output v13_D_11;
  output v13_D_12;
  wire v13_D_2;
  wire v13_D_3;
  wire v13_D_4;
  wire v13_D_5;
  output v13_D_6;
  output v13_D_7;
  output v13_D_8;
  output v13_D_9;
  input v2;
  input v3;
  input v4;
  input v5;
  input v6;
  wire v7;
  wire v8;
  wire v9;
  al_and3fft _068_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(v5),
    .y(_007_)
  );
  al_and3fft _069_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(\DFF_3.Q ),
    .y(_008_)
  );
  al_nand2ft _070_ (
    .a(v0),
    .b(\DFF_2.Q ),
    .y(_009_)
  );
  al_and3ftt _071_ (
    .a(_009_),
    .b(_007_),
    .c(_008_),
    .y(v13_D_12)
  );
  al_inv _072_ (
    .a(\DFF_5.Q ),
    .y(_010_)
  );
  al_or3 _073_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(\DFF_3.Q ),
    .y(_011_)
  );
  al_and3ftt _074_ (
    .a(\DFF_4.Q ),
    .b(v0),
    .c(\DFF_2.Q ),
    .y(_012_)
  );
  al_and2ft _075_ (
    .a(v6),
    .b(_012_),
    .y(_013_)
  );
  al_and3ftt _076_ (
    .a(_011_),
    .b(_010_),
    .c(_013_),
    .y(v13_D_8)
  );
  al_nand3fft _077_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(v1),
    .y(_014_)
  );
  al_ao21ttf _078_ (
    .a(v5),
    .b(v0),
    .c(\DFF_2.Q ),
    .y(_015_)
  );
  al_and3ftt _079_ (
    .a(_014_),
    .b(_008_),
    .c(_015_),
    .y(v13_D_10)
  );
  al_and3fft _080_ (
    .a(v3),
    .b(\DFF_1.Q ),
    .c(\DFF_4.Q ),
    .y(_016_)
  );
  al_nand2ft _081_ (
    .a(v4),
    .b(_016_),
    .y(_017_)
  );
  al_and3ftt _082_ (
    .a(\DFF_4.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_5.Q ),
    .y(_018_)
  );
  al_or3 _083_ (
    .a(\DFF_0.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_3.Q ),
    .y(_019_)
  );
  al_and3fft _084_ (
    .a(v1),
    .b(_019_),
    .c(v0),
    .y(_020_)
  );
  al_aoi21ftf _085_ (
    .a(_018_),
    .b(_017_),
    .c(_020_),
    .y(v13_D_7)
  );
  al_and2ft _086_ (
    .a(v3),
    .b(\DFF_4.Q ),
    .y(_021_)
  );
  al_and3fft _087_ (
    .a(\DFF_2.Q ),
    .b(v1),
    .c(v4),
    .y(_022_)
  );
  al_ao21 _088_ (
    .a(_022_),
    .b(_021_),
    .c(_012_),
    .y(_023_)
  );
  al_and3ftt _089_ (
    .a(_011_),
    .b(_010_),
    .c(_023_),
    .y(v13_D_9)
  );
  al_ao21ttf _090_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(\DFF_1.Q ),
    .y(_024_)
  );
  al_aoi21ttf _091_ (
    .a(_024_),
    .b(_017_),
    .c(_020_),
    .y(\DFF_5.D )
  );
  al_nor2 _092_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .y(_025_)
  );
  al_and3ftt _093_ (
    .a(v1),
    .b(v0),
    .c(_025_),
    .y(_026_)
  );
  al_and3ftt _094_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_4.Q ),
    .y(_027_)
  );
  al_or2ft _095_ (
    .a(\DFF_5.Q ),
    .b(_027_),
    .y(_028_)
  );
  al_and3fft _096_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(v2),
    .y(_029_)
  );
  al_and3 _097_ (
    .a(v3),
    .b(\DFF_4.Q ),
    .c(_029_),
    .y(_030_)
  );
  al_nand3ftt _098_ (
    .a(\DFF_4.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_0.Q ),
    .y(_031_)
  );
  al_or3fft _099_ (
    .a(_010_),
    .b(_031_),
    .c(_030_),
    .y(_032_)
  );
  al_and3 _100_ (
    .a(_026_),
    .b(_028_),
    .c(_032_),
    .y(\DFF_0.D )
  );
  al_ao21ttf _101_ (
    .a(_010_),
    .b(_017_),
    .c(_020_),
    .y(_033_)
  );
  al_and2 _102_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_034_)
  );
  al_nor2 _103_ (
    .a(v5),
    .b(\DFF_5.Q ),
    .y(_035_)
  );
  al_ao21 _104_ (
    .a(_035_),
    .b(_034_),
    .c(_029_),
    .y(_036_)
  );
  al_and2ft _105_ (
    .a(\DFF_4.Q ),
    .b(_026_),
    .y(_037_)
  );
  al_ao21ttf _106_ (
    .a(_036_),
    .b(_037_),
    .c(_033_),
    .y(\DFF_1.D )
  );
  al_nand3 _107_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(_007_),
    .y(_038_)
  );
  al_nor2 _108_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_039_)
  );
  al_ao21ttf _109_ (
    .a(v4),
    .b(\DFF_5.Q ),
    .c(_021_),
    .y(_040_)
  );
  al_or2 _110_ (
    .a(\DFF_5.Q ),
    .b(v2),
    .y(_041_)
  );
  al_nand3 _111_ (
    .a(_039_),
    .b(_041_),
    .c(_040_),
    .y(_042_)
  );
  al_aoi21ttf _112_ (
    .a(_038_),
    .b(_042_),
    .c(_026_),
    .y(v13_D_6)
  );
  al_nand2 _113_ (
    .a(v5),
    .b(_018_),
    .y(_043_)
  );
  al_oai21 _114_ (
    .a(\DFF_5.Q ),
    .b(v2),
    .c(v4),
    .y(_044_)
  );
  al_aoi21ttf _115_ (
    .a(v3),
    .b(\DFF_4.Q ),
    .c(_044_),
    .y(_045_)
  );
  al_oai21ftf _116_ (
    .a(v4),
    .b(\DFF_4.Q ),
    .c(\DFF_5.Q ),
    .y(_046_)
  );
  al_nand2ft _117_ (
    .a(\DFF_1.Q ),
    .b(_046_),
    .y(_047_)
  );
  al_ao21 _118_ (
    .a(_041_),
    .b(_047_),
    .c(_045_),
    .y(_048_)
  );
  al_ao21 _119_ (
    .a(_043_),
    .b(_048_),
    .c(\DFF_0.Q ),
    .y(_049_)
  );
  al_or2 _120_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .y(_050_)
  );
  al_or3ftt _121_ (
    .a(\DFF_0.Q ),
    .b(\DFF_1.Q ),
    .c(_050_),
    .y(_051_)
  );
  al_aoi21ftf _122_ (
    .a(\DFF_5.Q ),
    .b(_027_),
    .c(_051_),
    .y(_052_)
  );
  al_aoi21ttf _123_ (
    .a(_052_),
    .b(_049_),
    .c(_026_),
    .y(\DFF_4.D )
  );
  al_and2ft _124_ (
    .a(v5),
    .b(\DFF_2.Q ),
    .y(_053_)
  );
  al_nand3ftt _125_ (
    .a(_014_),
    .b(_039_),
    .c(_053_),
    .y(_054_)
  );
  al_ao21ftt _126_ (
    .a(v1),
    .b(v0),
    .c(_019_),
    .y(_055_)
  );
  al_oa21 _127_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(\DFF_2.Q ),
    .y(_056_)
  );
  al_oai21ftt _128_ (
    .a(v1),
    .b(\DFF_3.Q ),
    .c(v0),
    .y(_057_)
  );
  al_nand3fft _129_ (
    .a(_050_),
    .b(_056_),
    .c(_057_),
    .y(_058_)
  );
  al_nand3 _130_ (
    .a(_055_),
    .b(_054_),
    .c(_058_),
    .y(\DFF_2.D )
  );
  al_or3fft _131_ (
    .a(v0),
    .b(_039_),
    .c(_050_),
    .y(_059_)
  );
  al_nand3fft _132_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(_025_),
    .y(_060_)
  );
  al_nand3 _133_ (
    .a(_019_),
    .b(_060_),
    .c(_059_),
    .y(_061_)
  );
  al_ao21ftf _134_ (
    .a(v5),
    .b(_008_),
    .c(\DFF_2.Q ),
    .y(_062_)
  );
  al_oai21 _135_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(_019_),
    .y(_063_)
  );
  al_nand3ftt _136_ (
    .a(v0),
    .b(_063_),
    .c(_062_),
    .y(_064_)
  );
  al_ao21ttf _137_ (
    .a(v1),
    .b(_061_),
    .c(_064_),
    .y(\DFF_3.D )
  );
  al_inv _138_ (
    .a(\DFF_2.Q ),
    .y(_065_)
  );
  al_oa21ttf _139_ (
    .a(\DFF_3.Q ),
    .b(_059_),
    .c(_065_),
    .y(_066_)
  );
  al_or2 _140_ (
    .a(\DFF_0.Q ),
    .b(\DFF_3.Q ),
    .y(_067_)
  );
  al_ao21 _141_ (
    .a(_050_),
    .b(_067_),
    .c(v0),
    .y(_000_)
  );
  al_inv _142_ (
    .a(v1),
    .y(_001_)
  );
  al_and2 _143_ (
    .a(\DFF_0.Q ),
    .b(_014_),
    .y(_002_)
  );
  al_nand3 _144_ (
    .a(\DFF_1.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_5.Q ),
    .y(_003_)
  );
  al_aoi21ftf _145_ (
    .a(v4),
    .b(_016_),
    .c(_003_),
    .y(_004_)
  );
  al_ao21 _146_ (
    .a(_001_),
    .b(_004_),
    .c(_002_),
    .y(_005_)
  );
  al_ao21 _147_ (
    .a(_065_),
    .b(_005_),
    .c(\DFF_3.Q ),
    .y(_006_)
  );
  al_aoi21 _148_ (
    .a(_000_),
    .b(_006_),
    .c(_066_),
    .y(v13_D_11)
  );
  al_dffl _149_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _150_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _151_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _152_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _153_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  al_dffl _154_ (
    .clk(CK),
    .d(\DFF_5.D ),
    .q(\DFF_5.Q )
  );
  assign \DFF_0.CK  = CK;
  assign \DFF_1.CK  = CK;
  assign \DFF_2.CK  = CK;
  assign \DFF_3.CK  = CK;
  assign \DFF_4.CK  = CK;
  assign \DFF_5.CK  = CK;
  assign Lv13_D_0 = \DFF_5.D ;
  assign Lv13_D_1 = \DFF_4.D ;
  assign Lv13_D_10 = v13_D_10;
  assign Lv13_D_11 = v13_D_11;
  assign Lv13_D_12 = v13_D_12;
  assign Lv13_D_2 = \DFF_3.D ;
  assign Lv13_D_3 = \DFF_2.D ;
  assign Lv13_D_4 = \DFF_1.D ;
  assign Lv13_D_5 = \DFF_0.D ;
  assign Lv13_D_6 = v13_D_6;
  assign Lv13_D_7 = v13_D_7;
  assign Lv13_D_8 = v13_D_8;
  assign Lv13_D_9 = v13_D_9;
  assign v10 = \DFF_2.Q ;
  assign v11 = \DFF_1.Q ;
  assign v12 = \DFF_0.Q ;
  assign v13_D_0 = \DFF_5.D ;
  assign v13_D_1 = \DFF_4.D ;
  assign v13_D_2 = \DFF_3.D ;
  assign v13_D_3 = \DFF_2.D ;
  assign v13_D_4 = \DFF_1.D ;
  assign v13_D_5 = \DFF_0.D ;
  assign v7 = \DFF_5.Q ;
  assign v8 = \DFF_4.Q ;
  assign v9 = \DFF_3.Q ;
endmodule
