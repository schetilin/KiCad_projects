EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L kt315:KT361 Q2
U 1 1 5E94E95A
P 5800 3800
F 0 "Q2" H 5991 3846 50  0000 L CNN
F 1 "KT361" H 5991 3755 50  0000 L CNN
F 2 "transistors:kt315" H 5800 3800 50  0001 C CNN
F 3 "" H 5800 3800 60  0000 C CNN
	1    5800 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	5600 3800 5300 3800
$Comp
L kt315:KT315 Q1
U 1 1 5E94C100
P 5200 4000
F 0 "Q1" H 5391 4046 50  0000 L CNN
F 1 "KT315" H 5391 3955 50  0000 L CNN
F 2 "transistors:kt315" H 5200 4000 50  0001 C CNN
F 3 "" H 5200 4000 60  0000 C CNN
	1    5200 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E950860
P 5400 3600
F 0 "R1" V 5550 3600 50  0000 L CNN
F 1 "20K" V 5470 3555 50  0000 L CNN
F 2 "rezistors:MLT_0.125_10" V 5330 3600 50  0001 C CNN
F 3 "~" H 5400 3600 50  0001 C CNN
	1    5400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3600 5550 3600
Wire Wire Line
	5250 3600 5000 3600
Wire Wire Line
	5000 3600 5000 4000
Connection ~ 5000 4000
Wire Wire Line
	5000 4000 5000 4250
$Comp
L Device:C C1
U 1 1 5E955C25
P 5000 4400
F 0 "C1" H 5115 4446 50  0000 L CNN
F 1 "47nF" H 5115 4355 50  0000 L CNN
F 2 "capacitors:ceramic_5" H 5038 4250 50  0001 C CNN
F 3 "~" H 5000 4400 50  0001 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4550 5000 4750
Wire Wire Line
	5900 3600 6400 3600
Connection ~ 5900 3600
Wire Wire Line
	5900 4750 6400 4750
$Comp
L Mechanical:MountingHole_Pad J1
U 1 1 5E956A8D
P 6500 3600
F 0 "J1" V 6454 3750 50  0000 L CNN
F 1 "+" V 6545 3750 50  0000 L CNN
F 2 "connectors:b_single" H 6500 3600 50  0001 C CNN
F 3 "~" H 6500 3600 50  0001 C CNN
	1    6500 3600
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad J2
U 1 1 5E95700D
P 6500 4750
F 0 "J2" V 6454 4900 50  0000 L CNN
F 1 "-" V 6545 4900 50  0000 L CNN
F 2 "connectors:b_single" H 6500 4750 50  0001 C CNN
F 3 "~" H 6500 4750 50  0001 C CNN
	1    6500 4750
	0    1    1    0   
$EndComp
$Comp
L Device:Earphone LS1
U 1 1 5E957984
P 5900 4400
F 0 "LS1" H 6003 4496 50  0000 L CNN
F 1 "Earphone" H 6003 4405 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 5900 4500 50  0001 C CNN
F 3 "~" V 5900 4500 50  0001 C CNN
	1    5900 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 4000 5900 4150
Wire Wire Line
	5000 4750 5600 4750
Wire Wire Line
	5600 4750 5600 4150
Wire Wire Line
	5600 4150 5900 4150
Connection ~ 5900 4150
Wire Wire Line
	5900 4150 5900 4300
Wire Wire Line
	5300 4200 5300 4950
Wire Wire Line
	5300 4950 5900 4950
Wire Wire Line
	5900 4950 5900 4750
Connection ~ 5900 4750
Wire Wire Line
	5900 4600 5900 4750
$EndSCHEMATC
