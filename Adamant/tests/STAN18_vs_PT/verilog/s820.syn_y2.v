
module s820(GND, VDD, CK, G0, G1, G10, G11, G12, G13, G14, G15, G16, G18, G2, G288, G290, G292, G296, G298, G3, G300, G302, G310, G312, G315, G322, G325, G327, G4, G43, G45, G47, G49, G5, G53, G55, G6, G7, G8, G9);
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
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
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
  input G0;
  input G1;
  input G10;
  wire G102;
  input G11;
  input G12;
  input G13;
  input G14;
  input G15;
  input G16;
  input G18;
  input G2;
  wire G228;
  wire G229;
  wire G247;
  output G288;
  output G290;
  output G292;
  output G296;
  output G298;
  input G3;
  output G300;
  output G302;
  output G310;
  output G312;
  output G315;
  output G322;
  output G325;
  output G327;
  wire G38;
  wire G39;
  input G4;
  wire G40;
  wire G41;
  wire G42;
  output G43;
  output G45;
  output G47;
  output G49;
  input G5;
  output G53;
  output G55;
  input G6;
  input G7;
  input G8;
  input G9;
  wire G90;
  wire G93;
  wire G96;
  wire G99;
  input GND;
  wire II133;
  input VDD;
  al_aoi21 _141_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .c(G16),
    .y(_103_)
  );
  al_nand3ftt _142_ (
    .a(\DFF_2.Q ),
    .b(\DFF_1.Q ),
    .c(_103_),
    .y(_104_)
  );
  al_nand2ft _143_ (
    .a(G4),
    .b(G16),
    .y(_105_)
  );
  al_nand3ftt _144_ (
    .a(\DFF_0.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_3.Q ),
    .y(_106_)
  );
  al_nand3 _145_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_3.Q ),
    .y(_107_)
  );
  al_aoi21 _146_ (
    .a(_106_),
    .b(_107_),
    .c(\DFF_1.Q ),
    .y(_108_)
  );
  al_and3fft _147_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_0.Q ),
    .y(_109_)
  );
  al_nand2 _148_ (
    .a(G4),
    .b(\DFF_1.Q ),
    .y(_110_)
  );
  al_oai21ftf _149_ (
    .a(\DFF_2.Q ),
    .b(_109_),
    .c(_110_),
    .y(_111_)
  );
  al_aoi21ttf _150_ (
    .a(_105_),
    .b(_108_),
    .c(_111_),
    .y(_112_)
  );
  al_or2 _151_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_113_)
  );
  al_oai21ftt _152_ (
    .a(G16),
    .b(G4),
    .c(\DFF_2.Q ),
    .y(_114_)
  );
  al_and2ft _153_ (
    .a(\DFF_2.Q ),
    .b(G16),
    .y(_115_)
  );
  al_nor2 _154_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_116_)
  );
  al_nand3ftt _155_ (
    .a(G1),
    .b(_115_),
    .c(_116_),
    .y(_117_)
  );
  al_ao21 _156_ (
    .a(_114_),
    .b(_117_),
    .c(_113_),
    .y(_118_)
  );
  al_nand3 _157_ (
    .a(_104_),
    .b(_118_),
    .c(_112_),
    .y(G302)
  );
  al_nor2 _158_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .y(_119_)
  );
  al_nand2 _159_ (
    .a(\DFF_1.Q ),
    .b(G15),
    .y(_120_)
  );
  al_and3fft _160_ (
    .a(\DFF_4.Q ),
    .b(_120_),
    .c(_119_),
    .y(G290)
  );
  al_nor3fft _161_ (
    .a(\DFF_4.Q ),
    .b(_119_),
    .c(_120_),
    .y(G327)
  );
  al_nand3ftt _162_ (
    .a(\DFF_0.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_1.Q ),
    .y(_121_)
  );
  al_and3fft _163_ (
    .a(G5),
    .b(_121_),
    .c(_116_),
    .y(G47)
  );
  al_or2 _164_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_122_)
  );
  al_nor3ftt _165_ (
    .a(G5),
    .b(_121_),
    .c(_122_),
    .y(G55)
  );
  al_inv _166_ (
    .a(\DFF_3.Q ),
    .y(_123_)
  );
  al_and3fft _167_ (
    .a(\DFF_4.Q ),
    .b(_121_),
    .c(_123_),
    .y(G288)
  );
  al_and3fft _168_ (
    .a(\DFF_4.Q ),
    .b(_121_),
    .c(\DFF_3.Q ),
    .y(G296)
  );
  al_nand2 _169_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .y(_124_)
  );
  al_nor3ftt _170_ (
    .a(G16),
    .b(_121_),
    .c(_124_),
    .y(G312)
  );
  al_and3fft _171_ (
    .a(\DFF_3.Q ),
    .b(_121_),
    .c(\DFF_4.Q ),
    .y(G310)
  );
  al_or3 _172_ (
    .a(\DFF_2.Q ),
    .b(\DFF_1.Q ),
    .c(\DFF_0.Q ),
    .y(_125_)
  );
  al_nand3fft _173_ (
    .a(G1),
    .b(G16),
    .c(G3),
    .y(_126_)
  );
  al_and3fft _174_ (
    .a(_126_),
    .b(_125_),
    .c(_116_),
    .y(G300)
  );
  al_and3fft _175_ (
    .a(\DFF_4.Q ),
    .b(_125_),
    .c(\DFF_3.Q ),
    .y(G53)
  );
  al_and2 _176_ (
    .a(G15),
    .b(G53),
    .y(G43)
  );
  al_nand2ft _177_ (
    .a(\DFF_0.Q ),
    .b(\DFF_3.Q ),
    .y(_127_)
  );
  al_or3 _178_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_1.Q ),
    .y(_128_)
  );
  al_and2 _179_ (
    .a(G15),
    .b(G14),
    .y(_129_)
  );
  al_and3fft _180_ (
    .a(_127_),
    .b(_128_),
    .c(_129_),
    .y(G298)
  );
  al_nand3 _181_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .c(\DFF_1.Q ),
    .y(_130_)
  );
  al_and3fft _182_ (
    .a(\DFF_3.Q ),
    .b(\DFF_0.Q ),
    .c(G1),
    .y(_131_)
  );
  al_aoi21ttf _183_ (
    .a(_128_),
    .b(_130_),
    .c(_131_),
    .y(G322)
  );
  al_inv _184_ (
    .a(G4),
    .y(_132_)
  );
  al_and3ftt _185_ (
    .a(\DFF_4.Q ),
    .b(\DFF_2.Q ),
    .c(\DFF_3.Q ),
    .y(_133_)
  );
  al_ao21 _186_ (
    .a(G10),
    .b(G12),
    .c(G11),
    .y(_134_)
  );
  al_nor3fft _187_ (
    .a(G16),
    .b(G15),
    .c(_113_),
    .y(_135_)
  );
  al_nand3 _188_ (
    .a(_133_),
    .b(_134_),
    .c(_135_),
    .y(_136_)
  );
  al_nor2 _189_ (
    .a(G10),
    .b(G12),
    .y(_137_)
  );
  al_and3fft _190_ (
    .a(_137_),
    .b(_136_),
    .c(_132_),
    .y(G45)
  );
  al_and2 _191_ (
    .a(G6),
    .b(G9),
    .y(_138_)
  );
  al_nand3 _192_ (
    .a(G7),
    .b(G8),
    .c(_138_),
    .y(_139_)
  );
  al_or3fft _193_ (
    .a(G15),
    .b(\DFF_0.Q ),
    .c(_139_),
    .y(_140_)
  );
  al_and3fft _194_ (
    .a(G4),
    .b(\DFF_2.Q ),
    .c(\DFF_1.Q ),
    .y(_000_)
  );
  al_nand3 _195_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .c(_000_),
    .y(_001_)
  );
  al_aoi21 _196_ (
    .a(G16),
    .b(_140_),
    .c(_001_),
    .y(G292)
  );
  al_or3 _197_ (
    .a(\DFF_4.Q ),
    .b(\DFF_3.Q ),
    .c(_125_),
    .y(_002_)
  );
  al_oai21 _198_ (
    .a(_127_),
    .b(_130_),
    .c(_002_),
    .y(G315)
  );
  al_nand2ft _199_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_003_)
  );
  al_nand2 _200_ (
    .a(\DFF_2.Q ),
    .b(\DFF_1.Q ),
    .y(_004_)
  );
  al_nor2 _201_ (
    .a(\DFF_2.Q ),
    .b(\DFF_1.Q ),
    .y(_005_)
  );
  al_oai21ftf _202_ (
    .a(_004_),
    .b(_005_),
    .c(_109_),
    .y(_006_)
  );
  al_ao21 _203_ (
    .a(_003_),
    .b(_006_),
    .c(_108_),
    .y(G49)
  );
  al_and3 _204_ (
    .a(G16),
    .b(\DFF_0.Q ),
    .c(_130_),
    .y(_007_)
  );
  al_ao21 _205_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .c(\DFF_1.Q ),
    .y(_008_)
  );
  al_nand3ftt _206_ (
    .a(_133_),
    .b(_008_),
    .c(_007_),
    .y(_009_)
  );
  al_ao21 _207_ (
    .a(_009_),
    .b(_136_),
    .c(G4),
    .y(_010_)
  );
  al_nand2ft _208_ (
    .a(\DFF_4.Q ),
    .b(\DFF_0.Q ),
    .y(_011_)
  );
  al_and2ft _209_ (
    .a(G0),
    .b(\DFF_0.Q ),
    .y(_012_)
  );
  al_or3 _210_ (
    .a(G1),
    .b(G16),
    .c(\DFF_0.Q ),
    .y(_013_)
  );
  al_ao21 _211_ (
    .a(_011_),
    .b(_013_),
    .c(_012_),
    .y(_014_)
  );
  al_ao21ttf _212_ (
    .a(G16),
    .b(\DFF_0.Q ),
    .c(\DFF_4.Q ),
    .y(_015_)
  );
  al_nand3ftt _213_ (
    .a(\DFF_1.Q ),
    .b(_015_),
    .c(_119_),
    .y(_016_)
  );
  al_and2ft _214_ (
    .a(\DFF_3.Q ),
    .b(\DFF_0.Q ),
    .y(_017_)
  );
  al_ao21ftt _215_ (
    .a(\DFF_3.Q ),
    .b(G1),
    .c(_012_),
    .y(_018_)
  );
  al_nand3fft _216_ (
    .a(_017_),
    .b(_130_),
    .c(_018_),
    .y(_019_)
  );
  al_aoi21ftf _217_ (
    .a(_016_),
    .b(_014_),
    .c(_019_),
    .y(_020_)
  );
  al_aoi21 _218_ (
    .a(_020_),
    .b(_010_),
    .c(G18),
    .y(\DFF_0.D )
  );
  al_oa21 _219_ (
    .a(G1),
    .b(G3),
    .c(\DFF_4.Q ),
    .y(_021_)
  );
  al_aoi21 _220_ (
    .a(G5),
    .b(_116_),
    .c(_021_),
    .y(_022_)
  );
  al_and3ftt _221_ (
    .a(_121_),
    .b(_124_),
    .c(_022_),
    .y(_023_)
  );
  al_and3fft _222_ (
    .a(G4),
    .b(\DFF_3.Q ),
    .c(\DFF_0.Q ),
    .y(_024_)
  );
  al_aoi21 _223_ (
    .a(\DFF_4.Q ),
    .b(_012_),
    .c(_024_),
    .y(_025_)
  );
  al_nand2ft _224_ (
    .a(\DFF_3.Q ),
    .b(\DFF_4.Q ),
    .y(_026_)
  );
  al_and3 _225_ (
    .a(\DFF_2.Q ),
    .b(\DFF_1.Q ),
    .c(_026_),
    .y(_027_)
  );
  al_aoi21ftt _226_ (
    .a(_025_),
    .b(_027_),
    .c(_023_),
    .y(_028_)
  );
  al_or2 _227_ (
    .a(G4),
    .b(\DFF_1.Q ),
    .y(_029_)
  );
  al_or3fft _228_ (
    .a(G16),
    .b(_011_),
    .c(_029_),
    .y(_030_)
  );
  al_and3fft _229_ (
    .a(G12),
    .b(\DFF_4.Q ),
    .c(G10),
    .y(_031_)
  );
  al_and2ft _230_ (
    .a(G11),
    .b(_031_),
    .y(_032_)
  );
  al_nand3 _231_ (
    .a(\DFF_2.Q ),
    .b(G15),
    .c(\DFF_3.Q ),
    .y(_033_)
  );
  al_and2ft _232_ (
    .a(\DFF_4.Q ),
    .b(G11),
    .y(_034_)
  );
  al_aoi21 _233_ (
    .a(_034_),
    .b(_137_),
    .c(_033_),
    .y(_035_)
  );
  al_nand3fft _234_ (
    .a(_032_),
    .b(_030_),
    .c(_035_),
    .y(_036_)
  );
  al_inv _235_ (
    .a(G16),
    .y(_037_)
  );
  al_and3fft _236_ (
    .a(G1),
    .b(G3),
    .c(G2),
    .y(_038_)
  );
  al_or3fft _237_ (
    .a(_037_),
    .b(_038_),
    .c(_002_),
    .y(_039_)
  );
  al_ao21ftf _238_ (
    .a(G16),
    .b(_124_),
    .c(_000_),
    .y(_040_)
  );
  al_and3 _239_ (
    .a(_040_),
    .b(_039_),
    .c(_036_),
    .y(_041_)
  );
  al_aoi21 _240_ (
    .a(_028_),
    .b(_041_),
    .c(G18),
    .y(\DFF_1.D )
  );
  al_oa21ftf _241_ (
    .a(G15),
    .b(_106_),
    .c(\DFF_2.Q ),
    .y(_042_)
  );
  al_nand2ft _242_ (
    .a(\DFF_4.Q ),
    .b(G10),
    .y(_043_)
  );
  al_and3fft _243_ (
    .a(_033_),
    .b(_034_),
    .c(_043_),
    .y(_044_)
  );
  al_nor2 _244_ (
    .a(_017_),
    .b(_030_),
    .y(_045_)
  );
  al_nand3fft _245_ (
    .a(_042_),
    .b(_044_),
    .c(_045_),
    .y(_046_)
  );
  al_aoi21ftf _246_ (
    .a(G16),
    .b(_038_),
    .c(_123_),
    .y(_047_)
  );
  al_oai21ftt _247_ (
    .a(G15),
    .b(G14),
    .c(\DFF_3.Q ),
    .y(_048_)
  );
  al_nor2 _248_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .y(_049_)
  );
  al_nand3fft _249_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .c(_049_),
    .y(_050_)
  );
  al_or3ftt _250_ (
    .a(_048_),
    .b(_050_),
    .c(_047_),
    .y(_051_)
  );
  al_and3 _251_ (
    .a(_051_),
    .b(_046_),
    .c(_028_),
    .y(_052_)
  );
  al_aoi21ftt _252_ (
    .a(G292),
    .b(_052_),
    .c(G18),
    .y(\DFF_2.D )
  );
  al_or2 _253_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .y(_053_)
  );
  al_oa21 _254_ (
    .a(\DFF_2.Q ),
    .b(\DFF_3.Q ),
    .c(G4),
    .y(_054_)
  );
  al_or3fft _255_ (
    .a(\DFF_2.Q ),
    .b(G15),
    .c(_026_),
    .y(_055_)
  );
  al_ao21 _256_ (
    .a(G16),
    .b(_055_),
    .c(_054_),
    .y(_056_)
  );
  al_ao21 _257_ (
    .a(_048_),
    .b(_049_),
    .c(\DFF_1.Q ),
    .y(_057_)
  );
  al_ao21 _258_ (
    .a(_053_),
    .b(_056_),
    .c(_057_),
    .y(_058_)
  );
  al_oai21ftf _259_ (
    .a(\DFF_3.Q ),
    .b(G4),
    .c(\DFF_1.Q ),
    .y(_059_)
  );
  al_ao21ttf _260_ (
    .a(G16),
    .b(\DFF_4.Q ),
    .c(\DFF_2.Q ),
    .y(_060_)
  );
  al_oai21ftf _261_ (
    .a(G5),
    .b(\DFF_4.Q ),
    .c(\DFF_3.Q ),
    .y(_061_)
  );
  al_and3ftt _262_ (
    .a(_060_),
    .b(_059_),
    .c(_061_),
    .y(_062_)
  );
  al_ao21ftf _263_ (
    .a(G16),
    .b(_005_),
    .c(_130_),
    .y(_063_)
  );
  al_and2ft _264_ (
    .a(\DFF_3.Q ),
    .b(_038_),
    .y(_064_)
  );
  al_aoi21 _265_ (
    .a(_064_),
    .b(_063_),
    .c(_062_),
    .y(_065_)
  );
  al_ao21 _266_ (
    .a(_065_),
    .b(_058_),
    .c(\DFF_0.Q ),
    .y(_066_)
  );
  al_nand3 _267_ (
    .a(G13),
    .b(G16),
    .c(G15),
    .y(_067_)
  );
  al_nand3fft _268_ (
    .a(G4),
    .b(\DFF_1.Q ),
    .c(_067_),
    .y(_068_)
  );
  al_nand3ftt _269_ (
    .a(G0),
    .b(\DFF_1.Q ),
    .c(\DFF_0.Q ),
    .y(_069_)
  );
  al_ao21 _270_ (
    .a(_069_),
    .b(_068_),
    .c(_107_),
    .y(_070_)
  );
  al_ao21 _271_ (
    .a(G15),
    .b(_122_),
    .c(_037_),
    .y(_071_)
  );
  al_nand3 _272_ (
    .a(_124_),
    .b(_000_),
    .c(_071_),
    .y(_072_)
  );
  al_oai21ttf _273_ (
    .a(G15),
    .b(\DFF_0.Q ),
    .c(\DFF_1.Q ),
    .y(_073_)
  );
  al_and3ftt _274_ (
    .a(G4),
    .b(\DFF_3.Q ),
    .c(_115_),
    .y(_074_)
  );
  al_nand3 _275_ (
    .a(_073_),
    .b(_074_),
    .c(_140_),
    .y(_075_)
  );
  al_and3 _276_ (
    .a(_070_),
    .b(_072_),
    .c(_075_),
    .y(_076_)
  );
  al_aoi21 _277_ (
    .a(_076_),
    .b(_066_),
    .c(G18),
    .y(\DFF_3.D )
  );
  al_nand3 _278_ (
    .a(G13),
    .b(\DFF_4.Q ),
    .c(G15),
    .y(_077_)
  );
  al_oai21ftf _279_ (
    .a(G15),
    .b(\DFF_0.Q ),
    .c(\DFF_4.Q ),
    .y(_078_)
  );
  al_ao21 _280_ (
    .a(_078_),
    .b(_077_),
    .c(\DFF_1.Q ),
    .y(_079_)
  );
  al_and2 _281_ (
    .a(\DFF_1.Q ),
    .b(\DFF_0.Q ),
    .y(_080_)
  );
  al_ao21ftf _282_ (
    .a(\DFF_2.Q ),
    .b(_139_),
    .c(_080_),
    .y(_081_)
  );
  al_ao21 _283_ (
    .a(\DFF_1.Q ),
    .b(G15),
    .c(\DFF_2.Q ),
    .y(_082_)
  );
  al_and2 _284_ (
    .a(\DFF_3.Q ),
    .b(_082_),
    .y(_083_)
  );
  al_nand3 _285_ (
    .a(_079_),
    .b(_083_),
    .c(_081_),
    .y(_084_)
  );
  al_inv _286_ (
    .a(_113_),
    .y(_085_)
  );
  al_and2ft _287_ (
    .a(\DFF_4.Q ),
    .b(G6),
    .y(_086_)
  );
  al_and3 _288_ (
    .a(\DFF_2.Q ),
    .b(G15),
    .c(_086_),
    .y(_087_)
  );
  al_and3fft _289_ (
    .a(G7),
    .b(G8),
    .c(G9),
    .y(_088_)
  );
  al_or3 _290_ (
    .a(G1),
    .b(\DFF_2.Q ),
    .c(\DFF_3.Q ),
    .y(_089_)
  );
  al_ao21ftf _291_ (
    .a(G15),
    .b(\DFF_4.Q ),
    .c(_089_),
    .y(_090_)
  );
  al_ao21 _292_ (
    .a(_088_),
    .b(_087_),
    .c(_090_),
    .y(_091_)
  );
  al_oai21 _293_ (
    .a(\DFF_2.Q ),
    .b(\DFF_4.Q ),
    .c(_082_),
    .y(_092_)
  );
  al_oa21 _294_ (
    .a(\DFF_4.Q ),
    .b(G15),
    .c(\DFF_1.Q ),
    .y(_093_)
  );
  al_aoi21ftf _295_ (
    .a(_093_),
    .b(_026_),
    .c(_092_),
    .y(_094_)
  );
  al_aoi21 _296_ (
    .a(_085_),
    .b(_091_),
    .c(_094_),
    .y(_095_)
  );
  al_ao21 _297_ (
    .a(_084_),
    .b(_095_),
    .c(_037_),
    .y(_096_)
  );
  al_ao21ttf _298_ (
    .a(G2),
    .b(\DFF_4.Q ),
    .c(_023_),
    .y(_097_)
  );
  al_aoi21ttf _299_ (
    .a(G0),
    .b(\DFF_1.Q ),
    .c(\DFF_0.Q ),
    .y(_098_)
  );
  al_nand3ftt _300_ (
    .a(_107_),
    .b(_029_),
    .c(_098_),
    .y(_099_)
  );
  al_nand3fft _301_ (
    .a(_113_),
    .b(_049_),
    .c(_054_),
    .y(_100_)
  );
  al_nor3fft _302_ (
    .a(_111_),
    .b(_100_),
    .c(G298),
    .y(_101_)
  );
  al_and3 _303_ (
    .a(_099_),
    .b(_101_),
    .c(_097_),
    .y(_102_)
  );
  al_aoi21 _304_ (
    .a(_102_),
    .b(_096_),
    .c(G18),
    .y(\DFF_4.D )
  );
  al_dffl _305_ (
    .clk(CK),
    .d(\DFF_0.D ),
    .q(\DFF_0.Q )
  );
  al_dffl _306_ (
    .clk(CK),
    .d(\DFF_1.D ),
    .q(\DFF_1.Q )
  );
  al_dffl _307_ (
    .clk(CK),
    .d(\DFF_2.D ),
    .q(\DFF_2.Q )
  );
  al_dffl _308_ (
    .clk(CK),
    .d(\DFF_3.D ),
    .q(\DFF_3.Q )
  );
  al_dffl _309_ (
    .clk(CK),
    .d(\DFF_4.D ),
    .q(\DFF_4.Q )
  );
  assign \DFF_0.CK  = CK;
  assign \DFF_1.CK  = CK;
  assign \DFF_2.CK  = CK;
  assign \DFF_3.CK  = CK;
  assign \DFF_4.CK  = CK;
  assign G102 = \DFF_4.D ;
  assign G228 = \DFF_0.Q ;
  assign G229 = G15;
  assign G247 = \DFF_0.Q ;
  assign G325 = G310;
  assign G38 = \DFF_0.Q ;
  assign G39 = \DFF_1.Q ;
  assign G40 = \DFF_2.Q ;
  assign G41 = \DFF_3.Q ;
  assign G42 = \DFF_4.Q ;
  assign G90 = \DFF_0.D ;
  assign G93 = \DFF_1.D ;
  assign G96 = \DFF_2.D ;
  assign G99 = \DFF_3.D ;
  assign II133 = \DFF_3.Q ;
endmodule
