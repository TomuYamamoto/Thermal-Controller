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
$Comp
L Display_Character:RC1602A U2
U 1 1 619E3989
P 3800 1500
F 0 "U2" H 3800 2381 50  0000 C CNN
F 1 "RC1602A" H 3800 2290 50  0000 C CNN
F 2 "Display:RC1602A" H 3900 700 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 3900 1400 50  0001 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
Text GLabel 1150 1700 0    50   Output ~ 0
PWM_Peltier1
Text GLabel 1150 1800 0    50   Output ~ 0
PWM_Peltier2
Text GLabel 1150 1900 0    50   Input ~ 0
LCD_RS
Text GLabel 1150 2000 0    50   Input ~ 0
LCD_E
Text GLabel 1150 2200 0    50   Output ~ 0
LCD_D1
Text GLabel 1150 2300 0    50   Output ~ 0
LCD_D2
Text GLabel 1150 2400 0    50   Output ~ 0
LCD_D3
Text GLabel 1150 2500 0    50   Output ~ 0
LCD_D4
Wire Wire Line
	1200 2500 1150 2500
Wire Wire Line
	1200 2400 1150 2400
Wire Wire Line
	1150 2300 1200 2300
Wire Wire Line
	1200 2200 1150 2200
Wire Wire Line
	1200 1700 1150 1700
Wire Wire Line
	1200 1800 1150 1800
Wire Wire Line
	1150 1900 1200 1900
Wire Wire Line
	1200 2000 1150 2000
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
	3150 4250 3150 4300
$Comp
L power:GND #PWR06
U 1 1 619EA247
P 3150 4300
F 0 "#PWR06" H 3150 4050 50  0001 C CNN
F 1 "GND" H 3155 4127 50  0000 C CNN
F 2 "" H 3150 4300 50  0001 C CNN
F 3 "" H 3150 4300 50  0001 C CNN
	1    3150 4300
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
Text GLabel 1200 3900 0    50   Input ~ 0
PWM_Peltier1
Text GLabel 1200 4000 0    50   Input ~ 0
PWM_Peltier2
Wire Wire Line
	1250 3900 1200 3900
Wire Wire Line
	1200 4000 1250 4000
$Comp
L power:GND #PWR02
U 1 1 619ECF8C
P 1600 4400
F 0 "#PWR02" H 1600 4150 50  0001 C CNN
F 1 "GND" H 1605 4227 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4350 1600 4400
$Comp
L power:+12V #PWR01
U 1 1 619EE91E
P 1600 3650
F 0 "#PWR01" H 1600 3500 50  0001 C CNN
F 1 "+12V" H 1615 3823 50  0000 C CNN
F 2 "" H 1600 3650 50  0001 C CNN
F 3 "" H 1600 3650 50  0001 C CNN
	1    1600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3650 1600 3700
$Comp
L Device:Peltier_Element PE1
U 1 1 619EFF11
P 2150 3950
F 0 "PE1" V 2104 4055 50  0000 L CNN
F 1 "Peltier_Element" V 2195 4055 50  0000 L CNN
F 2 "" H 2150 3880 50  0001 C CNN
F 3 "~" V 2150 3975 50  0001 C CNN
	1    2150 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 3900 2050 3900
Wire Wire Line
	2000 4000 2050 4000
Wire Wire Line
	2050 4150 2150 4150
Wire Wire Line
	2050 4000 2050 4150
Wire Wire Line
	2050 3750 2150 3750
Wire Wire Line
	2050 3750 2050 3900
Text GLabel 3350 1700 0    50   Input ~ 0
LCD_D1
Text GLabel 3350 1800 0    50   Input ~ 0
LCD_D2
Text GLabel 3350 1900 0    50   Input ~ 0
LCD_D3
Text GLabel 3350 2000 0    50   Input ~ 0
LCD_D4
Wire Wire Line
	3400 2000 3350 2000
Wire Wire Line
	3350 1900 3400 1900
Wire Wire Line
	3400 1800 3350 1800
Wire Wire Line
	3350 1700 3400 1700
NoConn ~ 3400 1600
NoConn ~ 3400 1500
NoConn ~ 3400 1400
NoConn ~ 3400 1300
Text GLabel 3350 1000 0    50   Input ~ 0
LCD_RS
Text GLabel 3350 1200 0    50   Input ~ 0
LCD_E
Wire Wire Line
	3400 1000 3350 1000
Wire Wire Line
	3350 1200 3400 1200
Wire Wire Line
	3800 2200 3800 2250
$Comp
L power:GND #PWR07
U 1 1 619F7D44
P 3800 2250
F 0 "#PWR07" H 3800 2000 50  0001 C CNN
F 1 "GND" H 3805 2077 50  0000 C CNN
F 2 "" H 3800 2250 50  0001 C CNN
F 3 "" H 3800 2250 50  0001 C CNN
	1    3800 2250
	1    0    0    -1  
$EndComp
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
Text Notes 550  3450 0    50   ~ 0
Peltier\n
Text Notes 3000 650  0    50   ~ 0
LCD\n
Text Notes 3000 3100 0    50   ~ 0
Thermistor\n
Wire Notes Line
	2900 3300 500  3300
$Comp
L power:+5V #PWR05
U 1 1 619EA857
P 3150 3400
F 0 "#PWR05" H 3150 3250 50  0001 C CNN
F 1 "+5V" H 3165 3573 50  0000 C CNN
F 2 "" H 3150 3400 50  0001 C CNN
F 3 "" H 3150 3400 50  0001 C CNN
	1    3150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3450 3150 3400
Wire Wire Line
	3150 3900 3150 3950
Connection ~ 3150 3900
Wire Wire Line
	3150 3900 3200 3900
Wire Wire Line
	3150 3850 3150 3900
Text GLabel 3200 3900 2    50   Output ~ 0
A_Thermistor
$Comp
L Device:R R1
U 1 1 619E3409
P 3150 4100
F 0 "R1" H 3220 4146 50  0000 L CNN
F 1 "R" H 3220 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 4100 50  0001 C CNN
F 3 "~" H 3150 4100 50  0001 C CNN
	1    3150 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 619E3047
P 3150 3650
F 0 "TH1" H 3255 3696 50  0000 L CNN
F 1 "Thermistor" H 3255 3605 50  0000 L CNN
F 2 "" H 3150 3650 50  0001 C CNN
F 3 "~" H 3150 3650 50  0001 C CNN
	1    3150 3650
	1    0    0    -1  
$EndComp
Wire Notes Line
	4550 500  4550 2950
Wire Notes Line
	4550 2950 2900 2950
Wire Notes Line
	3800 4700 3800 2950
Wire Notes Line
	500  4700 3800 4700
$Comp
L Thermal-Controller-rescue:TB6643KQ-Themal_Controller U1
U 1 1 619E04AA
P 1200 3600
F 0 "U1" H 1300 3550 50  0000 C CNN
F 1 "TB6643KQ" H 1300 3450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 1200 3750 50  0001 C CNN
F 3 "" H 1200 3750 50  0001 C CNN
	1    1200 3600
	1    0    0    -1  
$EndComp
Text GLabel 1150 5200 0    50   Input ~ 0
PWM_Fan1
Text GLabel 1150 5300 0    50   Input ~ 0
PWM_Fan2
Wire Wire Line
	1200 5200 1150 5200
Wire Wire Line
	1150 5300 1200 5300
$Comp
L power:GND #PWR09
U 1 1 61AF2353
P 1550 5700
F 0 "#PWR09" H 1550 5450 50  0001 C CNN
F 1 "GND" H 1555 5527 50  0000 C CNN
F 2 "" H 1550 5700 50  0001 C CNN
F 3 "" H 1550 5700 50  0001 C CNN
	1    1550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5650 1550 5700
Wire Wire Line
	1550 4950 1550 5000
Wire Wire Line
	1950 5200 2000 5200
Wire Wire Line
	1950 5300 2000 5300
$Comp
L Thermal-Controller-rescue:TB6643KQ-Themal_Controller U3
U 1 1 61AF236D
P 1150 4900
F 0 "U3" H 1250 4850 50  0000 C CNN
F 1 "TB6643KQ" H 1250 4750 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 1150 5050 50  0001 C CNN
F 3 "" H 1150 5050 50  0001 C CNN
	1    1150 4900
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M1
U 1 1 61AF3355
P 2200 5300
F 0 "M1" H 2358 5396 50  0000 L CNN
F 1 "Fan" H 2358 5305 50  0000 L CNN
F 2 "" H 2200 5310 50  0001 C CNN
F 3 "~" H 2200 5310 50  0001 C CNN
	1    2200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5000 2200 5000
Wire Wire Line
	2000 5500 2200 5500
Wire Wire Line
	2000 5300 2000 5500
Wire Wire Line
	2000 5000 2000 5200
Text GLabel 1150 1500 0    50   Output ~ 0
PWM_Fan1
Text GLabel 1150 1600 0    50   Output ~ 0
PWM_Fan2
Wire Wire Line
	1200 1500 1150 1500
Wire Wire Line
	1150 1600 1200 1600
$Comp
L power:+5V #PWR?
U 1 1 61AFDCA0
P 1550 4950
F 0 "#PWR?" H 1550 4800 50  0001 C CNN
F 1 "+5V" H 1565 5123 50  0000 C CNN
F 2 "" H 1550 4950 50  0001 C CNN
F 3 "" H 1550 4950 50  0001 C CNN
	1    1550 4950
	1    0    0    -1  
$EndComp
Text Notes 550  4850 0    50   ~ 0
Fan\n
Wire Notes Line
	2900 5950 500  5950
Wire Notes Line
	2900 500  2900 5950
$EndSCHEMATC
