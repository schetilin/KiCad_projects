PCBNEW-LibModule-V1  Пт 03 апр 2015 23:31:53
# encoding utf-8
Units mm
$INDEX
b_2
b_single
s_3
s_5
$EndINDEX
$MODULE b_2
Po 0 0 0 15 551EEDDA 00000000 ~~
Li b_2
Cd Connecteurs 2 pins
Kw CONN DEV
Sc 0
AR /55181DCF
Op 0 0 0
T0 0 -2.5 0.762 0.762 0 0.1524 N V 21 N "P5"
T1 0 -2.5 0.762 0.762 0 0.1524 N I 21 N "CONN_2"
DS -5 -2 5 -2 0.15 21
DS 5 -2 5 2 0.15 21
DS 5 2 -5 2 0.15 21
DS -5 2 -5 -2 0.15 21
$PAD
Sh "1" R 3 3 0 0 0
Dr 1.8 0 0
At STD N 00E0FFFF
Ne 1 "N-0000032"
Po -2.5 0
$EndPAD
$PAD
Sh "2" C 3 3 0 0 0
Dr 1.8 0 0
At STD N 00E0FFFF
Ne 2 "N-0000038"
Po 2.5 0
$EndPAD
$SHAPE3D
Na "pin_array/pins_array_2x1.wrl"
Sc 1 1 1
Of 0 0 0
Ro 0 0 0
$EndSHAPE3D
$EndMODULE b_2
$MODULE b_single
Po 0 0 0 15 551BE656 00000000 ~~
Li b_single
Cd module 1 pin (ou trou mecanique de percage)
Kw DEV
Sc 0
AR /55186575
Op 0 0 0
T0 0 -1.26746 0.508 0.508 0 0.127 N V 21 N "P2"
T1 0 1.27 0.508 0.508 0 0.127 N I 21 N "CONN_1"
DC 0 0 1.75 0 0.15 21
$PAD
Sh "1" C 3 3 0 0 0
Dr 1.5 0 0
At STD N 00E0FFFF
Ne 1 "/+12"
Po 0 0
$EndPAD
$SHAPE3D
Na "pin_array/pin_array_1x1.wrl"
Sc 1 1 1
Of 0 0 0
Ro 0 0 0
$EndSHAPE3D
$EndMODULE b_single
$MODULE s_3
Po 0 0 0 15 551EF8B6 00000000 ~~
Li s_3
Cd Double rangee de contacts 2 x 5 pins
Kw CONN
Sc 0
AR /5519487A
Op 0 0 0
T0 0 -1.5 1.016 1.016 0 0.2032 N V 21 N "P1"
T1 0 1.75 1.016 1.016 0 0.2032 N I 21 N "CONN_3"
DS 3.5 6.5 3.5 -1.25 0.15 21
DS 3.5 -1.25 -3.5 -1.25 0.15 21
DS -3.5 -1.25 -3.5 6.5 0.15 21
DS -3.5 6.5 3.5 6.5 0.15 21
$PAD
Sh "1" R 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 4 "/out"
Po -2.54 0
$EndPAD
$PAD
Sh "2" C 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "3" C 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 2 "/gnd"
Po 2.54 0
$EndPAD
$PAD
Sh "2" C 2 2 0 0 0
Dr 1.2 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 7
$EndPAD
$SHAPE3D
Na "pin_array/pins_array_5x1.wrl"
Sc 1 1 1
Of 0 0 0
Ro 0 0 0
$EndSHAPE3D
$EndMODULE s_3
$MODULE s_5
Po 0 0 0 15 551EF502 00000000 ~~
Li s_5
Cd Double rangee de contacts 2 x 5 pins
Kw CONN
Sc 0
AR /5519487A
Op 0 0 0
T0 0 -1.5 1.016 1.016 0 0.2032 N V 21 N "P1"
T1 0 1.75 1.016 1.016 0 0.2032 N I 21 N "CONN_5"
DS 6 6.5 6 -1.25 0.15 21
DS 6 -1.25 -6 -1.25 0.15 21
DS -6 -1.25 -6 6.5 0.15 21
DS -6 6.5 6 6.5 0.15 21
$PAD
Sh "1" R 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 4 "/out"
Po -5.08 0
$EndPAD
$PAD
Sh "2" C 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 3 "/in"
Po -2.54 0
$EndPAD
$PAD
Sh "3" C 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "4" C 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 2 "/gnd"
Po 2.54 0
$EndPAD
$PAD
Sh "5" C 1.7 1.7 0 0 0
Dr 1.016 0 0
At STD N 00E0FFFF
Ne 1 "/+12"
Po 5.08 0
$EndPAD
$PAD
Sh "3" C 2 2 0 0 0
Dr 1.2 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 7
$EndPAD
$SHAPE3D
Na "pin_array/pins_array_5x1.wrl"
Sc 1 1 1
Of 0 0 0
Ro 0 0 0
$EndSHAPE3D
$EndMODULE s_5
$EndLIBRARY
