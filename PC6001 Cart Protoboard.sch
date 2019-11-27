EESchema Schematic File Version 4
LIBS:PC6001 Cart Protoboard-cache
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
L Connector_Generic:Conn_02x25_Odd_Even J1
U 1 1 5DDDE87B
P 6100 4100
F 0 "J1" H 6150 5517 50  0000 C CNN
F 1 "Conn_02x25_Odd_Even" H 6150 5426 50  0000 C CNN
F 2 "PC6001 Edge Connector:PC6001 Cartridge Connector" H 6100 4100 50  0001 C CNN
F 3 "~" H 6100 4100 50  0001 C CNN
	1    6100 4100
	1    0    0    -1  
$EndComp
Text Label 6400 5300 0    50   ~ 0
-12V
Text Label 6400 5200 0    50   ~ 0
12V
Text Label 6400 5100 0    50   ~ 0
MSW2
Text Label 6400 5000 0    50   ~ 0
MSW1
Text Label 6400 4900 0    50   ~ 0
CLK
Text Label 6400 4800 0    50   ~ 0
D6
Text Label 6400 4700 0    50   ~ 0
D4
Text Label 6400 4600 0    50   ~ 0
D2
Text Label 6400 4500 0    50   ~ 0
D0
Text Label 6400 4400 0    50   ~ 0
A4
Text Label 6400 4300 0    50   ~ 0
A2
Text Label 6400 4200 0    50   ~ 0
A0
Text Label 6400 4100 0    50   ~ 0
A13
Text Label 6400 4000 0    50   ~ 0
A8
Text Label 6400 3900 0    50   ~ 0
A6
Text Label 6400 3800 0    50   ~ 0
A10
Text Label 6400 3700 0    50   ~ 0
A15
Text Label 6400 3600 0    50   ~ 0
CLK-16M
Text Label 6400 3500 0    50   ~ 0
RD
Text Label 6400 3400 0    50   ~ 0
MREQ
Text Label 6400 3300 0    50   ~ 0
EXCAS
Text Label 6400 3200 0    50   ~ 0
NMI
Text Label 6400 3100 0    50   ~ 0
EROM
Text Label 6400 3000 0    50   ~ 0
CS2
Text Label 6400 2900 0    50   ~ 0
CS3
Text Label 5900 2900 2    50   ~ 0
RAS2
Text Label 5900 3000 2    50   ~ 0
DRD2
Text Label 5900 3100 2    50   ~ 0
WE
Text Label 5900 3200 2    50   ~ 0
WAIT
Text Label 5900 3300 2    50   ~ 0
M1
Text Label 5900 3400 2    50   ~ 0
IORQ
Text Label 5900 3500 2    50   ~ 0
WR
Text Label 5900 3600 2    50   ~ 0
RESET
Text Label 5900 3700 2    50   ~ 0
A9
Text Label 5900 3800 2    50   ~ 0
A11
Text Label 5900 3900 2    50   ~ 0
A7
Text Label 5900 4000 2    50   ~ 0
A12
Text Label 5900 4100 2    50   ~ 0
A14
Text Label 5900 4200 2    50   ~ 0
A1
Text Label 5900 4300 2    50   ~ 0
A3
Text Label 5900 4400 2    50   ~ 0
A5
Text Label 5900 4500 2    50   ~ 0
D1
Text Label 5900 4600 2    50   ~ 0
D3
Text Label 5900 4700 2    50   ~ 0
D5
Text Label 5900 4800 2    50   ~ 0
D7
Text Label 5900 4900 2    50   ~ 0
GND
Text Label 5900 5000 2    50   ~ 0
GND
Text Label 5900 5100 2    50   ~ 0
5V
Text Label 5900 5200 2    50   ~ 0
5V
Text Label 5900 5300 2    50   ~ 0
-5V
$Comp
L Connector:TestPoint CS3
U 1 1 5DDE1D1C
P 6750 2900
F 0 "CS3" H 6808 3018 50  0000 L CNN
F 1 "TestPoint" H 6808 2927 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 6950 2900 50  0001 C CNN
F 3 "~" H 6950 2900 50  0001 C CNN
	1    6750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2900 6750 2900
$Comp
L Connector:TestPoint RAS2
U 1 1 5DDE5840
P 5200 2875
F 0 "RAS2" H 5258 2993 50  0000 L CNN
F 1 "TestPoint" H 5258 2902 50  0000 L CNN
F 2 "Protoboard:Proto_1_Odd" H 5400 2875 50  0001 C CNN
F 3 "~" H 5400 2875 50  0001 C CNN
	1    5200 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2900 5200 2900
Wire Wire Line
	5200 2900 5200 2875
$Comp
L Connector:TestPoint -12V1
U 1 1 5DDF0281
P 6925 5650
F 0 "-12V1" H 6983 5768 50  0000 L CNN
F 1 "TestPoint" H 6983 5677 50  0001 L CNN
F 2 "Protoboard:Strip_25" H 7125 5650 50  0001 C CNN
F 3 "~" H 7125 5650 50  0001 C CNN
	1    6925 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 5650 6400 5650
Wire Wire Line
	6400 5650 6400 5300
$Comp
L Connector:TestPoint 12V1
U 1 1 5DDF09D0
P 6825 5450
F 0 "12V1" H 6883 5568 50  0000 L CNN
F 1 "TestPoint" H 6883 5477 50  0001 L CNN
F 2 "Protoboard:Strip_25" H 7025 5450 50  0001 C CNN
F 3 "~" H 7025 5450 50  0001 C CNN
	1    6825 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 5450 6425 5450
Wire Wire Line
	6425 5450 6425 5200
Wire Wire Line
	6425 5200 6400 5200
$Comp
L Connector:TestPoint 5V1
U 1 1 5DDF1283
P 5475 5450
F 0 "5V1" H 5533 5568 50  0000 L CNN
F 1 "TestPoint" H 5533 5477 50  0001 L CNN
F 2 "Protoboard:Strip_25" H 5675 5450 50  0001 C CNN
F 3 "~" H 5675 5450 50  0001 C CNN
	1    5475 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5200 5750 5200
Wire Wire Line
	5750 5200 5750 5450
Wire Wire Line
	5750 5450 5475 5450
$Comp
L Connector:TestPoint -5V1
U 1 1 5DDF1B7A
P 5275 5675
F 0 "-5V1" H 5333 5793 50  0000 L CNN
F 1 "TestPoint" H 5333 5702 50  0001 L CNN
F 2 "Protoboard:Strip_25" H 5475 5675 50  0001 C CNN
F 3 "~" H 5475 5675 50  0001 C CNN
	1    5275 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5300 5900 5675
Wire Wire Line
	5900 5675 5275 5675
$Comp
L Connector:TestPoint GND1
U 1 1 5DDF2781
P 5225 5000
F 0 "GND1" H 5283 5118 50  0000 L CNN
F 1 "TestPoint" H 5283 5027 50  0001 L CNN
F 2 "Protoboard:Strip_25" H 5425 5000 50  0001 C CNN
F 3 "~" H 5425 5000 50  0001 C CNN
	1    5225 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 5225 5000
$Comp
L Connector:TestPoint MSW2
U 1 1 5DDF6D1E
P 7300 5100
F 0 "MSW2" H 7358 5218 50  0000 L CNN
F 1 "TestPoint" H 7358 5127 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7500 5100 50  0001 C CNN
F 3 "~" H 7500 5100 50  0001 C CNN
	1    7300 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint MSW1
U 1 1 5DDF7309
P 7225 4975
F 0 "MSW1" H 7283 5093 50  0000 L CNN
F 1 "TestPoint" H 7283 5002 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7425 4975 50  0001 C CNN
F 3 "~" H 7425 4975 50  0001 C CNN
	1    7225 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5100 6400 5100
Wire Wire Line
	6400 5000 7225 5000
Wire Wire Line
	7225 5000 7225 4975
$Comp
L Connector:TestPoint D7
U 1 1 5DDF9163
P 5100 4800
F 0 "D7" H 5158 4918 50  0000 L CNN
F 1 "TestPoint" H 5158 4827 50  0001 L CNN
F 2 "Protoboard:Proto_1_Odd" H 5300 4800 50  0001 C CNN
F 3 "~" H 5300 4800 50  0001 C CNN
	1    5100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4800 5900 4800
$Comp
L Connector:TestPoint CLK1
U 1 1 5DDFBA79
P 7125 4875
F 0 "CLK1" H 7183 4993 50  0000 L CNN
F 1 "TestPoint" H 7183 4902 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7325 4875 50  0001 C CNN
F 3 "~" H 7325 4875 50  0001 C CNN
	1    7125 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	7125 4875 6400 4875
Wire Wire Line
	6400 4875 6400 4900
$Comp
L Connector:TestPoint D6
U 1 1 5DDFC92C
P 7025 4775
F 0 "D6" H 7083 4893 50  0000 L CNN
F 1 "TestPoint" H 7083 4802 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7225 4775 50  0001 C CNN
F 3 "~" H 7225 4775 50  0001 C CNN
	1    7025 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 4775 6400 4775
Wire Wire Line
	6400 4775 6400 4800
$Comp
L Connector:TestPoint D4
U 1 1 5DDFE930
P 7600 4700
F 0 "D4" H 7658 4818 50  0000 L CNN
F 1 "TestPoint" H 7658 4727 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7800 4700 50  0001 C CNN
F 3 "~" H 7800 4700 50  0001 C CNN
	1    7600 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint D2
U 1 1 5DE00472
P 7525 4625
F 0 "D2" H 7583 4743 50  0000 L CNN
F 1 "TestPoint" H 7583 4652 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7725 4625 50  0001 C CNN
F 3 "~" H 7725 4625 50  0001 C CNN
	1    7525 4625
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint D0
U 1 1 5DE0095B
P 7450 4550
F 0 "D0" H 7508 4668 50  0000 L CNN
F 1 "TestPoint" H 7508 4577 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7650 4550 50  0001 C CNN
F 3 "~" H 7650 4550 50  0001 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4700 6400 4700
Wire Wire Line
	6400 4600 7525 4600
Wire Wire Line
	7525 4600 7525 4625
Wire Wire Line
	7450 4550 6400 4550
Wire Wire Line
	6400 4550 6400 4500
$Comp
L Connector:TestPoint GND2
U 1 1 5DDE1672
P 5025 5100
F 0 "GND2" H 5083 5218 50  0000 L CNN
F 1 "TestPoint" H 5083 5127 50  0001 L CNN
F 2 "Protoboard:Strip_25" H 5225 5100 50  0001 C CNN
F 3 "~" H 5225 5100 50  0001 C CNN
	1    5025 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4925 5650 4925
Wire Wire Line
	5650 4925 5650 5100
Wire Wire Line
	5650 5100 5025 5100
Wire Wire Line
	5900 4925 5900 4900
$Comp
L Connector:TestPoint D5
U 1 1 5DDE5ADB
P 5225 4625
F 0 "D5" H 5283 4697 50  0000 L CNN
F 1 "TestPoint" H 5283 4652 50  0001 L CNN
F 2 "Protoboard:Proto_1_Odd" H 5425 4625 50  0001 C CNN
F 3 "~" H 5425 4625 50  0001 C CNN
	1    5225 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4700 5225 4700
Wire Wire Line
	5225 4700 5225 4625
$Comp
L Connector:TestPoint D3
U 1 1 5DDE9865
P 5325 4625
F 0 "D3" H 5383 4697 50  0000 L CNN
F 1 "TestPoint" H 5383 4652 50  0001 L CNN
F 2 "Protoboard:Proto_1_Odd" H 5525 4625 50  0001 C CNN
F 3 "~" H 5525 4625 50  0001 C CNN
	1    5325 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4600 5325 4600
Wire Wire Line
	5325 4600 5325 4625
$Comp
L Connector:TestPoint D1
U 1 1 5DDEAAAE
P 5450 4500
F 0 "D1" H 5508 4572 50  0000 L CNN
F 1 "TestPoint" H 5508 4527 50  0001 L CNN
F 2 "Protoboard:Proto_1_Odd" H 5650 4500 50  0001 C CNN
F 3 "~" H 5650 4500 50  0001 C CNN
	1    5450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4500 5450 4500
$Comp
L Connector:TestPoint A5
U 1 1 5DDEBC9A
P 4425 4575
F 0 "A5" H 4483 4693 50  0000 L CNN
F 1 "TestPoint" H 4483 4602 50  0000 L CNN
F 2 "Protoboard:Proto_1_Odd" H 4625 4575 50  0001 C CNN
F 3 "~" H 4625 4575 50  0001 C CNN
	1    4425 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4400 5525 4400
Wire Wire Line
	5525 4400 5525 4300
Wire Wire Line
	5525 4300 4425 4300
Wire Wire Line
	4425 4300 4425 4575
$Comp
L Connector:TestPoint A3
U 1 1 5DDED185
P 3950 4575
F 0 "A3" H 4008 4647 50  0000 L CNN
F 1 "TestPoint" H 4008 4602 50  0001 L CNN
F 2 "Protoboard:Proto_1_Odd" H 4150 4575 50  0001 C CNN
F 3 "~" H 4150 4575 50  0001 C CNN
	1    3950 4575
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint A1
U 1 1 5DDEDBF0
P 3475 4575
F 0 "A1" H 3533 4647 50  0000 L CNN
F 1 "TestPoint" H 3533 4602 50  0001 L CNN
F 2 "Protoboard:Proto_1_Odd" H 3675 4575 50  0001 C CNN
F 3 "~" H 3675 4575 50  0001 C CNN
	1    3475 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4300 5550 4300
Wire Wire Line
	5550 4300 5550 4250
Wire Wire Line
	3950 4250 3950 4575
Wire Wire Line
	3950 4250 5550 4250
Wire Wire Line
	3475 4575 3825 4575
Wire Wire Line
	3825 4575 3825 4200
Wire Wire Line
	3825 4200 5900 4200
$Comp
L Connector:TestPoint A4
U 1 1 5DDF39EE
P 8300 4400
F 0 "A4" H 8358 4472 50  0000 L CNN
F 1 "TestPoint" H 8358 4427 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 8500 4400 50  0001 C CNN
F 3 "~" H 8500 4400 50  0001 C CNN
	1    8300 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint A2
U 1 1 5DDF6394
P 8200 4350
F 0 "A2" H 8258 4422 50  0000 L CNN
F 1 "TestPoint" H 8258 4377 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 8400 4350 50  0001 C CNN
F 3 "~" H 8400 4350 50  0001 C CNN
	1    8200 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint A0
U 1 1 5DDF6A85
P 8125 4300
F 0 "A0" H 8183 4372 50  0000 L CNN
F 1 "TestPoint" H 8183 4327 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 8325 4300 50  0001 C CNN
F 3 "~" H 8325 4300 50  0001 C CNN
	1    8125 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4400 6400 4400
Wire Wire Line
	6400 4300 7975 4300
Wire Wire Line
	7975 4300 7975 4350
Wire Wire Line
	7975 4350 8200 4350
Wire Wire Line
	8125 4300 8000 4300
Wire Wire Line
	8000 4300 8000 4200
Wire Wire Line
	8000 4200 6400 4200
$Comp
L Connector:TestPoint CS2
U 1 1 5DDEB415
P 7250 3000
F 0 "CS2" H 7308 3118 50  0000 L CNN
F 1 "TestPoint" H 7308 3027 50  0000 L CNN
F 2 "Protoboard:Proto_1" H 7450 3000 50  0001 C CNN
F 3 "~" H 7450 3000 50  0001 C CNN
	1    7250 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint EROM1
U 1 1 5DDECDA9
P 7700 3100
F 0 "EROM1" H 7758 3172 50  0000 L CNN
F 1 "TestPoint" H 7758 3127 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 7900 3100 50  0001 C CNN
F 3 "~" H 7900 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint NMI1
U 1 1 5DDED455
P 8125 3175
F 0 "NMI1" H 8183 3247 50  0000 L CNN
F 1 "TestPoint" H 8183 3202 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 8325 3175 50  0001 C CNN
F 3 "~" H 8325 3175 50  0001 C CNN
	1    8125 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3000 6400 3000
Wire Wire Line
	6400 3100 7700 3100
Wire Wire Line
	6400 3200 8125 3200
Wire Wire Line
	8125 3200 8125 3175
$Comp
L Connector:TestPoint EXCAS1
U 1 1 5DDF2686
P 8400 3275
F 0 "EXCAS1" H 8458 3347 50  0000 L CNN
F 1 "TestPoint" H 8458 3302 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 8600 3275 50  0001 C CNN
F 3 "~" H 8600 3275 50  0001 C CNN
	1    8400 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3275 8400 3300
Wire Wire Line
	8400 3300 6400 3300
$Comp
L Connector:TestPoint MREQ1
U 1 1 5DDF4747
P 6775 3400
F 0 "MREQ1" V 6775 3588 50  0000 L CNN
F 1 "TestPoint" V 6820 3588 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 6975 3400 50  0001 C CNN
F 3 "~" H 6975 3400 50  0001 C CNN
	1    6775 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	6775 3400 6400 3400
$Comp
L Connector:TestPoint RD1
U 1 1 5DDF6755
P 7050 3475
F 0 "RD1" V 7050 3663 50  0000 L CNN
F 1 "TestPoint" V 7095 3663 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 7250 3475 50  0001 C CNN
F 3 "~" H 7250 3475 50  0001 C CNN
	1    7050 3475
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 3475 7050 3500
Wire Wire Line
	7050 3500 6400 3500
$Comp
L Connector:TestPoint CLK-16M1
U 1 1 5DDF892A
P 7000 3600
F 0 "CLK-16M1" V 7000 3788 50  0000 L CNN
F 1 "TestPoint" V 7045 3788 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 7200 3600 50  0001 C CNN
F 3 "~" H 7200 3600 50  0001 C CNN
	1    7000 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 3600 6400 3600
$Comp
L Connector:TestPoint A15
U 1 1 5DDFAFAB
P 6650 3700
F 0 "A15" V 6650 3888 50  0000 L CNN
F 1 "TestPoint" V 6695 3888 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 6850 3700 50  0001 C CNN
F 3 "~" H 6850 3700 50  0001 C CNN
	1    6650 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 3700 6400 3700
$Comp
L Connector:TestPoint A10
U 1 1 5DDFD738
P 6775 3800
F 0 "A10" V 6775 3988 50  0000 L CNN
F 1 "TestPoint" V 6820 3988 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 6975 3800 50  0001 C CNN
F 3 "~" H 6975 3800 50  0001 C CNN
	1    6775 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6775 3800 6400 3800
$Comp
L Connector:TestPoint A6
U 1 1 5DDFFBB8
P 6775 3900
F 0 "A6" V 6775 4088 50  0000 L CNN
F 1 "TestPoint" V 6820 4088 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 6975 3900 50  0001 C CNN
F 3 "~" H 6975 3900 50  0001 C CNN
	1    6775 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	6775 3900 6400 3900
$Comp
L Connector:TestPoint A8
U 1 1 5DE01F81
P 6775 4000
F 0 "A8" V 6775 4188 50  0000 L CNN
F 1 "TestPoint" V 6820 4188 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 6975 4000 50  0001 C CNN
F 3 "~" H 6975 4000 50  0001 C CNN
	1    6775 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6775 4000 6400 4000
$Comp
L Connector:TestPoint A13
U 1 1 5DE044C8
P 6775 4100
F 0 "A13" V 6775 4288 50  0000 L CNN
F 1 "TestPoint" V 6820 4288 50  0001 L CNN
F 2 "Protoboard:Proto_1" H 6975 4100 50  0001 C CNN
F 3 "~" H 6975 4100 50  0001 C CNN
	1    6775 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 4100 6775 4100
$Comp
L Connector:TestPoint DRD2
U 1 1 5DE07BAB
P 5175 3000
F 0 "DRD2" V 5278 3072 50  0000 C CNN
F 1 "TestPoint" V 5279 3072 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 5375 3000 50  0001 C CNN
F 3 "~" H 5375 3000 50  0001 C CNN
	1    5175 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3000 5175 3000
$Comp
L Connector:TestPoint WE1
U 1 1 5DE0D3C7
P 4950 3100
F 0 "WE1" V 5053 3172 50  0000 C CNN
F 1 "TestPoint" V 5054 3172 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 5150 3100 50  0001 C CNN
F 3 "~" H 5150 3100 50  0001 C CNN
	1    4950 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3100 4950 3100
$Comp
L Connector:TestPoint WAIT1
U 1 1 5DE0FC8B
P 4750 3200
F 0 "WAIT1" V 4853 3272 50  0000 C CNN
F 1 "TestPoint" V 4854 3272 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 4950 3200 50  0001 C CNN
F 3 "~" H 4950 3200 50  0001 C CNN
	1    4750 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3200 4750 3200
$Comp
L Connector:TestPoint M1
U 1 1 5DE1372F
P 4550 3300
F 0 "M1" V 4653 3372 50  0000 C CNN
F 1 "TestPoint" V 4654 3372 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 4750 3300 50  0001 C CNN
F 3 "~" H 4750 3300 50  0001 C CNN
	1    4550 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3300 4550 3300
$Comp
L Connector:TestPoint IORQ1
U 1 1 5DE16287
P 4350 3400
F 0 "IORQ1" V 4453 3472 50  0000 C CNN
F 1 "TestPoint" V 4454 3472 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 4550 3400 50  0001 C CNN
F 3 "~" H 4550 3400 50  0001 C CNN
	1    4350 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3400 4350 3400
$Comp
L Connector:TestPoint WR1
U 1 1 5DE19109
P 4150 3500
F 0 "WR1" V 4253 3572 50  0000 C CNN
F 1 "TestPoint" V 4254 3572 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 4350 3500 50  0001 C CNN
F 3 "~" H 4350 3500 50  0001 C CNN
	1    4150 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3500 4150 3500
$Comp
L Connector:TestPoint RESET1
U 1 1 5DE1BF60
P 3975 3600
F 0 "RESET1" V 4078 3672 50  0000 C CNN
F 1 "TestPoint" V 4079 3672 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 4175 3600 50  0001 C CNN
F 3 "~" H 4175 3600 50  0001 C CNN
	1    3975 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3600 3975 3600
$Comp
L Connector:TestPoint A9
U 1 1 5DE1F153
P 4400 3975
F 0 "A9" H 4342 4047 50  0000 R CNN
F 1 "TestPoint" H 4342 4092 50  0001 R CNN
F 2 "Protoboard:Proto_1_Odd" H 4600 3975 50  0001 C CNN
F 3 "~" H 4600 3975 50  0001 C CNN
	1    4400 3975
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 3700 4400 3700
Wire Wire Line
	4400 3700 4400 3975
$Comp
L Connector:TestPoint A11
U 1 1 5DE224D7
P 4625 3975
F 0 "A11" H 4567 4047 50  0000 R CNN
F 1 "TestPoint" H 4567 4092 50  0001 R CNN
F 2 "Protoboard:Proto_1_Odd" H 4825 3975 50  0001 C CNN
F 3 "~" H 4825 3975 50  0001 C CNN
	1    4625 3975
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 3800 4625 3800
Wire Wire Line
	4625 3800 4625 3975
$Comp
L Connector:TestPoint A7
U 1 1 5DE25941
P 4875 3975
F 0 "A7" H 4817 4047 50  0000 R CNN
F 1 "TestPoint" H 4817 4092 50  0001 R CNN
F 2 "Protoboard:Proto_1_Odd" H 5075 3975 50  0001 C CNN
F 3 "~" H 5075 3975 50  0001 C CNN
	1    4875 3975
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 3900 4875 3900
Wire Wire Line
	4875 3900 4875 3975
$Comp
L Connector:TestPoint A12
U 1 1 5DE28E58
P 5100 3975
F 0 "A12" H 5042 4047 50  0000 R CNN
F 1 "TestPoint" H 5042 4092 50  0001 R CNN
F 2 "Protoboard:Proto_1_Odd" H 5300 3975 50  0001 C CNN
F 3 "~" H 5300 3975 50  0001 C CNN
	1    5100 3975
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 4000 5100 3975
Wire Wire Line
	5100 4000 5900 4000
$Comp
L Connector:TestPoint A14
U 1 1 5DE2C964
P 5525 4100
F 0 "A14" V 5628 4172 50  0000 C CNN
F 1 "TestPoint" V 5629 4172 50  0001 C CNN
F 2 "Protoboard:Proto_1_Odd" H 5725 4100 50  0001 C CNN
F 3 "~" H 5725 4100 50  0001 C CNN
	1    5525 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 4100 5525 4100
$EndSCHEMATC
