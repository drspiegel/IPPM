# number of test; test id
# fir_name ; fir_id
# bits
# coeffs
# number of coeffs ; # of coeffs

#http://icdm.ippm.ru/2016/transp-fir-filter-generator.php?bit=4&len=4&koeffs=&genkoeff=on&tb=0
#http://icdm.ippm.ru/2016/transp-fir-filter-generator.php?bit=16&len=4&koeffs=1+2+3+4&minimize=on&tb=2&etal=on
#http://icdm.ippm.ru/2016/transp-fir-filter-generator.php?bit=16&len=4&koeffs=1+2+3+4+5+6&minimize=on&tb=2&etal=on
#http://icdm.ippm.ru/2016/transp-fir-filter-generator.php?bit=@@bits@@&len=4&koeffs=@@coeffs@@&minimize=on&tb=2&etal=on

# http://icdm.ippm.ru/2016/transp-fir-filter-generator.php

%sheet = ();

$sheet{BULL91_32}{bits} = 8;
$sheet{BULL91_32}{coeffs}{seq} = [qw(-1 3 -6 9 -10 9 -5 -2 14 -30 49 -70 90 -107 120 -127 -127 120 -107 90 -70 49 -30 14 -2 -5 9 -10 9 -6 3 -1)];
$sheet{BULL91_32}{coeffs}{len} = 32;

$sheet{CHANG06_3}{bits} = 12;
$sheet{CHANG06_3}{coeffs}{seq} = [qw(1132 815 556)];
$sheet{CHANG06_3}{coeffs}{len} = 3;

$sheet{CHEN99_15}{bits} = 14;
$sheet{CHEN99_15}{coeffs}{seq} = [qw(-32 0 223 0 -897 0 4034 6656 4034 0 -897 0 223 0 -32)];
$sheet{CHEN99_15}{coeffs}{len} = 15;

$sheet{CHENYAO01_28B}{bits} = 12;
$sheet{CHENYAO01_28B}{coeffs}{seq} = [qw(-12 1 32 30 -39 -88 0 160 133 -176 -400 0 1023 1936 1936 1023 0 -400 -176 133 160 0 -88 -39 30 32 1 -12)];
$sheet{CHENYAO01_28B}{coeffs}{len} = 28;

$sheet{KWENTUS97_47}{bits} = 16;
$sheet{KWENTUS97_47}{coeffs}{seq} = [qw(-21 0 54 0 -116 0 220 0 -381 0 623 0 -977 0 1496 0 -2294 0 3652 0 -6624 0 20720 32718 20720 0 -6624 0 3652 0 -2294 0 1496 0 -977 0 623 0 -381 0 220 0 -116 0 54 0 -21)];
$sheet{KWENTUS97_47}{coeffs}{len} = 47;

$sheet{LIM83_121}{bits} = 15;
$sheet{LIM83_121}{coeffs}{seq} = [qw(6 -14 23 -28 24 -8 -18 45 -61 55 -24 -24 69 -89 68 -8 -68 125 -130 70 36 -142 193 -152 23 143 -267 277 -148 -78 302 -408 323 -59 -277 524 -541 282 165 -600 798 -616 84 585 -1071 1090 -546 -390 1312 -1739 1336 -109 -1522 2823 -3000 1515 1653 -5927 10267 -13494 14686 -13494 10267 -5927 1653 1515 -3000 2823 -1522 -109 1336 -1739 1312 -390 -546 1090 -1071 585 84 -616 798 -600 165 282 -541 524 -277 -59 323 -408 302 -78 -148 277 -267 143 23 -152 193 -142 36 70 -130 125 -68 -8 68 -89 69 -24 -24 55 -61 45 -18 -8 24 -28 23 -14 6)];
$sheet{LIM83_121}{coeffs}{len} = 121;

$sheet{DEMPSTER04_I5}{bits} = 13;
$sheet{DEMPSTER04_I5}{coeffs}{seq} = [qw(814 63 3059 1823 3817)];
$sheet{DEMPSTER04_I5}{coeffs}{len} = 5;

$sheet{GOODMAN77_E11}{bits} = 9;
$sheet{GOODMAN77_E11}{coeffs}{seq} = [qw(3 0 -25 0 150 256 150 0 -25 0 3)];
$sheet{GOODMAN77_E11}{coeffs}{len} = 11;

$sheet{JAIN91_11}{bits} = 10;
$sheet{JAIN91_11}{coeffs}{seq} = [qw(-1 2 -4 10 -34 384 -34 10 -4 2 -1)];
$sheet{JAIN91_11}{coeffs}{len} = 11;

$sheet{JOHANSSON08_30}{bits} = 11;
$sheet{JOHANSSON08_30}{coeffs}{seq} = [qw(975 283 424 994 716 752 441 133 844 253 370 372 409 915 324 532 330 424 990 963 647 296 57 522 894 268 223 961 375 734)];
$sheet{JOHANSSON08_30}{coeffs}{len} = 30;

$sheet{POTKONJAK96_4}{bits} = 11;
$sheet{POTKONJAK96_4}{coeffs}{seq} = [qw(815 621 831 105)];
$sheet{POTKONJAK96_4}{coeffs}{len} = 4;

$sheet{VINOD03_26B}{bits} = 15;
$sheet{VINOD03_26B}{coeffs}{seq} = [qw(-611 4999 2054 892 -621 -2201 -3067 -2503 -178 3645 8139 12106 14433 14433 12106 8139 3645 -178 -2503 -3067 -2201 -621 892 2054 4999 -611)];
$sheet{VINOD03_26B}{coeffs}{len} = 26;

return 1;
