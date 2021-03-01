EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Raspberry Pi HAT"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5834BC4A
P 1650 9850
F 0 "H1" H 1500 9950 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1650 9700 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1550 9850 60  0001 C CNN
F 3 "" H 1550 9850 60  0001 C CNN
	1    1650 9850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5834BCDF
P 2650 9850
F 0 "H2" H 2500 9950 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2650 9700 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2550 9850 60  0001 C CNN
F 3 "" H 2550 9850 60  0001 C CNN
	1    2650 9850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5834BD62
P 1650 10400
F 0 "H3" H 1500 10500 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1650 10250 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1550 10400 60  0001 C CNN
F 3 "" H 1550 10400 60  0001 C CNN
	1    1650 10400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5834BDED
P 2700 10400
F 0 "H4" H 2550 10500 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2700 10250 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2600 10400 60  0001 C CNN
F 3 "" H 2600 10400 60  0001 C CNN
	1    2700 10400
	1    0    0    -1  
$EndComp
Text Label 3300 8650 2    60   ~ 0
VCC
$Comp
L raspberrypi_hat:CAT24C32 U0
U 1 1 58E1713F
P 2250 7100
F 0 "U0" H 2600 7450 50  0000 C CNN
F 1 "CAT24C32" H 2000 7450 50  0000 C CNN
F 2 "Package_SOIC:SOIC-8_3.9x4.9mm_P1.27mm" H 2250 7100 50  0001 C CNN
F 3 "" H 2250 7100 50  0000 C CNN
	1    2250 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 8650 2300 8650
Wire Wire Line
	1400 8900 2300 8900
Wire Wire Line
	2300 8750 1400 8750
Wire Wire Line
	2300 9000 1400 9000
Wire Wire Line
	2300 9000 2300 8900
Connection ~ 2300 8900
Wire Wire Line
	2300 8750 2300 8650
Connection ~ 2300 8650
Wire Wire Line
	2650 8650 2850 8650
Wire Wire Line
	2850 8900 2650 8900
Connection ~ 2850 8650
Text Label 1400 8650 0    60   ~ 0
ID_SD_EEPROM_pu
Text Label 1400 8900 0    60   ~ 0
ID_SC_EEPROM_pu
Wire Wire Line
	3600 7300 2750 7300
Wire Wire Line
	2750 7200 3600 7200
Text Label 3600 7300 2    60   ~ 0
ID_SD_EEPROM_pu
Text Label 3600 7200 2    60   ~ 0
ID_SC_EEPROM_pu
Text Label 2550 6600 2    60   ~ 0
VCC
Wire Wire Line
	2250 6600 2550 6600
Wire Wire Line
	2250 6600 2250 6700
$Comp
L power:GND #PWR03
U 1 1 58E1A612
P 1200 7000
F 0 "#PWR03" H 1200 6750 50  0001 C CNN
F 1 "GND" H 1200 6850 50  0000 C CNN
F 2 "" H 1200 7000 50  0000 C CNN
F 3 "" H 1200 7000 50  0000 C CNN
	1    1200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6900 1450 7000
Wire Wire Line
	1200 6900 1450 6900
Wire Wire Line
	1750 7000 1450 7000
Connection ~ 1450 7000
Wire Wire Line
	1450 7100 1750 7100
$Comp
L power:GND #PWR04
U 1 1 58E1AF98
P 1200 7400
F 0 "#PWR04" H 1200 7150 50  0001 C CNN
F 1 "GND" H 1200 7250 50  0000 C CNN
F 2 "" H 1200 7400 50  0000 C CNN
F 3 "" H 1200 7400 50  0000 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
Text Notes 3400 6600 0    60   ~ 0
EEPROM WRITE ENABLE
Text Notes 1700 8300 0    118  ~ 24
Pullup Resistors
Text Notes 2150 6050 0    118  ~ 24
HAT EEPROM
Text Notes 1300 9550 0    118  ~ 24
Mounting Holes
Text Notes 1450 1600 0    118  ~ 24
40-Pin HAT Connector
Wire Wire Line
	2850 8900 2850 8650
Text Notes 1350 6450 0    60   ~ 0
The HAT spec requires this EEPROM with system information\nto be in place in order to be called a HAT. It should be set up as write\nprotected (WP pin held high), so it may be desirable to either put a \njumper as shown to enable writing, or to hook up a spare IO pin to do so.
Text Notes 1250 8500 0    60   ~ 0
These are just pullup resistors for the I2C bus on the EEPROM.\nThe resistor values are per the HAT spec.
Text Notes 850  1250 0    100  ~ 0
This is based on the official Raspberry Pi spec to be able to call an extension board a HAT.\nhttps://github.com/raspberrypi/hats/blob/master/designguide.md
$Comp
L power:GND #PWR05
U 1 1 58E3CC10
P 2250 7600
F 0 "#PWR05" H 2250 7350 50  0001 C CNN
F 1 "GND" H 2250 7450 50  0000 C CNN
F 2 "" H 2250 7600 50  0000 C CNN
F 3 "" H 2250 7600 50  0000 C CNN
	1    2250 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7500 2250 7600
Text Label 1950 7800 2    60   ~ 0
VCC
Wire Wire Line
	1950 7800 1700 7800
Wire Wire Line
	1700 7800 1700 7650
Wire Wire Line
	1600 7300 1700 7300
Wire Wire Line
	1700 7250 1700 7300
Wire Wire Line
	1200 6900 1200 7000
Connection ~ 1450 6900
Wire Wire Line
	1600 7300 1600 7350
Connection ~ 1700 7300
Wire Wire Line
	1100 7350 1200 7350
Wire Wire Line
	1200 7400 1200 7350
Connection ~ 1200 7350
Wire Wire Line
	1100 7250 1700 7250
Wire Wire Line
	2300 8900 2350 8900
Wire Wire Line
	2300 8650 2350 8650
Wire Wire Line
	2850 8650 3300 8650
Wire Wire Line
	1450 7000 1450 7100
Wire Wire Line
	1450 6900 1750 6900
Wire Wire Line
	1700 7300 1750 7300
Wire Wire Line
	1700 7300 1700 7350
Wire Wire Line
	1200 7350 1300 7350
$Comp
L Misc_RF:XL1278-SMT U0b1
U 1 1 603EF4D6
P 12350 3550
F 0 "U0b1" H 12350 4415 50  0000 C CNN
F 1 "XL1278-SMT" H 12350 4324 50  0000 C CNN
F 2 "Misc RF:XL1278-SMT" H 12350 4500 50  0001 C CNN
F 3 "" H 12350 4350 50  0001 C CNN
	1    12350 3550
	1    0    0    -1  
$EndComp
Text GLabel 11750 2950 0    50   Input ~ 0
GND
Text GLabel 11750 3850 0    50   BiDi ~ 0
0_DIO0
Text GLabel 12300 4250 3    50   Input ~ 0
0_DIO5
Text GLabel 11750 1650 0    50   BiDi ~ 0
0_DIO5
Text GLabel 11750 1150 0    50   BiDi ~ 0
0_DIO0
Text GLabel 11750 1850 0    50   Input ~ 0
GND
Text GLabel 11750 3350 0    50   Input ~ 0
VCC
Text GLabel 11750 3450 0    50   3State ~ 0
MISO
Text GLabel 11750 3550 0    50   Input ~ 0
MOSI
Text GLabel 11750 3650 0    50   Input ~ 0
SCK
Text GLabel 11750 3750 0    50   Input ~ 0
0_NSS
Text GLabel 11750 4050 0    50   Input ~ 0
GND
Text GLabel 11750 1750 0    50   Input ~ 0
VCC
Text GLabel 11750 2050 0    50   3State ~ 0
MISO
Text GLabel 11750 2150 0    50   Input ~ 0
MOSI
Text GLabel 11750 2250 0    50   Input ~ 0
0_NSS
NoConn ~ 11750 3050
NoConn ~ 11750 3150
NoConn ~ 11750 3250
NoConn ~ 12200 4250
NoConn ~ 11750 3950
NoConn ~ 11750 1550
NoConn ~ 11750 1450
NoConn ~ 11750 1350
NoConn ~ 11750 1250
NoConn ~ 11750 1050
Text GLabel 11750 1950 0    50   Input ~ 0
SCK
$Comp
L Device:R R1
U 1 1 603EF4F7
P 12850 7550
F 0 "R1" H 12920 7596 50  0000 L CNN
F 1 "330" H 12920 7505 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 12780 7550 50  0001 C CNN
F 3 "~" H 12850 7550 50  0001 C CNN
	1    12850 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 603EF4FD
P 12850 7850
F 0 "D1" V 12889 7732 50  0000 R CNN
F 1 "LED" V 12798 7732 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 12850 7850 50  0001 C CNN
F 3 "~" H 12850 7850 50  0001 C CNN
	1    12850 7850
	0    -1   -1   0   
$EndComp
Text GLabel 12850 7400 1    50   Input ~ 0
1_DATA_LED
$Comp
L power:GND #PWR0101
U 1 1 603EF504
P 12850 8000
F 0 "#PWR0101" H 12850 7750 50  0001 C CNN
F 1 "GND" H 12855 7827 50  0000 C CNN
F 2 "" H 12850 8000 50  0001 C CNN
F 3 "" H 12850 8000 50  0001 C CNN
	1    12850 8000
	1    0    0    -1  
$EndComp
Text GLabel 2300 5200 3    50   Input ~ 0
GND
NoConn ~ 2100 2400
NoConn ~ 2200 2400
NoConn ~ 2400 2400
Text GLabel 2650 2200 2    50   Output ~ 0
VCC
Wire Wire Line
	2500 2400 2500 2200
$Comp
L Connector:Conn_Coaxial J2
U 1 1 603EF520
P 15100 7100
F 0 "J2" H 15200 7075 50  0000 L CNN
F 1 "Conn_Coaxial" H 15200 6984 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-1153_EdgeMount_Horizontal" H 15100 7100 50  0001 C CNN
F 3 " ~" H 15100 7100 50  0001 C CNN
	1    15100 7100
	1    0    0    -1  
$EndComp
Text GLabel 3100 4200 2    50   Output ~ 0
SCK
Text GLabel 3100 4100 2    50   Output ~ 0
MOSI
Text GLabel 3100 4000 2    50   Input ~ 0
MISO
Text GLabel 3100 3500 2    50   Output ~ 0
0_DATA_LED
Text GLabel 3100 3600 2    50   Output ~ 0
LAN
Text GLabel 3100 4500 2    50   Output ~ 0
INTERNET
Text GLabel 1500 3700 0    50   Output ~ 0
1_DATA_LED
$Comp
L Device:R R2
U 1 1 603EF541
P 13200 7550
F 0 "R2" H 13270 7596 50  0000 L CNN
F 1 "330" H 13270 7505 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 13130 7550 50  0001 C CNN
F 3 "~" H 13200 7550 50  0001 C CNN
	1    13200 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 603EF547
P 13200 7850
F 0 "D2" V 13239 7732 50  0000 R CNN
F 1 "LED" V 13148 7732 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 13200 7850 50  0001 C CNN
F 3 "~" H 13200 7850 50  0001 C CNN
	1    13200 7850
	0    -1   -1   0   
$EndComp
Text GLabel 13200 7400 1    50   Input ~ 0
0_DATA_LED
$Comp
L power:GND #PWR0102
U 1 1 603EF54E
P 13200 8000
F 0 "#PWR0102" H 13200 7750 50  0001 C CNN
F 1 "GND" H 13205 7827 50  0000 C CNN
F 2 "" H 13200 8000 50  0001 C CNN
F 3 "" H 13200 8000 50  0001 C CNN
	1    13200 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 603EF554
P 13550 7550
F 0 "R3" H 13620 7596 50  0000 L CNN
F 1 "330" H 13620 7505 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 13480 7550 50  0001 C CNN
F 3 "~" H 13550 7550 50  0001 C CNN
	1    13550 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 603EF55A
P 13550 7850
F 0 "D3" V 13589 7732 50  0000 R CNN
F 1 "LED" V 13498 7732 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 13550 7850 50  0001 C CNN
F 3 "~" H 13550 7850 50  0001 C CNN
	1    13550 7850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 603EF560
P 13550 8000
F 0 "#PWR0103" H 13550 7750 50  0001 C CNN
F 1 "GND" H 13555 7827 50  0000 C CNN
F 2 "" H 13550 8000 50  0001 C CNN
F 3 "" H 13550 8000 50  0001 C CNN
	1    13550 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 603EF584
P 13900 8000
F 0 "#PWR0105" H 13900 7750 50  0001 C CNN
F 1 "GND" H 13905 7827 50  0000 C CNN
F 2 "" H 13900 8000 50  0001 C CNN
F 3 "" H 13900 8000 50  0001 C CNN
	1    13900 8000
	1    0    0    -1  
$EndComp
Text GLabel 13550 7400 1    50   Input ~ 0
INTERNET
Text GLabel 13900 7400 1    50   Input ~ 0
LAN
Text GLabel 14250 2950 0    50   Input ~ 0
GND
Text GLabel 14250 3850 0    50   BiDi ~ 0
1_DIO0
Text GLabel 14800 4250 3    50   Input ~ 0
1_DIO5
Text GLabel 14250 1650 0    50   BiDi ~ 0
1_DIO5
Text GLabel 14250 1150 0    50   BiDi ~ 0
1_DIO0
Text GLabel 14250 1850 0    50   Input ~ 0
GND
Text GLabel 14250 3350 0    50   Input ~ 0
VCC
Text GLabel 14250 3450 0    50   3State ~ 0
MISO
Text GLabel 14250 3550 0    50   Input ~ 0
MOSI
Text GLabel 14250 3650 0    50   Input ~ 0
SCK
Text GLabel 14250 3750 0    50   Input ~ 0
1_NSS
Text GLabel 14250 4050 0    50   Input ~ 0
GND
Text GLabel 14250 1750 0    50   Input ~ 0
VCC
Text GLabel 14250 2050 0    50   3State ~ 0
MISO
Text GLabel 14250 2150 0    50   Input ~ 0
MOSI
Text GLabel 14250 2250 0    50   Input ~ 0
1_NSS
NoConn ~ 14250 3050
NoConn ~ 14250 3150
NoConn ~ 14250 3250
NoConn ~ 14700 4250
NoConn ~ 14250 3950
NoConn ~ 14250 1550
NoConn ~ 14250 1450
NoConn ~ 14250 1350
NoConn ~ 14250 1250
NoConn ~ 14250 1050
Text GLabel 14250 1950 0    50   Input ~ 0
SCK
Text GLabel 1500 3100 0    50   Input ~ 0
1_DIO0
Text GLabel 1500 3300 0    50   Input ~ 0
0_DIO5
Text GLabel 3100 3900 2    50   Output ~ 0
0_NSS
Text GLabel 3100 3800 2    50   Output ~ 0
1_NSS
Text GLabel 3100 4400 2    50   Input ~ 0
1_DIO5
Text GLabel 1500 4200 0    50   Input ~ 0
0_DIO0
$Comp
L RF_Module:RFM95W-868S2 U0c1
U 1 1 604135E1
P 12400 5650
F 0 "U0c1" H 12400 6500 50  0000 C CNN
F 1 "RFM9xW-xxxS2" H 12400 6400 50  0000 C CNN
F 2 "RF_Modules:Hopref_RFM9XW_SMD" H 9100 7300 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 9100 7300 50  0001 C CNN
	1    12400 5650
	1    0    0    -1  
$EndComp
Text GLabel 12400 6350 3    50   Input ~ 0
GND
Wire Wire Line
	12300 6250 12400 6250
Connection ~ 12400 6250
Wire Wire Line
	12400 6250 12500 6250
Wire Wire Line
	12400 6250 12400 6350
Text GLabel 12400 5150 1    50   Input ~ 0
VCC
Text GLabel 11900 5350 0    50   Input ~ 0
SCK
Text GLabel 11900 5450 0    50   Input ~ 0
MOSI
Text GLabel 11900 5550 0    50   3State ~ 0
MISO
Text GLabel 11900 5650 0    50   Input ~ 0
0_NSS
Text GLabel 14900 7100 0    50   UnSpc ~ 0
0_ANT
$Comp
L Misc_RF:DRF1278F U0a1
U 1 1 603EF526
P 12350 1650
F 0 "U0a1" H 12400 2515 50  0000 C CNN
F 1 "DRF1278F" H 12400 2424 50  0000 C CNN
F 2 "Misc RF:DRF1278F" H 12350 2600 50  0001 C CNN
F 3 "" H 12350 2450 50  0001 C CNN
	1    12350 1650
	1    0    0    -1  
$EndComp
Text GLabel 12950 1150 2    50   Input ~ 0
GND
Text GLabel 12950 1050 2    50   UnSpc ~ 0
0_ANT
Text GLabel 12950 2950 2    50   UnSpc ~ 0
0_ANT
Text GLabel 12950 3050 2    50   Input ~ 0
GND
Text GLabel 12900 5350 2    50   UnSpc ~ 0
0_ANT
Text GLabel 12900 5550 2    50   BiDi ~ 0
0_DIO5
Text GLabel 12900 6050 2    50   BiDi ~ 0
0_DIO0
$Comp
L RF_Module:RFM95W-868S2 U1c1
U 1 1 60422E36
P 14700 5650
F 0 "U1c1" H 14700 6500 50  0000 C CNN
F 1 "RFM9xW-xxxS2" H 14700 6400 50  0000 C CNN
F 2 "RF_Modules:Hopref_RFM9XW_SMD" H 11400 7300 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 11400 7300 50  0001 C CNN
	1    14700 5650
	1    0    0    -1  
$EndComp
Text GLabel 14700 6350 3    50   Input ~ 0
GND
Wire Wire Line
	14600 6250 14700 6250
Connection ~ 14700 6250
Wire Wire Line
	14700 6250 14800 6250
Wire Wire Line
	14700 6250 14700 6350
Text GLabel 14700 5150 1    50   Input ~ 0
VCC
Text GLabel 14200 5350 0    50   Input ~ 0
SCK
Text GLabel 14200 5450 0    50   Input ~ 0
MOSI
Text GLabel 14200 5550 0    50   3State ~ 0
MISO
Text GLabel 14200 5650 0    50   Input ~ 0
1_NSS
Text GLabel 15200 5350 2    50   UnSpc ~ 0
1_ANT
Text GLabel 15200 5550 2    50   BiDi ~ 0
1_DIO5
Text GLabel 15200 6050 2    50   BiDi ~ 0
1_DIO0
Text GLabel 15100 7300 3    50   Input ~ 0
GND
$Comp
L Misc_RF:XL1278-SMT U1b1
U 1 1 603C221D
P 14850 3550
F 0 "U1b1" H 14850 4415 50  0000 C CNN
F 1 "XL1278-SMT" H 14850 4324 50  0000 C CNN
F 2 "Misc RF:XL1278-SMT" H 14850 4500 50  0001 C CNN
F 3 "" H 14850 4350 50  0001 C CNN
	1    14850 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 6042A417
P 15100 7750
F 0 "J3" H 15200 7725 50  0000 L CNN
F 1 "Conn_Coaxial" H 15200 7634 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-1153_EdgeMount_Horizontal" H 15100 7750 50  0001 C CNN
F 3 " ~" H 15100 7750 50  0001 C CNN
	1    15100 7750
	1    0    0    -1  
$EndComp
Text GLabel 14900 7750 0    50   UnSpc ~ 0
1_ANT
Text GLabel 15100 7950 3    50   Input ~ 0
GND
$Comp
L Misc_RF:DRF1278F U1a1
U 1 1 603C2244
P 14850 1650
F 0 "U1a1" H 14900 2515 50  0000 C CNN
F 1 "DRF1278F" H 14900 2424 50  0000 C CNN
F 2 "Misc RF:DRF1278F" H 14850 2600 50  0001 C CNN
F 3 "" H 14850 2450 50  0001 C CNN
	1    14850 1650
	1    0    0    -1  
$EndComp
Text GLabel 15450 1050 2    50   UnSpc ~ 0
1_ANT
Text GLabel 15450 2950 2    50   UnSpc ~ 0
1_ANT
Text GLabel 15450 1150 2    50   Input ~ 0
GND
Text GLabel 15450 3050 2    50   Input ~ 0
GND
NoConn ~ 3100 3100
NoConn ~ 3100 3200
NoConn ~ 3100 3400
NoConn ~ 1500 3900
NoConn ~ 1500 4000
NoConn ~ 1500 4100
NoConn ~ 1500 4300
NoConn ~ 1500 4400
NoConn ~ 1500 3200
NoConn ~ 1500 3500
NoConn ~ 1500 3600
NoConn ~ 1500 2800
NoConn ~ 1500 2900
NoConn ~ 14200 5850
NoConn ~ 15200 5850
NoConn ~ 15200 5750
NoConn ~ 15200 5650
NoConn ~ 15200 5950
NoConn ~ 12900 5650
NoConn ~ 12900 5750
NoConn ~ 12900 5850
NoConn ~ 12900 5950
NoConn ~ 11900 5850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 604912B0
P 2500 2200
F 0 "#FLG0101" H 2500 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 2373 50  0000 C CNN
F 2 "" H 2500 2200 50  0001 C CNN
F 3 "~" H 2500 2200 50  0001 C CNN
	1    2500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2200 2650 2200
Connection ~ 2500 2200
Text Label 1400 9000 0    60   ~ 0
ID_SC_EEPROM
Text Label 1400 8750 0    60   ~ 0
ID_SD_EEPROM
Text Label 3700 2900 2    50   ~ 0
ID_SC_EEPROM
Text Label 3700 2800 2    50   ~ 0
ID_SD_EEPROM
Wire Wire Line
	3100 2900 3700 2900
Wire Wire Line
	3100 2800 3700 2800
$Comp
L Device:LED D4
U 1 1 603EF56C
P 13900 7850
F 0 "D4" V 13939 7732 50  0000 R CNN
F 1 "LED" V 13848 7732 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 13900 7850 50  0001 C CNN
F 3 "~" H 13900 7850 50  0001 C CNN
	1    13900 7850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 603EF566
P 13900 7550
F 0 "R4" H 13970 7596 50  0000 L CNN
F 1 "330" H 13970 7505 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 13830 7550 50  0001 C CNN
F 3 "~" H 13900 7550 50  0001 C CNN
	1    13900 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5000 2600 5100
Wire Wire Line
	2600 5100 2300 5100
Wire Wire Line
	2300 5100 2300 5000
$Comp
L Connector:Raspberry_Pi_2_3 J0
U 1 1 603EF4D0
P 2300 3700
F 0 "J0" H 2300 5181 50  0000 C CNN
F 1 "Raspberry_Pi_2_3_40HAT" H 2300 5090 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2300 3700 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2300 3700 50  0001 C CNN
	1    2300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5000 2000 5100
Wire Wire Line
	2000 5100 2300 5100
Connection ~ 2300 5100
Wire Wire Line
	2300 5200 2300 5100
NoConn ~ 1900 5000
NoConn ~ 2100 5000
NoConn ~ 2200 5000
NoConn ~ 2400 5000
NoConn ~ 2500 5000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 605E4E5B
P 2600 5100
F 0 "#FLG0102" H 2600 5175 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 5273 50  0000 C CNN
F 2 "" H 2600 5100 50  0001 C CNN
F 3 "~" H 2600 5100 50  0001 C CNN
	1    2600 5100
	-1   0    0    1   
$EndComp
Connection ~ 2600 5100
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 58E18D32
P 900 7350
F 0 "J1" H 900 7500 50  0000 C CNN
F 1 "CONN_01X02" V 1000 7350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 900 7350 50  0001 C CNN
F 3 "" H 900 7350 50  0000 C CNN
	1    900  7350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 58E22900
P 1450 7350
F 0 "R8" V 1530 7350 50  0000 C CNN
F 1 "DNP" V 1450 7350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1380 7350 50  0001 C CNN
F 3 "" H 1450 7350 50  0001 C CNN
	1    1450 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 58E17720
P 2500 8900
F 0 "R6" V 2580 8900 50  0000 C CNN
F 1 "3.9K" V 2500 8900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2430 8900 50  0001 C CNN
F 3 "" H 2500 8900 50  0001 C CNN
	1    2500 8900
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 58E17715
P 2500 8650
F 0 "R5" V 2580 8650 50  0000 C CNN
F 1 "3.9K" V 2500 8650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2430 8650 50  0001 C CNN
F 3 "" H 2500 8650 50  0001 C CNN
	1    2500 8650
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 58E19E51
P 1700 7500
F 0 "R7" V 1780 7500 50  0000 C CNN
F 1 "10K" V 1700 7500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1630 7500 50  0001 C CNN
F 3 "" H 1700 7500 50  0001 C CNN
	1    1700 7500
	-1   0    0    1   
$EndComp
$EndSCHEMATC
