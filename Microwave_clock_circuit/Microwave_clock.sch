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
L Device:LED D?
U 1 1 61E1AC0B
P 1200 1950
F 0 "D?" V 1239 1832 50  0000 R CNN
F 1 "LED" V 1148 1832 50  0000 R CNN
F 2 "" H 1200 1950 50  0001 C CNN
F 3 "~" H 1200 1950 50  0001 C CNN
	1    1200 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E1BEA3
P 1200 1650
F 0 "R?" H 1270 1696 50  0000 L CNN
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
P 1200 2100
F 0 "#PWR0102" H 1200 1850 50  0001 C CNN
F 1 "GND" H 1205 1927 50  0000 C CNN
F 2 "" H 1200 2100 50  0001 C CNN
F 3 "" H 1200 2100 50  0001 C CNN
	1    1200 2100
	1    0    0    -1  
$EndComp
Text GLabel 1600 2100 2    50   Input ~ 0
Clock_GND
Text GLabel 2950 2200 0    50   Input ~ 0
Clock_Output
Wire Wire Line
	1600 2100 1200 2100
Connection ~ 1200 2100
Text Notes 700  1050 0    50   ~ 0
So i used clock circuitry from broken analog battery powered clock (i will rever to this small circuit board as "clock module")and hacked \nit in with this circuit. It powers it with ~1.7 V and converts outputed by clock module 1.7 V\n pulses into 0 volt impulsed pulled up to VCC (5V)\nWARNNING ! :\nClock_VCC, Clock_GND and Clock_Output are used only here and are not used as Labels but used to symbolise connections in to and out of "clock module".
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
P 3550 1700
F 0 "#PWR0103" H 3550 1550 50  0001 C CNN
F 1 "VCC" H 3565 1873 50  0000 C CNN
F 2 "" H 3550 1700 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E237EC
P 3550 1850
F 0 "R?" H 3620 1896 50  0000 L CNN
F 1 "10K" H 3620 1805 50  0000 L CNN
F 2 "" V 3480 1850 50  0001 C CNN
F 3 "~" H 3550 1850 50  0001 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E24816
P 3100 2200
F 0 "R?" V 2893 2200 50  0000 C CNN
F 1 "1K" V 2984 2200 50  0000 C CNN
F 2 "" V 3030 2200 50  0001 C CNN
F 3 "~" H 3100 2200 50  0001 C CNN
	1    3100 2200
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 61E2527E
P 3450 2200
F 0 "Q?" H 3641 2246 50  0000 L CNN
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
L Device:Q_NPN_CBE Q?
U 1 1 61E269E3
P 2050 1550
F 0 "Q?" V 2378 1550 50  0000 C CNN
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
Text GLabel 7300 3350 2    50   Input ~ 0
CLOCK_INTERUPT_PIN
$Comp
L power:VCC #PWR0105
U 1 1 61E2F058
P 5550 2950
F 0 "#PWR0105" H 5550 2800 50  0001 C CNN
F 1 "VCC" H 5565 3123 50  0000 C CNN
F 2 "" H 5550 2950 50  0001 C CNN
F 3 "" H 5550 2950 50  0001 C CNN
	1    5550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61E2EB57
P 5550 4150
F 0 "#PWR0106" H 5550 3900 50  0001 C CNN
F 1 "GND" H 5555 3977 50  0000 C CNN
F 2 "" H 5550 4150 50  0001 C CNN
F 3 "" H 5550 4150 50  0001 C CNN
	1    5550 4150
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny13A-PU U?
U 1 1 61E1A98B
P 5550 3550
F 0 "U?" H 5021 3596 50  0000 R CNN
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
L Device:R R?
U 1 1 61E3775A
P 1500 6850
F 0 "R?" V 1293 6850 50  0000 C CNN
F 1 "10K" V 1384 6850 50  0000 C CNN
F 2 "" V 1430 6850 50  0001 C CNN
F 3 "~" H 1500 6850 50  0001 C CNN
	1    1500 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E38786
P 1800 6850
F 0 "R?" V 1593 6850 50  0000 C CNN
F 1 "10K" V 1684 6850 50  0000 C CNN
F 2 "" V 1730 6850 50  0001 C CNN
F 3 "~" H 1800 6850 50  0001 C CNN
	1    1800 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E38A5C
P 2100 6850
F 0 "R?" V 1893 6850 50  0000 C CNN
F 1 "10K" V 1984 6850 50  0000 C CNN
F 2 "" V 2030 6850 50  0001 C CNN
F 3 "~" H 2100 6850 50  0001 C CNN
	1    2100 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E38C2F
P 2400 6850
F 0 "R?" V 2193 6850 50  0000 C CNN
F 1 "10K" V 2284 6850 50  0000 C CNN
F 2 "" V 2330 6850 50  0001 C CNN
F 3 "~" H 2400 6850 50  0001 C CNN
	1    2400 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E38E05
P 2700 6850
F 0 "R?" V 2493 6850 50  0000 C CNN
F 1 "10K" V 2584 6850 50  0000 C CNN
F 2 "" V 2630 6850 50  0001 C CNN
F 3 "~" H 2700 6850 50  0001 C CNN
	1    2700 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E3903D
P 3000 6850
F 0 "R?" V 2793 6850 50  0000 C CNN
F 1 "10K" V 2884 6850 50  0000 C CNN
F 2 "" V 2930 6850 50  0001 C CNN
F 3 "~" H 3000 6850 50  0001 C CNN
	1    3000 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E39313
P 3300 6850
F 0 "R?" V 3093 6850 50  0000 C CNN
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
P 3450 6850
F 0 "#PWR0108" H 3450 6600 50  0001 C CNN
F 1 "GND" V 3455 6722 50  0000 R CNN
F 2 "" H 3450 6850 50  0001 C CNN
F 3 "" H 3450 6850 50  0001 C CNN
	1    3450 6850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW?
U 1 1 61E41F64
P 3500 5950
F 0 "SW?" V 3500 6198 50  0000 L CNN
F 1 "SW_MEC_5E" V 3545 6198 50  0001 L CNN
F 2 "" H 3500 6250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 3500 6250 50  0001 C CNN
	1    3500 5950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW?
U 1 1 61E42917
P 3100 6350
F 0 "SW?" V 3100 6598 50  0000 L CNN
F 1 "SW_MEC_5E" V 3145 6598 50  0001 L CNN
F 2 "" H 3100 6650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 3100 6650 50  0001 C CNN
	1    3100 6350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW?
U 1 1 61E42DF5
P 2850 5950
F 0 "SW?" V 2850 6198 50  0000 L CNN
F 1 "SW_MEC_5E" V 2895 6198 50  0001 L CNN
F 2 "" H 2850 6250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 2850 6250 50  0001 C CNN
	1    2850 5950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW?
U 1 1 61E4318B
P 2500 6350
F 0 "SW?" V 2500 6598 50  0000 L CNN
F 1 "SW_MEC_5E" V 2545 6598 50  0001 L CNN
F 2 "" H 2500 6650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 2500 6650 50  0001 C CNN
	1    2500 6350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5E SW?
U 1 1 61E435F0
P 2200 5950
F 0 "SW?" V 2200 6198 50  0000 L CNN
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
Connection ~ 3450 6850
Wire Wire Line
	3150 6850 3150 6550
Wire Wire Line
	3150 6550 3200 6550
Connection ~ 3150 6850
Wire Wire Line
	2850 6850 2850 6150
Connection ~ 2850 6850
Wire Wire Line
	2550 6850 2550 6550
Wire Wire Line
	2550 6550 2600 6550
Connection ~ 2550 6850
Wire Wire Line
	2250 6850 2250 6150
Wire Wire Line
	2250 6150 2300 6150
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
Text GLabel 6650 3450 2    50   Input ~ 0
ANALOG_BUTTON
Text GLabel 6150 3250 2    50   Input ~ 0
DATA_PIN
Wire Wire Line
	7300 3350 6150 3350
Wire Wire Line
	6650 3450 6150 3450
Text GLabel 6150 3550 2    50   Input ~ 0
LATCH_PIN
Text GLabel 6150 3650 2    50   Input ~ 0
CLOCK_PIN
$Comp
L 74xx:74HC595 U?
U 1 1 61E61E05
P 8900 2550
F 0 "U?" H 8900 1669 50  0000 C CNN
F 1 "74HC595" H 8900 1760 50  0000 C CNN
F 2 "" H 8900 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8900 2550 50  0001 C CNN
	1    8900 2550
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 61E666FC
P 8900 4100
F 0 "U?" H 8900 3219 50  0000 C CNN
F 1 "74HC595" H 8900 3310 50  0000 C CNN
F 2 "" H 8900 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8900 4100 50  0001 C CNN
	1    8900 4100
	1    0    0    1   
$EndComp
Text GLabel 8500 4500 0    50   Input ~ 0
DATA_PIN
Text GLabel 8500 4000 0    50   Input ~ 0
LATCH_PIN
Text GLabel 8500 4300 0    50   Input ~ 0
CLOCK_PIN
$Comp
L power:GND #PWR0109
U 1 1 61E6C671
P 8500 3900
F 0 "#PWR0109" H 8500 3650 50  0001 C CNN
F 1 "GND" V 8505 3772 50  0000 R CNN
F 2 "" H 8500 3900 50  0001 C CNN
F 3 "" H 8500 3900 50  0001 C CNN
	1    8500 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 3600 9300 3250
Wire Wire Line
	9300 3250 8500 3250
Wire Wire Line
	8500 3250 8500 2950
$Comp
L power:VCC #PWR0110
U 1 1 61E6D320
P 8900 3400
F 0 "#PWR0110" H 8900 3250 50  0001 C CNN
F 1 "VCC" H 8915 3573 50  0000 C CNN
F 2 "" H 8900 3400 50  0001 C CNN
F 3 "" H 8900 3400 50  0001 C CNN
	1    8900 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 61E6D739
P 8900 1850
F 0 "#PWR0111" H 8900 1700 50  0001 C CNN
F 1 "VCC" H 8915 2023 50  0000 C CNN
F 2 "" H 8900 1850 50  0001 C CNN
F 3 "" H 8900 1850 50  0001 C CNN
	1    8900 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 61E6E48E
P 8500 4200
F 0 "#PWR0112" H 8500 4050 50  0001 C CNN
F 1 "VCC" V 8515 4327 50  0000 L CNN
F 2 "" H 8500 4200 50  0001 C CNN
F 3 "" H 8500 4200 50  0001 C CNN
	1    8500 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 61E6EEBC
P 8500 2650
F 0 "#PWR0113" H 8500 2500 50  0001 C CNN
F 1 "VCC" V 8515 2777 50  0000 L CNN
F 2 "" H 8500 2650 50  0001 C CNN
F 3 "" H 8500 2650 50  0001 C CNN
	1    8500 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61E6F5C0
P 8500 2350
F 0 "#PWR0114" H 8500 2100 50  0001 C CNN
F 1 "GND" V 8505 2222 50  0000 R CNN
F 2 "" H 8500 2350 50  0001 C CNN
F 3 "" H 8500 2350 50  0001 C CNN
	1    8500 2350
	0    1    1    0   
$EndComp
Text GLabel 8500 2450 0    50   Input ~ 0
LATCH_PIN
Text GLabel 8500 2750 0    50   Input ~ 0
CLOCK_PIN
$Comp
L LED:HDSP-4830_2 BAR?
U 1 1 61E77B60
P 10750 5800
F 0 "BAR?" H 10750 5033 50  0000 C CNN
F 1 "7 Segment display digit:7" H 10750 5124 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10750 5000 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8750 6000 50  0001 C CNN
	1    10750 5800
	-1   0    0    1   
$EndComp
Entry Wire Line
	10450 6100 10550 6200
Entry Wire Line
	10450 6000 10550 6100
Entry Wire Line
	10450 5900 10550 6000
Entry Wire Line
	10450 5800 10550 5900
Entry Wire Line
	10450 5700 10550 5800
Entry Wire Line
	10450 5600 10550 5700
Entry Wire Line
	10450 5500 10550 5600
Entry Wire Line
	10450 5400 10550 5500
Entry Wire Line
	10450 5300 10550 5400
Entry Wire Line
	10450 5200 10550 5300
Entry Wire Line
	9300 3800 9400 3900
Entry Wire Line
	9300 3900 9400 4000
Entry Wire Line
	9300 4000 9400 4100
Entry Wire Line
	9300 4100 9400 4200
Entry Wire Line
	9300 4200 9400 4300
Entry Wire Line
	9300 4300 9400 4400
Entry Wire Line
	9300 4400 9400 4500
Entry Wire Line
	9300 4500 9400 4600
Wire Wire Line
	10950 5300 10950 5400
Connection ~ 10950 5400
Wire Wire Line
	10950 5400 10950 5500
Connection ~ 10950 5500
Wire Wire Line
	10950 5500 10950 5600
Connection ~ 10950 5600
Wire Wire Line
	10950 5600 10950 5700
Connection ~ 10950 5700
Wire Wire Line
	10950 5700 10950 5800
Connection ~ 10950 5800
Wire Wire Line
	10950 5800 10950 5900
Connection ~ 10950 5900
Wire Wire Line
	10950 5900 10950 6000
Connection ~ 10950 6000
Wire Wire Line
	10950 6000 10950 6100
Connection ~ 10950 6100
Wire Wire Line
	10950 6100 10950 6200
Text GLabel 10950 5400 2    50   Input ~ 0
Digit_7
$Comp
L LED:HDSP-4830_2 BAR?
U 1 1 61E99A93
P 10750 4450
F 0 "BAR?" H 10750 3683 50  0000 C CNN
F 1 "7 Segment display digit:6" H 10750 3774 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10750 3650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8750 4650 50  0001 C CNN
	1    10750 4450
	-1   0    0    1   
$EndComp
Entry Wire Line
	10450 4750 10550 4850
Entry Wire Line
	10450 4650 10550 4750
Entry Wire Line
	10450 4550 10550 4650
Entry Wire Line
	10450 4450 10550 4550
Entry Wire Line
	10450 4350 10550 4450
Entry Wire Line
	10450 4250 10550 4350
Entry Wire Line
	10450 4150 10550 4250
Entry Wire Line
	10450 4050 10550 4150
Entry Wire Line
	10450 3950 10550 4050
Entry Wire Line
	10450 3850 10550 3950
Wire Wire Line
	10950 3950 10950 4050
Connection ~ 10950 4050
Wire Wire Line
	10950 4050 10950 4150
Connection ~ 10950 4150
Wire Wire Line
	10950 4150 10950 4250
Connection ~ 10950 4250
Wire Wire Line
	10950 4250 10950 4350
Connection ~ 10950 4350
Wire Wire Line
	10950 4350 10950 4450
Connection ~ 10950 4450
Wire Wire Line
	10950 4450 10950 4550
Connection ~ 10950 4550
Wire Wire Line
	10950 4550 10950 4650
Connection ~ 10950 4650
Wire Wire Line
	10950 4650 10950 4750
Connection ~ 10950 4750
Wire Wire Line
	10950 4750 10950 4850
Text GLabel 10950 4050 2    50   Input ~ 0
Digit_6
Entry Wire Line
	10450 3100 10550 3200
Entry Wire Line
	10450 3000 10550 3100
Entry Wire Line
	10450 2900 10550 3000
Entry Wire Line
	10450 2800 10550 2900
Entry Wire Line
	10450 2700 10550 2800
Entry Wire Line
	10450 2500 10550 2600
Entry Wire Line
	10450 2600 10550 2700
Connection ~ 10950 2500
Connection ~ 10950 2600
Connection ~ 10950 2700
Connection ~ 10950 2800
Connection ~ 10950 2900
Connection ~ 10950 3000
Connection ~ 10950 3100
Wire Wire Line
	10950 3000 10950 3100
Wire Wire Line
	10950 3100 10950 3200
Wire Wire Line
	10950 2900 10950 3000
Wire Wire Line
	10950 2800 10950 2900
Wire Wire Line
	10950 2700 10950 2800
Wire Wire Line
	10950 2600 10950 2700
Wire Wire Line
	10950 2500 10950 2600
$Comp
L LED:HDSP-4830_2 BAR?
U 1 1 61EAAF98
P 10750 2800
F 0 "BAR?" H 10750 2033 50  0000 C CNN
F 1 "7 Segment display digit:4" H 10750 2124 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10750 2000 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8750 3000 50  0001 C CNN
	1    10750 2800
	-1   0    0    1   
$EndComp
Entry Wire Line
	10450 2400 10550 2500
Entry Wire Line
	10450 2300 10550 2400
Entry Wire Line
	10450 2200 10550 2300
Wire Wire Line
	10950 2300 10950 2400
Connection ~ 10950 2400
Wire Wire Line
	10950 2400 10950 2500
Text GLabel 10950 2400 2    50   Input ~ 0
Digit_4
$Comp
L LED:HDSP-4830_2 BAR?
U 1 1 61EAD16A
P 10750 1250
F 0 "BAR?" H 10750 483 50  0000 C CNN
F 1 "7 Segment display digit:4" H 10750 574 50  0000 C CNN
F 2 "Display:HDSP-4830" H 10750 450 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 8750 1450 50  0001 C CNN
	1    10750 1250
	-1   0    0    1   
$EndComp
Entry Wire Line
	10450 1550 10550 1650
Entry Wire Line
	10450 1450 10550 1550
Entry Wire Line
	10450 1350 10550 1450
Entry Wire Line
	10450 1250 10550 1350
Entry Wire Line
	10450 1150 10550 1250
Entry Wire Line
	10450 1050 10550 1150
Entry Wire Line
	10450 950  10550 1050
Entry Wire Line
	10450 850  10550 950 
Entry Wire Line
	10450 750  10550 850 
Entry Wire Line
	10450 650  10550 750 
Wire Wire Line
	10950 750  10950 850 
Connection ~ 10950 850 
Wire Wire Line
	10950 850  10950 950 
Connection ~ 10950 950 
Wire Wire Line
	10950 950  10950 1050
Connection ~ 10950 1050
Wire Wire Line
	10950 1050 10950 1150
Connection ~ 10950 1150
Wire Wire Line
	10950 1150 10950 1250
Connection ~ 10950 1250
Wire Wire Line
	10950 1250 10950 1350
Connection ~ 10950 1350
Wire Wire Line
	10950 1350 10950 1450
Connection ~ 10950 1450
Wire Wire Line
	10950 1450 10950 1550
Connection ~ 10950 1550
Wire Wire Line
	10950 1550 10950 1650
Text GLabel 10950 850  2    50   Input ~ 0
Digit_3
Wire Wire Line
	10850 3400 10850 3600
Text GLabel 10850 3450 2    50   Input ~ 0
Dots
Entry Wire Line
	10450 3500 10550 3600
Entry Wire Line
	10450 3300 10550 3400
$Comp
L Device:LED D?
U 1 1 61EC9C59
P 10700 3600
F 0 "D?" H 10693 3817 50  0000 C CNN
F 1 "dots" H 10693 3726 50  0000 C CNN
F 2 "" H 10700 3600 50  0001 C CNN
F 3 "~" H 10700 3600 50  0001 C CNN
	1    10700 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61EC92AB
P 10700 3400
F 0 "D?" H 10693 3617 50  0000 C CNN
F 1 "dots" H 10693 3526 50  0000 C CNN
F 2 "" H 10700 3400 50  0001 C CNN
F 3 "~" H 10700 3400 50  0001 C CNN
	1    10700 3400
	1    0    0    -1  
$EndComp
Wire Bus Line
	9400 4600 10450 4600
Connection ~ 10450 4600
Text Notes 10150 1050 3    50   ~ 0
So, i don't have 7 segment display symbols and even with tutorial i'm not sure if i use buses corectly but i hope you get the idea.\nnumering starts with 3 and ends at 7, two dots in the middle of display are represented by 2 dieds and have "addres" 5 i.e. are like 5'th digit.\n 
Text GLabel 9300 2950 2    50   Input ~ 0
Digit_7
Text GLabel 9300 2850 2    50   Input ~ 0
Digit_6
Text GLabel 9300 2650 2    50   Input ~ 0
Digit_4
Text GLabel 9300 2550 2    50   Input ~ 0
Digit_3
Text GLabel 9300 2750 2    50   Input ~ 0
Dots
$Comp
L power:GND #PWR?
U 1 1 61EF67DF
P 8900 3150
F 0 "#PWR?" H 8900 2900 50  0001 C CNN
F 1 "GND" H 8905 2977 50  0000 C CNN
F 2 "" H 8900 3150 50  0001 C CNN
F 3 "" H 8900 3150 50  0001 C CNN
	1    8900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF6FD2
P 8900 4700
F 0 "#PWR?" H 8900 4450 50  0001 C CNN
F 1 "GND" H 8905 4527 50  0000 C CNN
F 2 "" H 8900 4700 50  0001 C CNN
F 3 "" H 8900 4700 50  0001 C CNN
	1    8900 4700
	1    0    0    -1  
$EndComp
Wire Notes Line
	7500 150  11500 150 
Wire Notes Line
	11500 150  11500 7150
Wire Notes Line
	11500 7150 7500 7150
Wire Notes Line
	7500 150  7500 7150
Text Label 8600 7650 2    50   ~ 0
2022-01-14
Text Notes 11350 400  2    157  ~ 31
7 segment display & it's driver
Wire Notes Line
	4800 5250 500  5250
Wire Notes Line
	500  5250 500  7450
Wire Notes Line
	500  7450 4800 7450
Wire Notes Line
	4800 5250 4800 7450
Wire Bus Line
	9400 3900 9400 4600
Wire Bus Line
	10450 4600 10450 6150
Wire Bus Line
	10450 650  10450 4600
Text Notes 2250 5550 2    157  ~ 31
Button array
Text Notes 7000 1450 2    157  ~ 31
Clock signal circuitry
$EndSCHEMATC
