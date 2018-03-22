
module s510(GND, VDD, CK, cblank, cclr, cnt10, cnt13, cnt21, cnt261, cnt272, cnt283, cnt284, cnt44, cnt45, cnt509, cnt511, cnt567, cnt591, csm, csync, john, pc, pclr, pcnt12, pcnt17, pcnt241, pcnt27, pcnt6, vsync);
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
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
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
  wire II2;
  wire II3;
  wire II4;
  wire II5;
  wire II6;
  wire II7;
  input VDD;
  output cblank;
  output cclr;
  input cnt10;
  input cnt13;
  input cnt21;
  input cnt261;
  input cnt272;
  input cnt283;
  input cnt284;
  input cnt44;
  input cnt45;
  input cnt509;
  input cnt511;
  input cnt567;
  input cnt591;
  output csm;
  output csync;
  input john;
  output pc;
  output pclr;
  input pcnt12;
  input pcnt17;
  input pcnt241;
  input pcnt27;
  input pcnt6;
  wire st_0;
  wire st_1;
  wire st_2;
  wire st_3;
  wire st_4;
  wire st_5;
  output vsync;
  al_and3ftt _130_ (
    .a(\DFF_2.Q ),
    .b(\DFF_5.Q ),
    .c(\DFF_1.Q ),
    .y(_076_)
  );
  al_and3fft _131_ (
    .a(\DFF_3.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_5.Q ),
    .y(_077_)
  );
  al_and2 _132_ (
    .a(\DFF_4.Q ),
    .b(\DFF_2.Q ),
    .y(_078_)
  );
  al_nand3ftt _133_ (
    .a(\DFF_0.Q ),
    .b(_077_),
    .c(_078_),
    .y(_079_)
  );
  al_nand2 _134_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_080_)
  );
  al_ao21ftf _135_ (
    .a(_080_),
    .b(_076_),
    .c(_079_),
    .y(pclr)
  );
  al_nand2ft _136_ (
    .a(\DFF_3.Q ),
    .b(\DFF_5.Q ),
    .y(_081_)
  );
  al_ao21 _137_ (
    .a(\DFF_4.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_0.Q ),
    .y(_082_)
  );
  al_or3 _138_ (
    .a(\DFF_1.Q ),
    .b(_081_),
    .c(_082_),
    .y(_083_)
  );
  al_or2 _139_ (
    .a(\DFF_2.Q ),
    .b(\DFF_0.Q ),
    .y(_084_)
  );
  al_nor2 _140_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_085_)
  );
  al_nand3fft _141_ (
    .a(\DFF_1.Q ),
    .b(_084_),
    .c(_085_),
    .y(_086_)
  );
  al_inv _142_ (
    .a(\DFF_2.Q ),
    .y(_087_)
  );
  al_nand2 _143_ (
    .a(\DFF_5.Q ),
    .b(\DFF_1.Q ),
    .y(_088_)
  );
  al_or3 _144_ (
    .a(_087_),
    .b(_088_),
    .c(_080_),
    .y(_089_)
  );
  al_nand3 _145_ (
    .a(_083_),
    .b(_086_),
    .c(_089_),
    .y(pc)
  );
  al_and2ft _146_ (
    .a(\DFF_0.Q ),
    .b(\DFF_5.Q ),
    .y(_090_)
  );
  al_oai21ftt _147_ (
    .a(\DFF_3.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_5.Q ),
    .y(_091_)
  );
  al_aoi21ftf _148_ (
    .a(\DFF_4.Q ),
    .b(_090_),
    .c(_091_),
    .y(_092_)
  );
  al_nand3 _149_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(_084_),
    .y(_093_)
  );
  al_nor2 _150_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .y(_094_)
  );
  al_nand3ftt _151_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_0.Q ),
    .y(_095_)
  );
  al_aoi21ftf _152_ (
    .a(_095_),
    .b(_094_),
    .c(_093_),
    .y(_096_)
  );
  al_nand3 _153_ (
    .a(_086_),
    .b(_092_),
    .c(_096_),
    .y(cclr)
  );
  al_inv _154_ (
    .a(\DFF_4.Q ),
    .y(_097_)
  );
  al_and3 _155_ (
    .a(\DFF_3.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_0.Q ),
    .y(_098_)
  );
  al_nand3 _156_ (
    .a(\DFF_2.Q ),
    .b(_090_),
    .c(_085_),
    .y(_099_)
  );
  al_ao21ftf _157_ (
    .a(_097_),
    .b(_098_),
    .c(_099_),
    .y(_100_)
  );
  al_inv _158_ (
    .a(\DFF_1.Q ),
    .y(_101_)
  );
  al_nand3fft _159_ (
    .a(\DFF_2.Q ),
    .b(\DFF_0.Q ),
    .c(_085_),
    .y(_102_)
  );
  al_aoi21 _160_ (
    .a(_101_),
    .b(_102_),
    .c(\DFF_5.Q ),
    .y(_103_)
  );
  al_or2 _161_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_104_)
  );
  al_nand3ftt _162_ (
    .a(\DFF_1.Q ),
    .b(_104_),
    .c(_080_),
    .y(_105_)
  );
  al_or2ft _163_ (
    .a(_090_),
    .b(_105_),
    .y(_106_)
  );
  al_nand3fft _164_ (
    .a(_100_),
    .b(_103_),
    .c(_106_),
    .y(\DFF_1.D )
  );
  al_oai21ttf _165_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(\DFF_3.Q ),
    .y(_107_)
  );
  al_or3 _166_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_3.Q ),
    .y(_108_)
  );
  al_and3ftt _167_ (
    .a(\DFF_1.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_3.Q ),
    .y(_109_)
  );
  al_ao21 _168_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_2.Q ),
    .y(_110_)
  );
  al_or3ftt _169_ (
    .a(\DFF_3.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_0.Q ),
    .y(_111_)
  );
  al_and3fft _170_ (
    .a(_110_),
    .b(_109_),
    .c(_111_),
    .y(_112_)
  );
  al_nand3 _171_ (
    .a(_107_),
    .b(_108_),
    .c(_112_),
    .y(vsync)
  );
  al_oai21 _172_ (
    .a(\DFF_2.Q ),
    .b(\DFF_0.Q ),
    .c(\DFF_4.Q ),
    .y(_113_)
  );
  al_or2 _173_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_114_)
  );
  al_nand3ftt _174_ (
    .a(\DFF_3.Q ),
    .b(\DFF_5.Q ),
    .c(_114_),
    .y(_115_)
  );
  al_nand3ftt _175_ (
    .a(\DFF_1.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_2.Q ),
    .y(_116_)
  );
  al_oa21ttf _176_ (
    .a(\DFF_5.Q ),
    .b(_116_),
    .c(_098_),
    .y(_117_)
  );
  al_oai21 _177_ (
    .a(_113_),
    .b(_115_),
    .c(_117_),
    .y(cblank)
  );
  al_or2 _178_ (
    .a(\DFF_5.Q ),
    .b(\DFF_0.Q ),
    .y(_118_)
  );
  al_aoi21 _179_ (
    .a(_118_),
    .b(_107_),
    .c(_087_),
    .y(_119_)
  );
  al_nand3fft _180_ (
    .a(\DFF_4.Q ),
    .b(_076_),
    .c(_116_),
    .y(_120_)
  );
  al_nand2 _181_ (
    .a(\DFF_5.Q ),
    .b(\DFF_0.Q ),
    .y(_121_)
  );
  al_or3fft _182_ (
    .a(\DFF_4.Q ),
    .b(_121_),
    .c(_077_),
    .y(_122_)
  );
  al_ao21 _183_ (
    .a(_122_),
    .b(_120_),
    .c(_119_),
    .y(\DFF_2.D )
  );
  al_and3fft _184_ (
    .a(\DFF_2.Q ),
    .b(\DFF_0.Q ),
    .c(\DFF_5.Q ),
    .y(_123_)
  );
  al_ao21ftf _185_ (
    .a(pcnt17),
    .b(cnt284),
    .c(_123_),
    .y(_124_)
  );
  al_and2ft _186_ (
    .a(\DFF_1.Q ),
    .b(\DFF_2.Q ),
    .y(_125_)
  );
  al_oa21ttf _187_ (
    .a(_081_),
    .b(_125_),
    .c(_076_),
    .y(_126_)
  );
  al_ao21 _188_ (
    .a(_124_),
    .b(_126_),
    .c(_097_),
    .y(_127_)
  );
  al_and2ft _189_ (
    .a(\DFF_5.Q ),
    .b(\DFF_3.Q ),
    .y(_128_)
  );
  al_or3 _190_ (
    .a(\DFF_4.Q ),
    .b(\DFF_0.Q ),
    .c(cnt284),
    .y(_129_)
  );
  al_ao21ftf _191_ (
    .a(\DFF_1.Q ),
    .b(_129_),
    .c(_128_),
    .y(_000_)
  );
  al_and3ftt _192_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_3.Q ),
    .y(_001_)
  );
  al_ao21ftf _193_ (
    .a(\DFF_0.Q ),
    .b(cnt13),
    .c(_001_),
    .y(_002_)
  );
  al_and3 _194_ (
    .a(_116_),
    .b(_002_),
    .c(_000_),
    .y(_003_)
  );
  al_nand3ftt _195_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_2.Q ),
    .y(_004_)
  );
  al_nand3fft _196_ (
    .a(\DFF_1.Q ),
    .b(_104_),
    .c(_090_),
    .y(_005_)
  );
  al_nand3ftt _197_ (
    .a(_121_),
    .b(_080_),
    .c(_104_),
    .y(_006_)
  );
  al_and3 _198_ (
    .a(_004_),
    .b(_005_),
    .c(_006_),
    .y(_007_)
  );
  al_nand3 _199_ (
    .a(_003_),
    .b(_007_),
    .c(_127_),
    .y(\DFF_3.D )
  );
  al_ao21 _200_ (
    .a(_113_),
    .b(_105_),
    .c(\DFF_5.Q ),
    .y(_008_)
  );
  al_nand3fft _201_ (
    .a(\DFF_5.Q ),
    .b(\DFF_0.Q ),
    .c(_125_),
    .y(_009_)
  );
  al_and3 _202_ (
    .a(_116_),
    .b(_115_),
    .c(_009_),
    .y(_010_)
  );
  al_nand3ftt _203_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .c(\DFF_1.Q ),
    .y(_011_)
  );
  al_aoi21ttf _204_ (
    .a(_109_),
    .b(_090_),
    .c(_011_),
    .y(_012_)
  );
  al_nand3 _205_ (
    .a(_012_),
    .b(_010_),
    .c(_008_),
    .y(csync)
  );
  al_nand2 _206_ (
    .a(pcnt17),
    .b(cnt284),
    .y(_013_)
  );
  al_nand3ftt _207_ (
    .a(_080_),
    .b(_123_),
    .c(_013_),
    .y(_014_)
  );
  al_and3 _208_ (
    .a(\DFF_4.Q ),
    .b(\DFF_2.Q ),
    .c(_128_),
    .y(_015_)
  );
  al_nand2ft _209_ (
    .a(pcnt241),
    .b(cnt511),
    .y(_016_)
  );
  al_nor2 _210_ (
    .a(\DFF_5.Q ),
    .b(\DFF_3.Q ),
    .y(_017_)
  );
  al_and2ft _211_ (
    .a(pcnt27),
    .b(cnt567),
    .y(_018_)
  );
  al_nand3ftt _212_ (
    .a(_018_),
    .b(_078_),
    .c(_017_),
    .y(_019_)
  );
  al_aoi21ttf _213_ (
    .a(_016_),
    .b(_015_),
    .c(_019_),
    .y(_020_)
  );
  al_nand3ftt _214_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(_114_),
    .y(_021_)
  );
  al_aoi21ftf _215_ (
    .a(_116_),
    .b(\DFF_5.Q ),
    .c(_021_),
    .y(_022_)
  );
  al_nand3 _216_ (
    .a(_014_),
    .b(_022_),
    .c(_020_),
    .y(_023_)
  );
  al_and2ft _217_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .y(_024_)
  );
  al_nor3ftt _218_ (
    .a(\DFF_0.Q ),
    .b(_081_),
    .c(_078_),
    .y(_025_)
  );
  al_aoi21ftt _219_ (
    .a(_011_),
    .b(\DFF_2.Q ),
    .c(_025_),
    .y(_026_)
  );
  al_ao21ftf _220_ (
    .a(_088_),
    .b(_024_),
    .c(_026_),
    .y(_027_)
  );
  al_nand3fft _221_ (
    .a(\DFF_2.Q ),
    .b(cnt13),
    .c(_001_),
    .y(_028_)
  );
  al_or3 _222_ (
    .a(\DFF_5.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_2.Q ),
    .y(_029_)
  );
  al_and2ft _223_ (
    .a(pcnt12),
    .b(cnt44),
    .y(_030_)
  );
  al_or3 _224_ (
    .a(_029_),
    .b(_097_),
    .c(_030_),
    .y(_031_)
  );
  al_ao21 _225_ (
    .a(_095_),
    .b(_086_),
    .c(\DFF_5.Q ),
    .y(_032_)
  );
  al_and3 _226_ (
    .a(_028_),
    .b(_031_),
    .c(_032_),
    .y(_033_)
  );
  al_nand3fft _227_ (
    .a(_027_),
    .b(_023_),
    .c(_033_),
    .y(\DFF_4.D )
  );
  al_nand3ftt _228_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_0.Q ),
    .y(_034_)
  );
  al_nand2ft _229_ (
    .a(\DFF_4.Q ),
    .b(_077_),
    .y(_035_)
  );
  al_ao21 _230_ (
    .a(_034_),
    .b(_035_),
    .c(\DFF_2.Q ),
    .y(_036_)
  );
  al_oai21ttf _231_ (
    .a(\DFF_5.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_2.Q ),
    .y(_037_)
  );
  al_or3fft _232_ (
    .a(\DFF_0.Q ),
    .b(_037_),
    .c(_001_),
    .y(_038_)
  );
  al_nand3 _233_ (
    .a(\DFF_5.Q ),
    .b(\DFF_3.Q ),
    .c(_082_),
    .y(_039_)
  );
  al_nand3 _234_ (
    .a(_038_),
    .b(_039_),
    .c(_036_),
    .y(\DFF_0.D )
  );
  al_nor2 _235_ (
    .a(\DFF_5.Q ),
    .b(cnt21),
    .y(_040_)
  );
  al_ao21 _236_ (
    .a(_004_),
    .b(_029_),
    .c(_040_),
    .y(_041_)
  );
  al_nand3 _237_ (
    .a(cnt283),
    .b(_017_),
    .c(_078_),
    .y(_042_)
  );
  al_nand3 _238_ (
    .a(cnt45),
    .b(_024_),
    .c(_094_),
    .y(_043_)
  );
  al_nand2 _239_ (
    .a(\DFF_3.Q ),
    .b(\DFF_2.Q ),
    .y(_044_)
  );
  al_nand2ft _240_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .y(_045_)
  );
  al_nor3ftt _241_ (
    .a(cnt10),
    .b(_045_),
    .c(_044_),
    .y(_046_)
  );
  al_and3ftt _242_ (
    .a(_046_),
    .b(_042_),
    .c(_043_),
    .y(_047_)
  );
  al_aoi21 _243_ (
    .a(_041_),
    .b(_047_),
    .c(_101_),
    .y(_048_)
  );
  al_nor2 _244_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_049_)
  );
  al_and3fft _245_ (
    .a(\DFF_1.Q ),
    .b(_029_),
    .c(\DFF_4.Q ),
    .y(_050_)
  );
  al_or3ftt _246_ (
    .a(\DFF_0.Q ),
    .b(\DFF_3.Q ),
    .c(_045_),
    .y(_051_)
  );
  al_oa21ftt _247_ (
    .a(_051_),
    .b(_050_),
    .c(cnt44),
    .y(_052_)
  );
  al_nand2ft _248_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .y(_053_)
  );
  al_and2 _249_ (
    .a(cnt284),
    .b(pcnt6),
    .y(_054_)
  );
  al_and3ftt _250_ (
    .a(_053_),
    .b(_094_),
    .c(_054_),
    .y(_055_)
  );
  al_nor3ftt _251_ (
    .a(cnt511),
    .b(_045_),
    .c(_044_),
    .y(_056_)
  );
  al_nand3 _252_ (
    .a(cnt567),
    .b(_017_),
    .c(_078_),
    .y(_057_)
  );
  al_nand3fft _253_ (
    .a(_056_),
    .b(_055_),
    .c(_057_),
    .y(_058_)
  );
  al_ao21 _254_ (
    .a(_049_),
    .b(_058_),
    .c(_052_),
    .y(_059_)
  );
  al_nand2 _255_ (
    .a(\DFF_0.Q ),
    .b(cnt10),
    .y(_060_)
  );
  al_ao21ttf _256_ (
    .a(\DFF_1.Q ),
    .b(john),
    .c(_060_),
    .y(_061_)
  );
  al_nand3fft _257_ (
    .a(_053_),
    .b(_045_),
    .c(_061_),
    .y(_062_)
  );
  al_mux2l _258_ (
    .a(cnt272),
    .b(cnt591),
    .s(\DFF_3.Q ),
    .y(_063_)
  );
  al_or3 _259_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_0.Q ),
    .y(_064_)
  );
  al_nand3ftt _260_ (
    .a(_064_),
    .b(_125_),
    .c(_063_),
    .y(_065_)
  );
  al_and2ft _261_ (
    .a(\DFF_1.Q ),
    .b(_123_),
    .y(_066_)
  );
  al_ao21ftf _262_ (
    .a(_085_),
    .b(_080_),
    .c(_066_),
    .y(_067_)
  );
  al_nand2ft _263_ (
    .a(\DFF_4.Q ),
    .b(\DFF_5.Q ),
    .y(_068_)
  );
  al_or3 _264_ (
    .a(cnt261),
    .b(_095_),
    .c(_068_),
    .y(_069_)
  );
  al_and3 _265_ (
    .a(_065_),
    .b(_069_),
    .c(_067_),
    .y(_070_)
  );
  al_or3fft _266_ (
    .a(\DFF_0.Q ),
    .b(cnt509),
    .c(_004_),
    .y(_071_)
  );
  al_oa21 _267_ (
    .a(\DFF_2.Q ),
    .b(\DFF_0.Q ),
    .c(cnt45),
    .y(_072_)
  );
  al_nand3fft _268_ (
    .a(_104_),
    .b(_049_),
    .c(_072_),
    .y(_073_)
  );
  al_ao21 _269_ (
    .a(_071_),
    .b(_073_),
    .c(\DFF_5.Q ),
    .y(_074_)
  );
  al_and3 _270_ (
    .a(_062_),
    .b(_074_),
    .c(_070_),
    .y(_075_)
  );
  al_nand3fft _271_ (
    .a(_059_),
    .b(_048_),
    .c(_075_),
    .y(\DFF_5.D )
  );
  al_oa21 _272_ (
    .a(\DFF_5.Q ),
    .b(\DFF_4.Q ),
    .c(_098_),
    .y(csm)
  );
  al_dffl _273_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _274_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _275_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _276_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _277_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  al_dffl _278_ (
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
  assign II2 = \DFF_0.D ;
  assign II3 = \DFF_1.D ;
  assign II4 = \DFF_2.D ;
  assign II5 = \DFF_3.D ;
  assign II6 = \DFF_4.D ;
  assign II7 = \DFF_5.D ;
  assign st_0 = \DFF_5.Q ;
  assign st_1 = \DFF_4.Q ;
  assign st_2 = \DFF_3.Q ;
  assign st_3 = \DFF_2.Q ;
  assign st_4 = \DFF_1.Q ;
  assign st_5 = \DFF_0.Q ;
endmodule
