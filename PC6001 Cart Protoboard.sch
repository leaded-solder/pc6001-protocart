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
L Connector:TestPoint -12V
U 1 1 5DDF0281
P 6925 5650
F 0 "-12V" H 6983 5768 50  0000 L CNN
F 1 "TestPoint" H 6983 5677 50  0000 L CNN
F 2 "Protoboard:Strip_25_vert" H 7125 5650 50  0001 C CNN
F 3 "~" H 7125 5650 50  0001 C CNN
	1    6925 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 5650 6400 5650
Wire Wire Line
	6400 5650 6400 5300
$Comp
L Connector:TestPoint 12V
U 1 1 5DDF09D0
P 6825 5450
F 0 "12V" H 6883 5568 50  0000 L CNN
F 1 "TestPoint" H 6883 5477 50  0000 L CNN
F 2 "Protoboard:Strip_25_vert" H 7025 5450 50  0001 C CNN
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
L Connector:TestPoint 5V
U 1 1 5DDF1283
P 5475 5450
F 0 "5V" H 5533 5568 50  0000 L CNN
F 1 "TestPoint" H 5533 5477 50  0000 L CNN
F 2 "Protoboard:Strip_25_vert" H 5675 5450 50  0001 C CNN
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
L Connector:TestPoint -5V
U 1 1 5DDF1B7A
P 5275 5675
F 0 "-5V" H 5333 5793 50  0000 L CNN
F 1 "TestPoint" H 5333 5702 50  0000 L CNN
F 2 "Protoboard:Strip_25_vert" H 5475 5675 50  0001 C CNN
F 3 "~" H 5475 5675 50  0001 C CNN
	1    5275 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5300 5900 5675
Wire Wire Line
	5900 5675 5275 5675
$Comp
L Connector:TestPoint GND
U 1 1 5DDF2781
P 5225 5000
F 0 "GND" H 5283 5118 50  0000 L CNN
F 1 "TestPoint" H 5283 5027 50  0000 L CNN
F 2 "Protoboard:Strip_25_vert" H 5425 5000 50  0001 C CNN
F 3 "~" H 5425 5000 50  0001 C CNN
	1    5225 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 5225 5000
$EndSCHEMATC
