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
L ESP32-CAM:ESP32-CAM IC1
U 1 1 61965D0F
P 4850 3000
F 0 "IC1" H 5450 3265 50  0000 C CNN
F 1 "ESP32-CAM" H 5450 3174 50  0000 C CNN
F 2 "ESP32CAM" H 5900 3100 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Ai-Thinker-ESP32-CAM_C277946.pdf" H 5900 3000 50  0001 L CNN
F 4 "Modules PCBA Module RoHS" H 5900 2900 50  0001 L CNN "Description"
F 5 "5" H 5900 2800 50  0001 L CNN "Height"
F 6 "Ai-Thinker" H 5900 2700 50  0001 L CNN "Manufacturer_Name"
F 7 "ESP32-CAM" H 5900 2600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 5900 2500 50  0001 L CNN "Mouser Part Number"
F 9 "" H 5900 2400 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 5900 2300 50  0001 L CNN "Arrow Part Number"
F 11 "" H 5900 2200 50  0001 L CNN "Arrow Price/Stock"
	1    4850 3000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Audio:LM386 U4
U 1 1 61BB7B58
P 10300 2200
F 0 "U4" H 10644 2246 50  0000 L CNN
F 1 "LM386" H 10644 2155 50  0000 L CNN
F 2 "" H 10400 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 10500 2400 50  0001 C CNN
	1    10300 2200
	1    0    0    -1  
$EndComp
$Comp
L eec:ATSAMD20J18A-CUT U3
U 1 1 61BB8940
P 8400 1700
F 0 "U3" H 9100 1965 50  0000 C CNN
F 1 "ATSAMD20J18A-CUT" H 9100 1874 50  0000 C CNN
F 2 "Atmel-ATSAMD20J18A-CUT-*" H 8400 2100 50  0001 L CNN
F 3 "http://www.atmel.com/images/atmel-42129-sam-d20_datasheet.pdf" H 8400 2200 50  0001 L CNN
F 4 "48 MHz Max." H 8400 2300 50  0001 L CNN "CPU Frequency"
F 5 "Manufacturer URL" H 8400 2400 50  0001 L CNN "Component Link 1 Description"
F 6 "http://www.atmel.com/" H 8400 2500 50  0001 L CNN "Component Link 1 URL"
F 7 "Package Specification" H 8400 2600 50  0001 L CNN "Component Link 3 Description"
F 8 "http://www.atmel.com/images/atmel-42129-sam-d20_datasheet.pdf" H 8400 2700 50  0001 L CNN "Component Link 3 URL"
F 9 "Rev. N" H 8400 2800 50  0001 L CNN "Datasheet Version"
F 10 "256 KB" H 8400 2900 50  0001 L CNN "Flash Memory Density"
F 11 "52" H 8400 3000 50  0001 L CNN "GPIOs"
F 12 "Surface Mount" H 8400 3100 50  0001 L CNN "Mounting Technology"
F 13 "64-Ball Ball Grid Array Package, Body 5 x 5 mm, Pitch 0.5 mm" H 8400 3200 50  0001 L CNN "Package Description"
F 14 "Tape and Reel" H 8400 3300 50  0001 L CNN "Packing"
F 15 "32 KB" H 8400 3400 50  0001 L CNN "SRAM"
F 16 "-40 to 85 degC" H 8400 3500 50  0001 L CNN "Temperature Range"
F 17 "1.62 to 3.63 V" H 8400 3600 50  0001 L CNN "VDD"
F 18 "IC" H 8400 3700 50  0001 L CNN "category"
F 19 "532504b2804857b4" H 8400 3800 50  0001 L CNN "library id"
F 20 "Atmel" H 8400 3900 50  0001 L CNN "manufacturer"
F 21 "Yes" H 8400 4000 50  0001 L CNN "rohs"
F 22 "B34339EF-D3F8-43EA-98A9-B5A06C214769" H 8400 4100 50  0001 L CNN "vault revision"
F 23 "yes" H 8400 4200 50  0001 L CNN "imported"
	1    8400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3000 4500 3000
Wire Wire Line
	4500 3000 4500 4850
Wire Wire Line
	4500 4850 4650 4850
Wire Wire Line
	4850 3100 4650 3100
Wire Wire Line
	4650 3100 4650 4150
Wire Wire Line
	6600 4150 6600 5650
Wire Wire Line
	6600 5650 6250 5650
Wire Wire Line
	4850 3200 4350 3200
Wire Wire Line
	4350 3200 4350 5250
Wire Wire Line
	4350 5250 4650 5250
Wire Wire Line
	4650 5150 4250 5150
Wire Wire Line
	4250 5150 4250 3300
Wire Wire Line
	4250 3300 4850 3300
Wire Wire Line
	4850 3400 4150 3400
Wire Wire Line
	4150 3400 4150 5350
Wire Wire Line
	4150 5350 4650 5350
Wire Wire Line
	4850 3500 4000 3500
Wire Wire Line
	4000 3500 4000 5450
Wire Wire Line
	4000 5450 4650 5450
Wire Wire Line
	4850 3600 2900 3600
Wire Wire Line
	2900 3600 2900 4000
Wire Wire Line
	2900 4000 3000 4000
$Comp
L Motor:Motor_Servo M1
U 1 1 61BF6CEE
P 3300 4100
F 0 "M1" H 3632 4165 50  0000 L CNN
F 1 "Motor_Servo" H 3632 4074 50  0000 L CNN
F 2 "" H 3300 3910 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 3300 3910 50  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 61C03A44
P 2800 2450
F 0 "U1" H 2800 2692 50  0000 C CNN
F 1 "LM7805_TO220" H 2800 2601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2800 2675 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 2800 2400 50  0001 C CNN
	1    2800 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61C0F7DA
P 3350 2600
F 0 "C2" H 3465 2646 50  0000 L CNN
F 1 "1uF" H 3465 2555 50  0000 L CNN
F 2 "" H 3388 2450 50  0001 C CNN
F 3 "~" H 3350 2600 50  0001 C CNN
	1    3350 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61C101A0
P 2150 2600
F 0 "C1" H 2265 2646 50  0000 L CNN
F 1 "10uF" H 2265 2555 50  0000 L CNN
F 2 "" H 2188 2450 50  0001 C CNN
F 3 "~" H 2150 2600 50  0001 C CNN
	1    2150 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 61E0FB91
P 1450 2550
F 0 "J1" V 1530 2542 50  0000 L CNN
F 1 "Conn_01x02" H 1530 2451 50  0000 L CNN
F 2 "" H 1450 2550 50  0001 C CNN
F 3 "~" H 1450 2550 50  0001 C CNN
	1    1450 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 2450 2150 2450
Wire Wire Line
	2500 2450 2150 2450
Connection ~ 2150 2450
Wire Wire Line
	3100 2450 3350 2450
Wire Wire Line
	2150 2750 2800 2750
Wire Wire Line
	3350 2750 2800 2750
Connection ~ 2800 2750
Wire Wire Line
	1650 2550 1650 2750
Wire Wire Line
	1650 2750 2150 2750
Connection ~ 2150 2750
Wire Wire Line
	3350 2450 4500 2450
Wire Wire Line
	4500 2450 4500 3000
Connection ~ 3350 2450
Connection ~ 4500 3000
Wire Wire Line
	3350 2750 4350 2750
Wire Wire Line
	4350 2750 4350 3100
Wire Wire Line
	4350 3100 4650 3100
Connection ~ 3350 2750
Connection ~ 4650 3100
Wire Wire Line
	3000 4100 2800 4100
Wire Wire Line
	2800 4100 2800 3000
Wire Wire Line
	2800 3000 4500 3000
Wire Wire Line
	3000 4200 3000 4350
Wire Wire Line
	3000 4350 4650 4350
Wire Wire Line
	4650 4350 4650 4150
Connection ~ 4650 4150
Wire Wire Line
	4650 4150 6600 4150
$Comp
L L293D:L293D U2
U 1 1 61BD6E45
P 5450 5050
F 0 "U2" H 5450 5815 50  0000 C CNN
F 1 "L293D" H 5450 5724 50  0000 C CNN
F 2 "DIP880W50P254L2000H510Q16" H 5450 5050 50  0001 L BNN
F 3 "" H 5450 5050 50  0001 L BNN
F 4 "20.0" H 5450 5050 50  0001 L BNN "D_NOM"
F 5 "" H 5450 5050 50  0001 L BNN "DMAX"
F 6 "20.0" H 5450 5050 50  0001 L BNN "D_MIN"
F 7 "" H 5450 5050 50  0001 L BNN "PINS"
F 8 "" H 5450 5050 50  0001 L BNN "DNOM"
F 9 "ST Microelectronics" H 5450 5050 50  0001 L BNN "MANUFACTURER"
F 10 "5.1" H 5450 5050 50  0001 L BNN "A_MIN"
F 11 "" H 5450 5050 50  0001 L BNN "D1_MAX"
F 12 "" H 5450 5050 50  0001 L BNN "PACKAGE_TYPE"
F 13 "0.5" H 5450 5050 50  0001 L BNN "B_MIN"
F 14 "20.0" H 5450 5050 50  0001 L BNN "D_MAX"
F 15 "" H 5450 5050 50  0001 L BNN "SNAPEDA_PACKAGE_ID"
F 16 "" H 5450 5050 50  0001 L BNN "D1_NOM"
F 17 "0.5" H 5450 5050 50  0001 L BNN "B_MAX"
F 18 "7.1" H 5450 5050 50  0001 L BNN "E1_NOM"
F 19 "" H 5450 5050 50  0001 L BNN "EMAX"
F 20 "" H 5450 5050 50  0001 L BNN "D1_MIN"
F 21 "0.5" H 5450 5050 50  0001 L BNN "B_NOM"
F 22 "7.1" H 5450 5050 50  0001 L BNN "E1_MIN"
F 23 "" H 5450 5050 50  0001 L BNN "EMIN"
F 24 "" H 5450 5050 50  0001 L BNN "L1_MAX"
F 25 "IPC 7351B" H 5450 5050 50  0001 L BNN "STANDARD"
F 26 "" H 5450 5050 50  0001 L BNN "VACANCIES"
F 27 "5.1" H 5450 5050 50  0001 L BNN "A_MAX"
F 28 "" H 5450 5050 50  0001 L BNN "L1_NOM"
F 29 "2.54" H 5450 5050 50  0001 L BNN "ENOM"
F 30 "" H 5450 5050 50  0001 L BNN "L1_MIN"
F 31 "8.8" H 5450 5050 50  0001 L BNN "E_NOM"
F 32 "" H 5450 5050 50  0001 L BNN "DMIN"
F 33 "16.0" H 5450 5050 50  0001 L BNN "PIN_COUNT"
F 34 "5.1mm" H 5450 5050 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 35 "5.1" H 5450 5050 50  0001 L BNN "A_NOM"
F 36 "" H 5450 5050 50  0001 L BNN "PARTREV"
F 37 "7.1" H 5450 5050 50  0001 L BNN "E1_MAX"
	1    5450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4950 4500 4950
Wire Wire Line
	4500 4950 4500 4850
Connection ~ 4500 4850
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 61E2DEC0
P 1700 5250
F 0 "J2" H 1618 4925 50  0000 C CNN
F 1 "Conn_01x02" H 1618 5016 50  0000 C CNN
F 2 "" H 1700 5250 50  0001 C CNN
F 3 "~" H 1700 5250 50  0001 C CNN
	1    1700 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 5150 3600 5150
Wire Wire Line
	3600 5150 3600 6050
Wire Wire Line
	3600 6050 6400 6050
Wire Wire Line
	6400 6050 6400 4550
Wire Wire Line
	6400 4550 6250 4550
Wire Wire Line
	1900 5250 1900 6150
Wire Wire Line
	1900 6150 5950 6150
Wire Wire Line
	6600 6150 6600 5650
Connection ~ 6600 5650
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61E448E9
P 7850 4550
F 0 "J3" H 7930 4542 50  0000 L CNN
F 1 "Conn_01x02" H 7930 4451 50  0000 L CNN
F 2 "" H 7850 4550 50  0001 C CNN
F 3 "~" H 7850 4550 50  0001 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 61E45115
P 7850 5350
F 0 "J4" H 7930 5342 50  0000 L CNN
F 1 "Conn_01x02" H 7930 5251 50  0000 L CNN
F 2 "" H 7850 5350 50  0001 C CNN
F 3 "~" H 7850 5350 50  0001 C CNN
	1    7850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5150 6850 5150
Wire Wire Line
	6850 5150 6850 4550
Wire Wire Line
	6850 4550 7650 4550
Wire Wire Line
	7650 4650 7000 4650
Wire Wire Line
	7000 4650 7000 5250
Wire Wire Line
	7000 5250 6250 5250
Wire Wire Line
	6250 5350 7650 5350
Wire Wire Line
	7650 5450 6250 5450
$Comp
L power:GND #PWR0101
U 1 1 61E77D28
P 5950 6200
F 0 "#PWR0101" H 5950 5950 50  0001 C CNN
F 1 "GND" H 5955 6027 50  0000 C CNN
F 2 "" H 5950 6200 50  0001 C CNN
F 3 "" H 5950 6200 50  0001 C CNN
	1    5950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6200 5950 6150
Connection ~ 5950 6150
Wire Wire Line
	5950 6150 6600 6150
$EndSCHEMATC
