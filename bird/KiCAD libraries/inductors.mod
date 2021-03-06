PCBNEW-LibModule-V1  Сб 04 апр 2015 21:20:10
# encoding utf-8
Units mm
$INDEX
Throttle_MLT_0.5_16
lh1
lv1
lv1_shielded
$EndINDEX
$MODULE Throttle_MLT_0.5_16
Po 0 0 0 15 54FB3910 00000000 ~~
Li Throttle_MLT_0.5_16
Sc 0
AR 
Op 0 0 0
T0 -3.5 0 1 1 0 0.15 N V 21 N "L"
T1 0 0 1 1 900 0.15 N V 21 N "VAL**"
DS 1.75 2.25 5.5 2.25 0.15 21
DS -5.5 2.25 -1.75 2.25 0.15 21
DS 5.5 -2.25 1.75 -2.25 0.15 21
DS -5.5 -2.25 -1.75 -2.25 0.15 21
DS -1.25 3.75 1.25 3.75 0.15 21
DS -1.25 -3.75 1.25 -3.75 0.15 21
DS 1.25 -3.75 1.25 3.75 0.15 21
DS -1.25 -3.75 -1.25 3.75 0.15 21
DS 1.75 5.25 1.25 3.75 0.15 21
DS -1.75 5.25 -1.25 3.75 0.15 21
DS 1.75 -5.25 1.25 -3.75 0.15 21
DS -1.75 -5.25 -1.25 -3.75 0.15 21
DS 1.75 -5.25 1.75 5.25 0.15 21
DS -1.75 -5.25 -1.75 5.25 0.15 21
DS 5.08 -2.159 5.08 2.159 0.15 21
DS 5.207 -2.159 5.207 2.159 0.15 21
DS 5.334 -2.159 5.334 2.159 0.15 21
DS -5.08 -2.159 -5.08 2.159 0.15 21
DS -5.207 -2.159 -5.207 2.159 0.15 21
DS -5.334 -2.159 -5.334 2.159 0.15 21
DS 8 0 5.461 0 0.8 21
DS -8 0 -5.461 0 0.8 21
DS -5.461 -2.159 -5.461 2.159 0.15 21
DS 5.461 2.159 5.461 -2.159 0.15 21
$PAD
Sh "1" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -8 0
$EndPAD
$PAD
Sh "2" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 8 0
$EndPAD
$SHAPE3D
Na "packages3d/rezistors/mlt_05_16.wrl"
Sc 1 1 1
Of 0 0 0
Ro 0 0 0
$EndSHAPE3D
$EndMODULE Throttle_MLT_0.5_16
$MODULE lh1
Po 0 0 0 15 551EFA4F 00000000 ~~
Li lh1
Sc 0
AR 
Op 0 0 0
T0 0 -1.5 1 1 0 0.15 N V 21 N "lh1"
T1 0 1.5 1 1 0 0.15 N V 21 N "VAL**"
DS -6.5 5 -4.5 5 0.15 21
DS -6.5 -5 -4.5 -5 0.15 21
DS -1.5 5 -1.5 3.5 0.15 21
DS -1.5 -5 -1.5 -3.5 0.15 21
DS -9.5 5 -9.5 3.5 0.15 21
DS -9.5 -5 -9.5 -3.5 0.15 21
DA -3 5 -1.5 5 1800 0.15 21
DA -8 5 -6.5 5 1800 0.15 21
DA -8 -5 -9.5 -5 1800 0.15 21
DA -3 -5 -4.5 -5 1800 0.15 21
DS -12 -3.5 12 -3.5 0.15 21
DS 12 -3.5 12 3.5 0.15 21
DS 12 3.5 -12 3.5 0.15 21
DS -12 3.5 -12 -3.5 0.15 21
$PAD
Sh "1" C 2 2 0 0 0
Dr 0.8 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -8 -5
$EndPAD
$PAD
Sh "2" C 2 2 0 0 0
Dr 0.8 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -3 -5
$EndPAD
$PAD
Sh "3" C 2 2 0 0 0
Dr 0.8 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -3 5
$EndPAD
$PAD
Sh "4" C 2 2 0 0 0
Dr 0.8 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -8 5
$EndPAD
$SHAPE3D
Na "packages3d/inductors/lh1.wrl"
Sc 1 1 1
Of 0 0 0
Ro 0 0 0
$EndSHAPE3D
$EndMODULE lh1
$MODULE lv1
Po 0 0 0 15 55202B3B 00000000 ~~
Li lv1
Kw inductor
Sc 0
AR 
Op 0 0 0
T0 0 4.25 1 1 0 0.15 N V 21 N "lv1"
T1 0 -2.25 1 1 0 0.15 N V 21 N "VAL**"
DS 5 2.75 5 5 0.15 21
DS 5 -1.75 5 1.75 0.15 21
DS 5 -5 5 -2.75 0.15 21
DS -5 2.75 -5 5 0.15 21
DS -5 -1.75 -5 1.75 0.15 21
DS -5 -5 -5 -2.75 0.15 21
DS -5 1.75 -3.5 1.75 0.15 21
DS -3.5 1.75 -3.5 2.75 0.15 21
DS -3.5 2.75 -5 2.75 0.15 21
DS -5 -2.75 -3.5 -2.75 0.15 21
DS -3.5 -2.75 -3.5 -1.75 0.15 21
DS -3.5 -1.75 -5 -1.75 0.15 21
DS 5 1.75 3.5 1.75 0.15 21
DS 3.5 1.75 3.5 2.75 0.15 21
DS 3.5 2.75 5 2.75 0.15 21
DS 5 -2.75 3.5 -2.75 0.15 21
DS 3.5 -2.75 3.5 -1.75 0.15 21
DS 3.5 -1.75 5 -1.75 0.15 21
DS -5 5 5 5 0.15 21
DS 5 -5 -5 -5 0.15 21
$PAD
Sh "3" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2.6 -3.75
$EndPAD
$PAD
Sh "2" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2.6 -3.75
$EndPAD
$PAD
Sh "1" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 3.75 3.75
$EndPAD
$PAD
Sh "4" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -3.75 3.75
$EndPAD
$EndMODULE lv1
$MODULE lv1_shielded
Po 0 0 0 15 55202B53 00000000 ~~
Li lv1_shielded
Kw inductor shield
Sc 0
AR 
Op 0 0 0
T0 0 4.25 1 1 0 0.15 N V 21 N "lv1_shielded"
T1 0 -2.25 1 1 0 0.15 N V 21 N "VAL**"
DS -5.5 -7 5.5 -7 0.15 21
DS -6.75 -6.75 -6.75 6.75 0.15 21
DS -6.75 6.75 6.75 6.75 0.15 21
DS 6.75 6.75 6.75 -6.75 0.15 21
DS 6.75 -6.75 -6.75 -6.75 0.15 21
DS 5 2.75 5 5 0.15 21
DS 5 -1.75 5 1.75 0.15 21
DS 5 -5 5 -2.75 0.15 21
DS -5 2.75 -5 5 0.15 21
DS -5 -1.75 -5 1.75 0.15 21
DS -5 -5 -5 -2.75 0.15 21
DS -5 1.75 -3.5 1.75 0.15 21
DS -3.5 1.75 -3.5 2.75 0.15 21
DS -3.5 2.75 -5 2.75 0.15 21
DS -5 -2.75 -3.5 -2.75 0.15 21
DS -3.5 -2.75 -3.5 -1.75 0.15 21
DS -3.5 -1.75 -5 -1.75 0.15 21
DS 5 1.75 3.5 1.75 0.15 21
DS 3.5 1.75 3.5 2.75 0.15 21
DS 3.5 2.75 5 2.75 0.15 21
DS 5 -2.75 3.5 -2.75 0.15 21
DS 3.5 -2.75 3.5 -1.75 0.15 21
DS 3.5 -1.75 5 -1.75 0.15 21
DS -5 5 5 5 0.15 21
DS 5 -5 -5 -5 0.15 21
$PAD
Sh "3" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2.6 -3.75
$EndPAD
$PAD
Sh "2" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2.6 -3.75
$EndPAD
$PAD
Sh "1" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 3.75 3.75
$EndPAD
$PAD
Sh "4" C 2 2 0 0 0
Dr 1 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -3.75 3.75
$EndPAD
$PAD
Sh "s" C 3 3 0 0 0
Dr 1.5 0 0 O 1.5 0.5
At STD N 00E0FFFF
Ne 0 ""
Po -5 -7
$EndPAD
$PAD
Sh "s" C 3 3 0 0 0
Dr 1.5 0 0 O 1.5 0.5
At STD N 00E0FFFF
Ne 0 ""
Po 5 -7
$EndPAD
$EndMODULE lv1_shielded
$EndLIBRARY
