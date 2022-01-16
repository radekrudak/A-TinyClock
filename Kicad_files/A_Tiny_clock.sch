EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "A Tiny Clock"
Date "2022-01-15"
Rev "1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED D1
U 1 1 61E1AC0B
P 1200 1950
F 0 "D1" V 1239 1832 50  0000 R CNN
F 1 "LED" V 1148 1832 50  0000 R CNN
F 2 "" H 1200 1950 50  0001 C CNN
F 3 "~" H 1200 1950 50  0001 C CNN
	1    1200 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 61E1BEA3
P 1200 1650
F 0 "R1" H 1270 1696 50  0000 L CNN
F 1 "10K" H 1270 1605 50  0000 L CNN
F 2 "" V 1130 1650 50  0001 C CNN
F 3 "~" H 1200 1650 50  0001 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 61E1CC62
P 1200 1350
F 0 "#PWR0101" H 1200 1200 50  0001 C CNN
F 1 "VCC" H 1215 1523 50  0000 C CNN
F 2 "" H 1200 1350 50  0001 C CNN
F 3 "" H 1200 1350 50  0001 C CNN
	1    1200 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61E1D53C
P 1200 2150
F 0 "#PWR0102" H 1200 1900 50  0001 C CNN
F 1 "GND" H 1205 1977 50  0000 C CNN
F 2 "" H 1200 2150 50  0001 C CNN
F 3 "" H 1200 2150 50  0001 C CNN
	1    1200 2150
	1    0    0    -1  
$EndComp
Text GLabel 1600 2100 2    50   Input ~ 0
Clock_GND
Text GLabel 2950 2200 0    50   Input ~ 0
Clock_Output
Wire Wire Line
	1600 2100 1200 2100
Text Notes 700  1100 0    50   ~ 0
So i used clock circuitry from broken analog battery powered clock (i will rever to this small circuit board as "clock module")and hacked \nit in with this circuit. It powers it with ~1.7 V and converts outputed by clock module 1.7 V\n pulses into 0 volt impulsed pulled up to VCC (5V)\nWARNNING ! :\nClock_VCC, Clock_GND and Clock_Output are connected to conector that is representing clock module, \nbut in my clock i soldered wires to clock module and them i soldered those wires directly to the board
Wire Wire Line
	1200 1350 1200 1450
Connection ~ 1200 1450
Wire Wire Line
	1200 1450 1200 1500
Wire Wire Line
	2050 1800 2050 1750
Wire Wire Line
	2050 1800 1200 1800
Connection ~ 1200 1800
Wire Wire Line
	1200 1450 1850 1450
$Comp
L power:VCC #PWR0103
U 1 1 61E234DC
P 3550 1650
F 0 "#PWR0103" H 3550 1500 50  0001 C CNN
F 1 "VCC" H 3565 1823 50  0000 C CNN
F 2 "" H 3550 1650 50  0001 C CNN
F 3 "" H 3550 1650 50  0001 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61E237EC
P 3550 1850
F 0 "R10" H 3620 1896 50  0000 L CNN
F 1 "10K" H 3620 1805 50  0000 L CNN
F 2 "" V 3480 1850 50  0001 C CNN
F 3 "~" H 3550 1850 50  0001 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61E24816
P 3100 2200
F 0 "R8" V 2893 2200 50  0000 C CNN
F 1 "1K" V 2984 2200 50  0000 C CNN
F 2 "" V 3030 2200 50  0001 C CNN
F 3 "~" H 3100 2200 50  0001 C CNN
	1    3100 2200
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_CBE Q2
U 1 1 61E2527E
P 3450 2200
F 0 "Q2" H 3641 2246 50  0000 L CNN
F 1 "Q_NPN_CBE" H 3641 2155 50  0000 L CNN
F 2 "" H 3650 2300 50  0001 C CNN
F 3 "~" H 3450 2200 50  0001 C CNN
	1    3450 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61E2A127
P 3550 2400
F 0 "#PWR0104" H 3550 2150 50  0001 C CNN
F 1 "GND" H 3555 2227 50  0000 C CNN
F 2 "" H 3550 2400 50  0001 C CNN
F 3 "" H 3550 2400 50  0001 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q1
U 1 1 61E269E3
P 2050 1550
F 0 "Q1" V 2378 1550 50  0000 C CNN
F 1 "Q_NPN_CBE" V 2287 1550 50  0000 C CNN
F 2 "" H 2250 1650 50  0001 C CNN
F 3 "~" H 2050 1550 50  0001 C CNN
	1    2050 1550
	0    -1   -1   0   
$EndComp
Text GLabel 2250 1450 2    50   Input ~ 0
Clock_VCC
Text GLabel 3700 2000 2    50   Input ~ 0
CLOCK_INTERUPT_PIN
Wire Wire Line
	3700 2000 3550 2000
Connection ~ 3550 2000
Text GLabel 6600 3350 2    50   Input ~ 0
CLOCK_INTERUPT_PIN
$Comp
L power:VCC #PWR0105
U 1 1 61E2F058
P 5550 2900
F 0 "#PWR0105" H 5550 2750 50  0001 C CNN
F 1 "VCC" H 5565 3073 50  0000 C CNN
F 2 "" H 5550 2900 50  0001 C CNN
F 3 "" H 5550 2900 50  0001 C CNN
	1    5550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61E2EB57
P 5550 4200
F 0 "#PWR0106" H 5550 3950 50  0001 C CNN
F 1 "GND" H 5555 4027 50  0000 C CNN
F 2 "" H 5550 4200 50  0001 C CNN
F 3 "" H 5550 4200 50  0001 C CNN
	1    5550 4200
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny13A-PU U1
U 1 1 61E1A98B
P 5550 3550
F 0 "U1" H 5021 3596 50  0000 R CNN
F 1 "ATtiny13A-PU" H 5021 3505 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5550 3550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 5550 3550 50  0001 C CNN
	1    5550 3550
	1    0    0    -1  
$EndComp
Wire Notes Line
	7050 600  600  600 
Wire Notes Line
	600  600  600  2650
Wire Notes Line
	600  2650 7050 2650
Wire Notes Line
	7050 600  7050 2650
$Comp
L Device:R R2
U 1 1 61E3775A
P 1500 6850
F 0 "R2" V 1293 6850 50  0000 C CNN
F 1 "10K" V 1384 6850 50  0000 C CNN
F 2 "" V 1430 6850 50  0001 C CNN
F 3 "~" H 1500 6850 50  0001 C CNN
	1    1500 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61E38786
P 1800 6850
F 0 "R3" V 1593 6850 50  0000 C CNN
F 1 "10K" V 1684 6850 50  0000 C CNN
F 2 "" V 1730 6850 50  0001 C CNN
F 3 "~" H 1800 6850 50  0001 C CNN
	1    1800 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 61E38A5C
P 2100 6850
F 0 "R4" V 1893 6850 50  0000 C CNN
F 1 "10K" V 1984 6850 50  0000 C CNN
F 2 "" V 2030 6850 50  0001 C CNN
F 3 "~" H 2100 6850 50  0001 C CNN
	1    2100 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 61E38C2F
P 2400 6850
F 0 "R5" V 2193 6850 50  0000 C CNN
F 1 "10K" V 2284 6850 50  0000 C CNN
F 2 "" V 2330 6850 50  0001 C CNN
F 3 "~" H 2400 6850 50  0001 C CNN
	1    2400 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61E38E05
P 2700 6850
F 0 "R6" V 2493 6850 50  0000 C CNN
F 1 "10K" V 2584 6850 50  0000 C CNN
F 2 "" V 2630 6850 50  0001 C CNN
F 3 "~" H 2700 6850 50  0001 C CNN
	1    2700 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 61E3903D
P 3000 6850
F 0 "R7" V 2793 6850 50  0000 C CNN
F 1 "10K" V 2884 6850 50  0000 C CNN
F 2 "" V 2930 6850 50  0001 C CNN
F 3 "~" H 3000 6850 50  0001 C CNN
	1    3000 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61E39313
P 3300 6850
F 0 "R9" V 3093 6850 50  0000 C CNN
F 1 "10K" V 3184 6850 50  0000 C CNN
F 2 "" V 3230 6850 50  0001 C CNN
F 3 "~" H 3300 6850 50  0001 C CNN
	1    3300 6850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 61E394FA
P 1350 6850
F 0 "#PWR0107" H 1350 6700 50  0001 C CNN
F 1 "VCC" V 1365 6977 50  0000 L CNN
F 2 "" H 1350 6850 50  0001 C CNN
F 3 "" H 1350 6850 50  0001 C CNN
	1    1350 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61E39A16
P 3500 6850
F 0 "#PWR0108" H 3500 6600 50  0001 C CNN
F 1 "GND" V 3505 6722 50  0000 R CNN
F 2 "" H 3500 6850 50  0001 C CNN
F 3 "" H 3500 6850 50  0001 C CNN
	1    3500 6850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW5
U 1 1 61E41F64
P 3500 5950
F 0 "SW5" V 3500 6198 50  0000 L CNN
F 1 "SW_MEC_5E" V 3545 6198 50  0001 L CNN
F 2 "" H 3500 6250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 3500 6250 50  0001 C CNN
	1    3500 5950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW4
U 1 1 61E42917
P 3100 6350
F 0 "SW4" V 3100 6598 50  0000 L CNN
F 1 "SW_MEC_5E" V 3145 6598 50  0001 L CNN
F 2 "" H 3100 6650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 3100 6650 50  0001 C CNN
	1    3100 6350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW3
U 1 1 61E42DF5
P 2850 5950
F 0 "SW3" V 2850 6198 50  0000 L CNN
F 1 "SW_MEC_5E" V 2895 6198 50  0001 L CNN
F 2 "" H 2850 6250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 2850 6250 50  0001 C CNN
	1    2850 5950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW2
U 1 1 61E4318B
P 2500 6350
F 0 "SW2" V 2500 6598 50  0000 L CNN
F 1 "SW_MEC_5E" V 2545 6598 50  0001 L CNN
F 2 "" H 2500 6650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 2500 6650 50  0001 C CNN
	1    2500 6350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 61E435F0
P 2200 5950
F 0 "SW1" V 2200 6198 50  0000 L CNN
F 1 "SW_MEC_5E" V 2245 6198 50  0001 L CNN
F 2 "" H 2200 6250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 2200 6250 50  0001 C CNN
	1    2200 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 6850 3450 6550
Wire Wire Line
	3450 6550 3600 6550
Wire Wire Line
	3150 6850 3150 6550
Connection ~ 3150 6850
Wire Wire Line
	2850 6850 2850 6150
Connection ~ 2850 6850
Wire Wire Line
	2550 6850 2550 6550
Connection ~ 2550 6850
Wire Wire Line
	2250 6850 2250 6150
Connection ~ 2250 6850
Wire Wire Line
	2200 5750 2300 5750
Wire Wire Line
	2600 5750 2600 6150
Connection ~ 2300 5750
Wire Wire Line
	2300 5750 2600 5750
Wire Wire Line
	2600 5750 2850 5750
Connection ~ 2600 5750
Connection ~ 2850 5750
Wire Wire Line
	2850 5750 2950 5750
Wire Wire Line
	3200 6150 3200 5750
Wire Wire Line
	3200 5750 2950 5750
Connection ~ 2950 5750
Wire Wire Line
	3600 6150 3600 6550
Wire Wire Line
	3200 5750 3500 5750
Connection ~ 3200 5750
Connection ~ 3500 5750
Wire Wire Line
	3500 5750 3600 5750
Text GLabel 3600 5750 2    50   Input ~ 0
ANALOG_BUTTON
Text GLabel 6450 3450 2    50   Input ~ 0
ANALOG_BUTTON
Text GLabel 6150 3250 2    50   Input ~ 0
DATA_PIN
Text GLabel 6150 3550 2    50   Input ~ 0
LATCH_PIN
Text GLabel 6150 3650 2    50   Input ~ 0
CLOCK_PIN
Text GLabel 8000 5850 0    50   Input ~ 0
DATA_PIN
Text GLabel 8000 5350 0    50   Input ~ 0
LATCH_PIN
Text GLabel 8000 5650 0    50   Input ~ 0
CLOCK_PIN
$Comp
L power:GND #PWR0109
U 1 1 61E6C671
P 7950 5250
F 0 "#PWR0109" H 7950 5000 50  0001 C CNN
F 1 "GND" V 7955 5122 50  0000 R CNN
F 2 "" H 7950 5250 50  0001 C CNN
F 3 "" H 7950 5250 50  0001 C CNN
	1    7950 5250
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 61E6E48E
P 8000 5550
F 0 "#PWR0112" H 8000 5400 50  0001 C CNN
F 1 "VCC" V 8015 5677 50  0000 L CNN
F 2 "" H 8000 5550 50  0001 C CNN
F 3 "" H 8000 5550 50  0001 C CNN
	1    8000 5550
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 61E6EEBC
P 8000 3700
F 0 "#PWR0113" H 8000 3550 50  0001 C CNN
F 1 "VCC" V 8015 3827 50  0000 L CNN
F 2 "" H 8000 3700 50  0001 C CNN
F 3 "" H 8000 3700 50  0001 C CNN
	1    8000 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61E6F5C0
P 8000 3400
F 0 "#PWR0114" H 8000 3150 50  0001 C CNN
F 1 "GND" V 8005 3272 50  0000 R CNN
F 2 "" H 8000 3400 50  0001 C CNN
F 3 "" H 8000 3400 50  0001 C CNN
	1    8000 3400
	0    1    1    0   
$EndComp
Text GLabel 8000 3500 0    50   Input ~ 0
LATCH_PIN
Text GLabel 8000 3800 0    50   Input ~ 0
CLOCK_PIN
Text GLabel 8800 4000 2    50   Input ~ 0
Digit_7
Text GLabel 8800 3900 2    50   Input ~ 0
Digit_6
Text GLabel 8800 3700 2    50   Input ~ 0
Digit_4
Text GLabel 8800 3600 2    50   Input ~ 0
Digit_3
Text GLabel 8800 3800 2    50   Input ~ 0
Dots
Wire Notes Line
	4800 5250 500  5250
Wire Notes Line
	500  5250 500  7450
Wire Notes Line
	500  7450 4800 7450
Wire Notes Line
	4800 5250 4800 7450
Text Notes 2250 5550 2    157  ~ 31
Button array
Text Notes 7000 1450 2    157  ~ 31
Clock signal circuitry
Text Notes 9450 1150 2    157  ~ 31
7 segment display \n& it's driver
Wire Wire Line
	6600 3350 6150 3350
Wire Wire Line
	6450 3450 6150 3450
Wire Notes Line
	11000 6500 11000 550 
Wire Wire Line
	8850 5150 8800 5150
Wire Wire Line
	8850 5350 8800 5350
Wire Wire Line
	8850 5450 8800 5450
Wire Wire Line
	8850 5550 8800 5550
Wire Wire Line
	8850 5650 8800 5650
Wire Wire Line
	8850 5750 8800 5750
Wire Wire Line
	8850 5850 8800 5850
NoConn ~ 8800 3500
NoConn ~ 8800 3400
NoConn ~ 8800 3300
NoConn ~ 8800 3100
NoConn ~ 6150 3750
Wire Wire Line
	3150 6550 3200 6550
Wire Wire Line
	2550 6550 2600 6550
Wire Wire Line
	2250 6150 2300 6150
NoConn ~ 3500 6150
NoConn ~ 3100 6150
NoConn ~ 3100 6550
NoConn ~ 2950 6150
NoConn ~ 2500 6150
NoConn ~ 2500 6550
Entry Wire Line
	9150 5850 9250 5950
Entry Wire Line
	9150 5750 9250 5850
Entry Wire Line
	9150 5650 9250 5750
Entry Wire Line
	9150 5350 9250 5450
Entry Wire Line
	9150 5450 9250 5550
Entry Wire Line
	9150 5550 9250 5650
Text Label 9150 5850 0    50   ~ 0
Dis_A
Text Label 9150 5750 0    50   ~ 0
Dis_B
Text Label 9150 5650 0    50   ~ 0
Dis_C
Text Label 9150 5550 0    50   ~ 0
Dis_D
Text Label 9150 5450 0    50   ~ 0
Dis_E
Text Label 9150 5350 0    50   ~ 0
Dis_F
NoConn ~ 8850 5150
Entry Wire Line
	9150 5250 9250 5350
Wire Wire Line
	8850 5250 8800 5250
Text Label 9150 5250 0    50   ~ 0
Dis_G
Wire Wire Line
	1200 2100 1200 2150
Connection ~ 1200 2100
NoConn ~ 2200 6150
Wire Wire Line
	3500 6850 3450 6850
Connection ~ 3450 6850
Wire Wire Line
	8000 5250 7950 5250
Wire Wire Line
	3550 1650 3550 1700
Wire Wire Line
	5550 2900 5550 2950
$Comp
L power:GND #PWR0115
U 1 1 61EF67DF
P 8750 2750
F 0 "#PWR0115" H 8750 2500 50  0001 C CNN
F 1 "GND" H 8755 2577 50  0000 C CNN
F 2 "" H 8750 2750 50  0001 C CNN
F 3 "" H 8750 2750 50  0001 C CNN
	1    8750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2750 8400 2900
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 6224BC17
P 5700 2000
F 0 "J1" H 5672 1932 50  0000 R CNN
F 1 "Conn_01x03_Male" H 5672 2023 50  0000 R CNN
F 2 "" H 5700 2000 50  0001 C CNN
F 3 "~" H 5700 2000 50  0001 C CNN
	1    5700 2000
	-1   0    0    1   
$EndComp
Text GLabel 5500 1900 0    50   Input ~ 0
Clock_VCC
Text GLabel 5500 2100 0    50   Input ~ 0
Clock_GND
Text GLabel 5500 2000 0    50   Input ~ 0
Clock_Output
Wire Wire Line
	5550 4200 5550 4150
$Comp
L Connector:USB_B J2
U 1 1 6226EF95
P 2750 3800
F 0 "J2" H 2807 4267 50  0000 C CNN
F 1 "USB_B" H 2807 4176 50  0000 C CNN
F 2 "" H 2900 3750 50  0001 C CNN
F 3 " ~" H 2900 3750 50  0001 C CNN
	1    2750 3800
	1    0    0    -1  
$EndComp
NoConn ~ 3050 3800
NoConn ~ 3050 3900
NoConn ~ 2650 4200
$Comp
L power:GND #PWR0117
U 1 1 622821E8
P 2750 4200
F 0 "#PWR0117" H 2750 3950 50  0001 C CNN
F 1 "GND" H 2755 4027 50  0000 C CNN
F 2 "" H 2750 4200 50  0001 C CNN
F 3 "" H 2750 4200 50  0001 C CNN
	1    2750 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0118
U 1 1 62282B47
P 3050 3600
F 0 "#PWR0118" H 3050 3450 50  0001 C CNN
F 1 "VCC" H 3065 3773 50  0000 C CNN
F 2 "" H 3050 3600 50  0001 C CNN
F 3 "" H 3050 3600 50  0001 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
Text Notes 700  3200 0    50   ~ 0
I soldered wire (with male USB A plug on the other side of wire) directly to board.  \nHere on shcematic i power input is represented by USB B conector but it can be any 5V power supply. 
Wire Notes Line
	650  4400 4400 4400
Wire Notes Line
	4400 4400 4400 3250
Wire Notes Line
	4400 3250 4800 3250
Wire Notes Line
	4800 3250 4800 3000
Wire Notes Line
	4800 3000 650  3000
Wire Notes Line
	650  3000 650  4400
Wire Notes Line
	7100 550  7100 3200
Wire Notes Line
	7100 3200 7500 3200
Wire Notes Line
	7500 3200 7500 3650
Wire Notes Line
	7500 3650 7100 3650
$Comp
L power:GND #PWR0116
U 1 1 61EF6FD2
P 8950 4750
F 0 "#PWR0116" H 8950 4500 50  0001 C CNN
F 1 "GND" H 8955 4577 50  0000 C CNN
F 2 "" H 8950 4750 50  0001 C CNN
F 3 "" H 8950 4750 50  0001 C CNN
	1    8950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4750 8400 4750
$Comp
L power:VCC #PWR0110
U 1 1 61E6D320
P 8650 6200
F 0 "#PWR0110" H 8650 6050 50  0001 C CNN
F 1 "VCC" H 8665 6373 50  0000 C CNN
F 2 "" H 8650 6200 50  0001 C CNN
F 3 "" H 8650 6200 50  0001 C CNN
	1    8650 6200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 61E666FC
P 8400 5450
F 0 "U3" H 8400 4569 50  0000 C CNN
F 1 "74HC595" H 8400 4660 50  0000 C CNN
F 2 "" H 8400 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8400 5450 50  0001 C CNN
	1    8400 5450
	1    0    0    1   
$EndComp
Wire Wire Line
	8650 6200 8400 6200
Wire Wire Line
	8400 6200 8400 6050
$Comp
L power:VCC #PWR0111
U 1 1 61E6D739
P 8650 4350
F 0 "#PWR0111" H 8650 4200 50  0001 C CNN
F 1 "VCC" H 8665 4523 50  0000 C CNN
F 2 "" H 8650 4350 50  0001 C CNN
F 3 "" H 8650 4350 50  0001 C CNN
	1    8650 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 61E61E05
P 8400 3600
F 0 "U2" H 8400 2719 50  0000 C CNN
F 1 "74HC595" H 8400 2810 50  0000 C CNN
F 2 "" H 8400 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8400 3600 50  0001 C CNN
	1    8400 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	8650 4350 8400 4350
Wire Wire Line
	8400 4350 8400 4200
Wire Wire Line
	8800 4950 8800 4500
Wire Wire Line
	8800 4500 8000 4500
Wire Wire Line
	8000 4000 8000 4500
$Comp
L Device:R R?
U 1 1 61F1F6F1
P 9000 5250
F 0 "R?" V 8793 5250 50  0000 C CNN
F 1 "1K" V 8884 5250 50  0000 C CNN
F 2 "" V 8930 5250 50  0001 C CNN
F 3 "~" H 9000 5250 50  0001 C CNN
	1    9000 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61F21CD7
P 9000 5350
F 0 "R?" V 8793 5350 50  0001 C CNN
F 1 "1K" V 8884 5350 50  0001 C CNN
F 2 "" V 8930 5350 50  0001 C CNN
F 3 "~" H 9000 5350 50  0001 C CNN
	1    9000 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61F39C6C
P 9000 5450
F 0 "R?" V 8793 5450 50  0001 C CNN
F 1 "1K" V 8884 5450 50  0001 C CNN
F 2 "" V 8930 5450 50  0001 C CNN
F 3 "~" H 9000 5450 50  0001 C CNN
	1    9000 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61F4202A
P 9000 5550
F 0 "R?" V 8793 5550 50  0001 C CNN
F 1 "1K" V 8884 5550 50  0001 C CNN
F 2 "" V 8930 5550 50  0001 C CNN
F 3 "~" H 9000 5550 50  0001 C CNN
	1    9000 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61F4A665
P 9000 5650
F 0 "R?" V 8793 5650 50  0001 C CNN
F 1 "1K" V 8884 5650 50  0001 C CNN
F 2 "" V 8930 5650 50  0001 C CNN
F 3 "~" H 9000 5650 50  0001 C CNN
	1    9000 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61F4E8FD
P 9000 5750
F 0 "R?" V 8793 5750 50  0001 C CNN
F 1 "1K" V 8884 5750 50  0001 C CNN
F 2 "" V 8930 5750 50  0001 C CNN
F 3 "~" H 9000 5750 50  0001 C CNN
	1    9000 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61F52B79
P 9000 5850
F 0 "R?" V 8793 5850 50  0001 C CNN
F 1 "1K" V 8884 5850 50  0001 C CNN
F 2 "" V 8930 5850 50  0001 C CNN
F 3 "~" H 9000 5850 50  0001 C CNN
	1    9000 5850
	0    1    1    0   
$EndComp
Text Notes 9450 5950 1    50   ~ 0
All of those resistors are 1K\n
Wire Bus Line
	9250 6150 9950 6150
Text Label 10050 3400 0    50   ~ 0
Dis_B
Text Label 10050 3600 0    50   ~ 0
Dis_A
Text Label 10050 1850 0    50   ~ 0
Dis_A
Text Label 10050 1750 0    50   ~ 0
Dis_B
Text Label 10050 1650 0    50   ~ 0
Dis_C
Text Label 10050 1550 0    50   ~ 0
Dis_D
Text Label 10050 1450 0    50   ~ 0
Dis_E
Text Label 10050 1250 0    50   ~ 0
Dis_G
Text Label 10050 1350 0    50   ~ 0
Dis_F
Text Label 10050 3200 0    50   ~ 0
Dis_A
Text Label 10050 3100 0    50   ~ 0
Dis_B
Text Label 10050 3000 0    50   ~ 0
Dis_C
Text Label 10050 2900 0    50   ~ 0
Dis_D
Text Label 10050 2800 0    50   ~ 0
Dis_E
Text Label 10050 2600 0    50   ~ 0
Dis_G
Text Label 10050 2700 0    50   ~ 0
Dis_F
Text Label 10050 4850 0    50   ~ 0
Dis_A
Text Label 10050 4750 0    50   ~ 0
Dis_B
Text Label 10050 4650 0    50   ~ 0
Dis_C
Text Label 10050 4550 0    50   ~ 0
Dis_D
Text Label 10050 4450 0    50   ~ 0
Dis_E
Text Label 10050 4250 0    50   ~ 0
Dis_G
Text Label 10050 4350 0    50   ~ 0
Dis_F
NoConn ~ 10150 1150
NoConn ~ 10150 1050
NoConn ~ 10150 950 
NoConn ~ 10150 2500
NoConn ~ 10150 2400
NoConn ~ 10150 2300
NoConn ~ 10150 4150
NoConn ~ 10150 4050
NoConn ~ 10150 3950
Entry Wire Line
	9950 5500 10050 5600
Text Label 10050 5600 0    50   ~ 0
Dis_G
Entry Wire Line
	9950 1150 10050 1250
Wire Wire Line
	10050 3200 10150 3200
Entry Wire Line
	9950 4150 10050 4250
Wire Wire Line
	10150 5600 10050 5600
NoConn ~ 10150 5300
NoConn ~ 10150 5400
NoConn ~ 10150 5500
Entry Wire Line
	9950 5600 10050 5700
Wire Wire Line
	10150 5700 10050 5700
Text Label 10050 5700 0    50   ~ 0
Dis_F
Text Label 10050 5800 0    50   ~ 0
Dis_E
Text Label 10050 5900 0    50   ~ 0
Dis_D
Text Label 10050 6000 0    50   ~ 0
Dis_C
Text Label 10050 6100 0    50   ~ 0
Dis_B
Text Label 10050 6200 0    50   ~ 0
Dis_A
Wire Wire Line
	10150 6200 10050 6200
Entry Wire Line
	9950 3100 10050 3200
Wire Wire Line
	10050 6100 10150 6100
Wire Wire Line
	10050 6000 10150 6000
Wire Wire Line
	10050 5900 10150 5900
Wire Wire Line
	10050 5800 10150 5800
Text Notes 7150 2050 0    50   ~ 0
So, i don't have 7 segment display symbols so\n let's pretend those BAR's are 7 segments display \nand those 2 LEDs in middle are dots on display. \nPS. I'm not sure to what pins of 7 segment display dots \nare conected but if i remember corectly those were B and C.\n But that dosn't matter sicne it is probably be diferend \ndepending on display and i salvage mine from microwave oven board \nand you probably can't buy one.\n 
Wire Wire Line
	10150 4850 10050 4850
Wire Wire Line
	10150 4750 10050 4750
Wire Wire Line
	10150 4650 10050 4650
Wire Wire Line
	10150 4550 10050 4550
Wire Wire Line
	10150 4450 10050 4450
Wire Wire Line
	10150 4350 10050 4350
Wire Wire Line
	10150 4250 10050 4250
Wire Wire Line
	10150 3600 10050 3600
Wire Wire Line
	10150 3400 10050 3400
Wire Wire Line
	10150 3100 10050 3100
Wire Wire Line
	10150 3000 10050 3000
Wire Wire Line
	10150 2900 10050 2900
Wire Wire Line
	10150 2800 10050 2800
Wire Wire Line
	10150 2700 10050 2700
Wire Wire Line
	10150 2600 10050 2600
Wire Wire Line
	10150 1850 10050 1850
Wire Wire Line
	10150 1750 10050 1750
Wire Wire Line
	10150 1650 10050 1650
Wire Wire Line
	10150 1550 10050 1550
Wire Wire Line
	10150 1450 10050 1450
Wire Wire Line
	10150 1350 10050 1350
Wire Wire Line
	10150 1250 10050 1250
Wire Notes Line
	11000 550  7100 550 
$Comp
L LED:HDSP-4830_2 BAR1
U 1 1 61EAD16A
P 10350 1450
F 0 "BAR1" H 10350 683 50  0000 C CNN
F 1 "7 Segment display digit:4" H 10350 774 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10350 650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8350 1650 50  0001 C CNN
	1    10350 1450
	-1   0    0    1   
$EndComp
Entry Wire Line
	9950 1750 10050 1850
Entry Wire Line
	9950 1650 10050 1750
Entry Wire Line
	9950 1550 10050 1650
Entry Wire Line
	9950 1450 10050 1550
Entry Wire Line
	9950 1350 10050 1450
Entry Wire Line
	9950 1250 10050 1350
Wire Wire Line
	10550 950  10550 1050
Connection ~ 10550 1050
Wire Wire Line
	10550 1050 10550 1150
Connection ~ 10550 1150
Wire Wire Line
	10550 1150 10550 1250
Connection ~ 10550 1250
Wire Wire Line
	10550 1250 10550 1350
Connection ~ 10550 1350
Wire Wire Line
	10550 1350 10550 1450
Connection ~ 10550 1450
Wire Wire Line
	10550 1450 10550 1550
Connection ~ 10550 1550
Wire Wire Line
	10550 1550 10550 1650
Connection ~ 10550 1650
Wire Wire Line
	10550 1650 10550 1750
Connection ~ 10550 1750
Wire Wire Line
	10550 1750 10550 1850
Text GLabel 10550 1050 2    50   Input ~ 0
Digit_3
$Comp
L Device:LED D2
U 1 1 61EC92AB
P 10300 3400
F 0 "D2" H 10293 3617 50  0000 C CNN
F 1 "dots" H 10293 3526 50  0000 C CNN
F 2 "" H 10300 3400 50  0001 C CNN
F 3 "~" H 10300 3400 50  0001 C CNN
	1    10300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61EC9C59
P 10300 3600
F 0 "D3" H 10293 3817 50  0000 C CNN
F 1 "dots" H 10293 3726 50  0000 C CNN
F 2 "" H 10300 3600 50  0001 C CNN
F 3 "~" H 10300 3600 50  0001 C CNN
	1    10300 3600
	1    0    0    -1  
$EndComp
Entry Wire Line
	9950 3300 10050 3400
Entry Wire Line
	9950 3500 10050 3600
Text GLabel 10450 3450 2    50   Input ~ 0
Dots
Wire Wire Line
	10450 3400 10450 3600
Text GLabel 10550 2400 2    50   Input ~ 0
Digit_4
Wire Wire Line
	10550 2400 10550 2500
Connection ~ 10550 2400
Wire Wire Line
	10550 2300 10550 2400
$Comp
L LED:HDSP-4830_2 BAR2
U 1 1 61EAAF98
P 10350 2800
F 0 "BAR2" H 10350 2033 50  0000 C CNN
F 1 "7 Segment display digit:4" H 10350 2124 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10350 2000 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8350 3000 50  0001 C CNN
	1    10350 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10550 2500 10550 2600
Wire Wire Line
	10550 2600 10550 2700
Wire Wire Line
	10550 2700 10550 2800
Wire Wire Line
	10550 2800 10550 2900
Wire Wire Line
	10550 2900 10550 3000
Wire Wire Line
	10550 3100 10550 3200
Wire Wire Line
	10550 3000 10550 3100
Connection ~ 10550 3100
Connection ~ 10550 3000
Connection ~ 10550 2900
Connection ~ 10550 2800
Connection ~ 10550 2700
Connection ~ 10550 2600
Connection ~ 10550 2500
Entry Wire Line
	9950 2600 10050 2700
Entry Wire Line
	9950 2500 10050 2600
Entry Wire Line
	9950 2700 10050 2800
Entry Wire Line
	9950 2800 10050 2900
Entry Wire Line
	9950 2900 10050 3000
Entry Wire Line
	9950 3000 10050 3100
Text GLabel 10550 4050 2    50   Input ~ 0
Digit_6
Wire Wire Line
	10550 4750 10550 4850
Connection ~ 10550 4750
Wire Wire Line
	10550 4650 10550 4750
Connection ~ 10550 4650
Wire Wire Line
	10550 4550 10550 4650
Connection ~ 10550 4550
Wire Wire Line
	10550 4450 10550 4550
Connection ~ 10550 4450
Wire Wire Line
	10550 4350 10550 4450
Connection ~ 10550 4350
Wire Wire Line
	10550 4250 10550 4350
Connection ~ 10550 4250
Wire Wire Line
	10550 4150 10550 4250
Connection ~ 10550 4150
Wire Wire Line
	10550 4050 10550 4150
Connection ~ 10550 4050
Wire Wire Line
	10550 3950 10550 4050
Entry Wire Line
	9950 4250 10050 4350
Entry Wire Line
	9950 4350 10050 4450
Entry Wire Line
	9950 4450 10050 4550
Entry Wire Line
	9950 4550 10050 4650
Entry Wire Line
	9950 4650 10050 4750
Entry Wire Line
	9950 4750 10050 4850
$Comp
L LED:HDSP-4830_2 BAR3
U 1 1 61E99A93
P 10350 4450
F 0 "BAR3" H 10350 3683 50  0000 C CNN
F 1 "7 Segment display digit:6" H 10350 3774 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10350 3650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8350 4650 50  0001 C CNN
	1    10350 4450
	-1   0    0    1   
$EndComp
Text GLabel 10550 5400 2    50   Input ~ 0
Digit_7
Wire Wire Line
	10550 6100 10550 6200
Connection ~ 10550 6100
Wire Wire Line
	10550 6000 10550 6100
Connection ~ 10550 6000
Wire Wire Line
	10550 5900 10550 6000
Connection ~ 10550 5900
Wire Wire Line
	10550 5800 10550 5900
Connection ~ 10550 5800
Wire Wire Line
	10550 5700 10550 5800
Connection ~ 10550 5700
Wire Wire Line
	10550 5600 10550 5700
Connection ~ 10550 5600
Wire Wire Line
	10550 5500 10550 5600
Connection ~ 10550 5500
Wire Wire Line
	10550 5400 10550 5500
Connection ~ 10550 5400
Wire Wire Line
	10550 5300 10550 5400
Entry Wire Line
	9950 5700 10050 5800
Entry Wire Line
	9950 5800 10050 5900
Entry Wire Line
	9950 5900 10050 6000
Entry Wire Line
	9950 6000 10050 6100
Entry Wire Line
	9950 6100 10050 6200
$Comp
L LED:HDSP-4830_2 BAR4
U 1 1 61E77B60
P 10350 5800
F 0 "BAR4" H 10350 5033 50  0000 C CNN
F 1 "7 Segment display digit:7" H 10350 5124 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10350 5000 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8350 6000 50  0001 C CNN
	1    10350 5800
	-1   0    0    1   
$EndComp
Wire Notes Line
	9800 6500 9800 500 
Wire Notes Line
	11000 6500 7100 6500
Wire Notes Line
	7100 3650 7100 6500
Wire Bus Line
	9250 5350 9250 6150
Wire Bus Line
	9950 850  9950 6150
Text Notes 10950 6450 1    50   ~ 0
This section represents how 7 seg display is wired internally.
$EndSCHEMATC
