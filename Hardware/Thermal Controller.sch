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
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 619E202F
P 1700 1800
F 0 "A1" H 1250 2850 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 1200 2750 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 1700 1800 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Text GLabel 1150 1700 0    50   Output ~ 0
PWM_Peltier1
Text GLabel 1150 1800 0    50   Output ~ 0
PWM_Peltier2
Wire Wire Line
	1200 1700 1150 1700
Wire Wire Line
	1200 1800 1150 1800
NoConn ~ 1200 2100
NoConn ~ 1200 1200
NoConn ~ 1200 1300
NoConn ~ 2200 1200
NoConn ~ 2200 1400
NoConn ~ 2200 1600
Wire Wire Line
	1600 2900 1600 2950
Wire Wire Line
	1600 2950 1800 2950
Wire Wire Line
	1800 2950 1800 2900
Wire Wire Line
	1700 2900 1700 3000
$Comp
L power:GND #PWR03
U 1 1 619E7CE7
P 1700 3000
F 0 "#PWR03" H 1700 2750 50  0001 C CNN
F 1 "GND" H 1705 2827 50  0000 C CNN
F 2 "" H 1700 3000 50  0001 C CNN
F 3 "" H 1700 3000 50  0001 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
Text GLabel 2250 1800 2    50   Input ~ 0
A_Thermistor
Wire Wire Line
	3250 1750 3250 1800
$Comp
L power:GND #PWR06
U 1 1 619EA247
P 3250 1800
F 0 "#PWR06" H 3250 1550 50  0001 C CNN
F 1 "GND" H 3255 1627 50  0000 C CNN
F 2 "" H 3250 1800 50  0001 C CNN
F 3 "" H 3250 1800 50  0001 C CNN
	1    3250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 619EB140
P 1900 750
F 0 "#PWR04" H 1900 600 50  0001 C CNN
F 1 "+5V" H 1915 923 50  0000 C CNN
F 2 "" H 1900 750 50  0001 C CNN
F 3 "" H 1900 750 50  0001 C CNN
	1    1900 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 800  1900 750 
Text GLabel 3600 2800 0    50   Input ~ 0
PWM_Peltier1
Text GLabel 3600 2900 0    50   Input ~ 0
PWM_Peltier2
Wire Wire Line
	3650 2800 3600 2800
Wire Wire Line
	3600 2900 3650 2900
$Comp
L power:GND #PWR02
U 1 1 619ECF8C
P 4000 3300
F 0 "#PWR02" H 4000 3050 50  0001 C CNN
F 1 "GND" H 4005 3127 50  0000 C CNN
F 2 "" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3250 4000 3300
$Comp
L power:+12V #PWR01
U 1 1 619EE91E
P 4000 2550
F 0 "#PWR01" H 4000 2400 50  0001 C CNN
F 1 "+12V" H 4015 2723 50  0000 C CNN
F 2 "" H 4000 2550 50  0001 C CNN
F 3 "" H 4000 2550 50  0001 C CNN
	1    4000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2550 4000 2600
$Comp
L Device:Peltier_Element PE1
U 1 1 619EFF11
P 4550 2850
F 0 "PE1" V 4504 2955 50  0000 L CNN
F 1 "Peltier_Element" V 4595 2955 50  0000 L CNN
F 2 "" H 4550 2780 50  0001 C CNN
F 3 "~" V 4550 2875 50  0001 C CNN
	1    4550 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2800 4450 2800
Wire Wire Line
	4400 2900 4450 2900
Wire Wire Line
	4450 3050 4550 3050
Wire Wire Line
	4450 2900 4450 3050
Wire Wire Line
	4450 2650 4550 2650
Wire Wire Line
	4450 2650 4450 2800
NoConn ~ 1600 800 
NoConn ~ 1800 800 
NoConn ~ 2200 2600
NoConn ~ 2200 2500
NoConn ~ 2200 2300
NoConn ~ 2200 2200
NoConn ~ 2200 2100
NoConn ~ 2200 2000
NoConn ~ 2200 1900
Wire Wire Line
	2250 1800 2200 1800
NoConn ~ 1200 1400
Text Notes 550  650  0    50   ~ 0
Arduino Uno Rev3\n
Text Notes 2950 2350 0    50   ~ 0
Peltier\n
Text Notes 2900 600  0    50   ~ 0
Thermistor\n
$Comp
L power:+5V #PWR05
U 1 1 619EA857
P 3250 900
F 0 "#PWR05" H 3250 750 50  0001 C CNN
F 1 "+5V" H 3265 1073 50  0000 C CNN
F 2 "" H 3250 900 50  0001 C CNN
F 3 "" H 3250 900 50  0001 C CNN
	1    3250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 950  3250 900 
Wire Wire Line
	3250 1400 3250 1450
Connection ~ 3250 1400
Wire Wire Line
	3250 1400 3300 1400
Wire Wire Line
	3250 1350 3250 1400
Text GLabel 3300 1400 2    50   Output ~ 0
A_Thermistor
$Comp
L Device:R R1
U 1 1 619E3409
P 3250 1600
F 0 "R1" H 3320 1646 50  0000 L CNN
F 1 "R" H 3320 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 1600 50  0001 C CNN
F 3 "~" H 3250 1600 50  0001 C CNN
	1    3250 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 619E3047
P 3250 1150
F 0 "TH1" H 3355 1196 50  0000 L CNN
F 1 "Thermistor" H 3355 1105 50  0000 L CNN
F 2 "" H 3250 1150 50  0001 C CNN
F 3 "~" H 3250 1150 50  0001 C CNN
	1    3250 1150
	1    0    0    -1  
$EndComp
$Comp
L Thermal-Controller-rescue:TB6643KQ-Themal_Controller U1
U 1 1 619E04AA
P 3600 2500
F 0 "U1" H 3700 2450 50  0000 C CNN
F 1 "TB6643KQ" H 3700 2350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 3600 2650 50  0001 C CNN
F 3 "" H 3600 2650 50  0001 C CNN
	1    3600 2500
	1    0    0    -1  
$EndComp
Text Notes 3950 600  0    50   ~ 0
Fan\n
$Comp
L power:+5V #PWR?
U 1 1 61AFDCA0
P 4300 950
F 0 "#PWR?" H 4300 800 50  0001 C CNN
F 1 "+5V" H 4315 1123 50  0000 C CNN
F 2 "" H 4300 950 50  0001 C CNN
F 3 "" H 4300 950 50  0001 C CNN
	1    4300 950 
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M1
U 1 1 61AF3355
P 4300 1300
F 0 "M1" H 4458 1396 50  0000 L CNN
F 1 "Fan" H 4458 1305 50  0000 L CNN
F 2 "" H 4300 1310 50  0001 C CNN
F 3 "~" H 4300 1310 50  0001 C CNN
	1    4300 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61AF2353
P 4300 1550
F 0 "#PWR09" H 4300 1300 50  0001 C CNN
F 1 "GND" H 4305 1377 50  0000 C CNN
F 2 "" H 4300 1550 50  0001 C CNN
F 3 "" H 4300 1550 50  0001 C CNN
	1    4300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1500 4300 1550
Wire Wire Line
	4300 950  4300 1000
NoConn ~ 1200 1500
NoConn ~ 1200 1600
NoConn ~ 1200 2000
NoConn ~ 1200 1900
NoConn ~ 1200 2200
NoConn ~ 1200 2300
Wire Notes Line
	3900 500  3900 2100
Wire Notes Line
	4700 2100 4700 500 
Wire Notes Line
	2850 3600 2850 500 
Wire Notes Line
	5350 3600 5350 2100
Wire Notes Line
	2850 2100 5350 2100
Wire Notes Line
	2850 3600 5350 3600
Wire Notes Line
	2850 3250 500  3250
$EndSCHEMATC
