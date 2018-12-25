EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Arduino_Micro-cache
LIBS:proximitysensor
LIBS:ms5541-30c
LIBS:MoldInst-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "sam. 04 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SW_SPDT SW?
U 1 1 5B3171EF
P 9600 2550
F 0 "SW?" H 9600 2720 50  0000 C CNN
F 1 "SW_SPDT" H 9600 2350 50  0000 C CNN
F 2 "" H 9600 2550 50  0001 C CNN
F 3 "" H 9600 2550 50  0001 C CNN
	1    9600 2550
	1    0    0    -1  
$EndComp
Text Label 5000 2100 0    60   ~ 0
MOSI
Text Label 5000 2200 0    60   ~ 0
SS
Text Label 5000 2300 0    60   ~ 0
1(Tx1)
Text Label 5000 2400 0    60   ~ 0
0(Rx1)
Text Label 5000 2500 0    60   ~ 0
Reset
Text Label 5000 2700 0    60   ~ 0
2(SDA)
Text Label 5000 2800 0    60   ~ 0
3(**/SCL)
Text Label 5000 2900 0    60   ~ 0
4(A6)
Text Label 5000 3000 0    60   ~ 0
5(**)
Text Label 5000 3100 0    60   ~ 0
6(**/A7)
Text Label 5000 3200 0    60   ~ 0
7
Text Label 5000 3300 0    60   ~ 0
8(A8)
Text Label 5000 3400 0    60   ~ 0
9(**/A9)
Text Label 5000 3500 0    60   ~ 0
10(A10)
Text Label 5000 3600 0    60   ~ 0
11(**)
Text Label 5000 3700 0    60   ~ 0
12(A11)
Text Label 6900 2100 0    60   ~ 0
SCK
Text Label 6900 2200 0    60   ~ 0
MISO
Text Label 6500 1950 1    60   ~ 0
Vin
Text Label 6900 2500 0    60   ~ 0
Reset
Text Label 6900 3700 0    60   ~ 0
13(**)
Text Label 6900 3500 0    60   ~ 0
AREF
Text Label 6900 3400 0    60   ~ 0
A0
Text Label 6900 3300 0    60   ~ 0
A1
Text Label 6900 3200 0    60   ~ 0
A2
Text Label 6900 3100 0    60   ~ 0
A3
Text Label 6900 3000 0    60   ~ 0
A4
Text Label 6900 2900 0    60   ~ 0
A5
NoConn ~ 6400 2800
NoConn ~ 6400 2700
Text Notes 4800 1425 0    60   ~ 0
Shield Arduino Micro Rev 3
Text Notes 7100 1850 0    60   ~ 0
Holes
NoConn ~ 7050 1700
$Comp
L CONN_01X17 P?
U 1 1 5B3258DC
P 5800 2900
F 0 "P?" H 5800 3800 50  0000 C CNN
F 1 "Digital" H 5800 2000 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 5900 2900 30  0000 C CNN
F 3 "" H 5800 2900 50  0000 C CNN
	1    5800 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X17 P?
U 1 1 5B3258DD
P 6200 2900
F 0 "P?" H 6200 3800 50  0000 C CNN
F 1 "Analog" H 6200 2000 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 6300 2900 30  0000 C CNN
F 3 "" H 6200 2900 50  0000 C CNN
	1    6200 2900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B3258DE
P 5500 3850
F 0 "#PWR?" H 5500 3600 50  0001 C CNN
F 1 "GND" H 5500 3700 50  0000 C CNN
F 2 "" H 5500 3850 50  0000 C CNN
F 3 "" H 5500 3850 50  0000 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
Text Notes 5900 2100 0    60   ~ 0
1
$Comp
L +5V #PWR?
U 1 1 5B3258DF
P 6600 1950
F 0 "#PWR?" H 6600 1800 50  0001 C CNN
F 1 "+5V" H 6600 2090 28  0000 C CNN
F 2 "" H 6600 1950 50  0000 C CNN
F 3 "" H 6600 1950 50  0000 C CNN
	1    6600 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B3258E0
P 6500 3850
F 0 "#PWR?" H 6500 3600 50  0001 C CNN
F 1 "GND" H 6500 3700 50  0000 C CNN
F 2 "" H 6500 3850 50  0000 C CNN
F 3 "" H 6500 3850 50  0000 C CNN
	1    6500 3850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5B3258E1
P 6700 1850
F 0 "#PWR?" H 6700 1700 50  0001 C CNN
F 1 "+3.3V" H 6700 1990 28  0000 C CNN
F 2 "" H 6700 1850 50  0000 C CNN
F 3 "" H 6700 1850 50  0000 C CNN
	1    6700 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5B3258E2
P 7050 1500
F 0 "P?" V 7150 1500 50  0000 C CNN
F 1 "CONN_01X01" H 7150 1500 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 6972 1572 20  0000 C CNN
F 3 "" H 7050 1500 50  0000 C CNN
	1    7050 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5B3258E3
P 7150 1500
F 0 "P?" V 7250 1500 50  0000 C CNN
F 1 "CONN_01X01" H 7250 1500 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 7150 1500 20  0001 C CNN
F 3 "" H 7150 1500 50  0000 C CNN
	1    7150 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5B3258E4
P 6600 2450
F 0 "P?" V 6700 2450 50  0000 C CNN
F 1 "CONN_01X01" H 6700 2450 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 6600 2450 20  0001 C CNN
F 3 "" H 6600 2450 50  0000 C CNN
	1    6600 2450
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5B3258E5
P 6700 2450
F 0 "P?" V 6800 2450 50  0000 C CNN
F 1 "CONN_01X01" H 6800 2450 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 6619 2381 20  0000 C CNN
F 3 "" H 6700 2450 50  0000 C CNN
	1    6700 2450
	0    -1   -1   0   
$EndComp
NoConn ~ 6700 2650
NoConn ~ 6600 2650
NoConn ~ 7150 1700
$Comp
L SW_SPDT SW?
U 1 1 5B325A1C
P 9600 3150
F 0 "SW?" H 9600 3320 50  0000 C CNN
F 1 "SW_SPDT" H 9600 2950 50  0000 C CNN
F 2 "" H 9600 3150 50  0001 C CNN
F 3 "" H 9600 3150 50  0001 C CNN
	1    9600 3150
	1    0    0    -1  
$EndComp
$Comp
L SW_SPDT SW?
U 1 1 5B325ADE
P 9600 3750
F 0 "SW?" H 9600 3920 50  0000 C CNN
F 1 "SW_SPDT" H 9600 3550 50  0000 C CNN
F 2 "" H 9600 3750 50  0001 C CNN
F 3 "" H 9600 3750 50  0001 C CNN
	1    9600 3750
	1    0    0    -1  
$EndComp
$Comp
L SW_SPDT SW?
U 1 1 5B325B37
P 9600 4300
F 0 "SW?" H 9600 4470 50  0000 C CNN
F 1 "SW_SPDT" H 9600 4100 50  0000 C CNN
F 2 "" H 9600 4300 50  0001 C CNN
F 3 "" H 9600 4300 50  0001 C CNN
	1    9600 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B326032
P 10000 2400
F 0 "#PWR?" H 10000 2150 50  0001 C CNN
F 1 "GND" H 10000 2250 50  0000 C CNN
F 2 "" H 10000 2400 50  0001 C CNN
F 3 "" H 10000 2400 50  0001 C CNN
	1    10000 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B3261BB
P 10000 3000
F 0 "#PWR?" H 10000 2750 50  0001 C CNN
F 1 "GND" H 10000 2850 50  0000 C CNN
F 2 "" H 10000 3000 50  0001 C CNN
F 3 "" H 10000 3000 50  0001 C CNN
	1    10000 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B3261DC
P 10000 3600
F 0 "#PWR?" H 10000 3350 50  0001 C CNN
F 1 "GND" H 10000 3450 50  0000 C CNN
F 2 "" H 10000 3600 50  0001 C CNN
F 3 "" H 10000 3600 50  0001 C CNN
	1    10000 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B326204
P 10000 4150
F 0 "#PWR?" H 10000 3900 50  0001 C CNN
F 1 "GND" H 10000 4000 50  0000 C CNN
F 2 "" H 10000 4150 50  0001 C CNN
F 3 "" H 10000 4150 50  0001 C CNN
	1    10000 4150
	1    0    0    -1  
$EndComp
Text GLabel 9950 2650 2    60   Input ~ 0
3.3V
Text GLabel 9950 3250 2    60   Input ~ 0
3.3V
Text GLabel 9950 3850 2    60   Input ~ 0
3.3V
Text GLabel 9950 4400 2    60   Input ~ 0
3.3V
$Comp
L SW_SPDT SW?
U 1 1 5B3BE18C
P 9600 4850
F 0 "SW?" H 9600 5020 50  0000 C CNN
F 1 "SW_SPDT" H 9600 4650 50  0000 C CNN
F 2 "" H 9600 4850 50  0001 C CNN
F 3 "" H 9600 4850 50  0001 C CNN
	1    9600 4850
	1    0    0    -1  
$EndComp
Text GLabel 9950 4950 2    60   Input ~ 0
3.3V
$Comp
L GND #PWR?
U 1 1 5B3BE192
P 10000 4700
F 0 "#PWR?" H 10000 4450 50  0001 C CNN
F 1 "GND" H 10000 4550 50  0000 C CNN
F 2 "" H 10000 4700 50  0001 C CNN
F 3 "" H 10000 4700 50  0001 C CNN
	1    10000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2100 5600 2100
Wire Wire Line
	5000 2200 5600 2200
Wire Wire Line
	5000 2300 5600 2300
Wire Wire Line
	5000 2400 5600 2400
Wire Wire Line
	5000 2500 5600 2500
Wire Wire Line
	5000 2700 5600 2700
Wire Wire Line
	5000 2800 5600 2800
Wire Wire Line
	5000 2900 5600 2900
Wire Wire Line
	5000 3000 5600 3000
Wire Wire Line
	5000 3100 5600 3100
Wire Wire Line
	5000 3200 5600 3200
Wire Wire Line
	5000 3300 5600 3300
Wire Wire Line
	5000 3400 5600 3400
Wire Wire Line
	5000 3500 5600 3500
Wire Wire Line
	5000 3600 5600 3600
Wire Wire Line
	5000 3700 5600 3700
Wire Wire Line
	5600 2600 5500 2600
Wire Wire Line
	5500 2600 5500 3850
Wire Wire Line
	6400 2300 6500 2300
Wire Wire Line
	6500 2300 6500 1950
Wire Wire Line
	6400 2600 6600 2600
Wire Wire Line
	6600 2600 6600 1950
Wire Wire Line
	6400 2100 7150 2100
Wire Wire Line
	6400 2200 7150 2200
Wire Wire Line
	6900 2500 6400 2500
Wire Wire Line
	6400 2900 7050 2900
Wire Wire Line
	6400 3000 7050 3000
Wire Wire Line
	6400 3100 7050 3100
Wire Wire Line
	6400 3200 7050 3200
Wire Wire Line
	6400 3300 6900 3300
Wire Wire Line
	6900 3400 6400 3400
Wire Wire Line
	6400 3500 6900 3500
Wire Wire Line
	6900 3700 6400 3700
Wire Wire Line
	6400 2400 6500 2400
Wire Wire Line
	6500 2400 6500 3850
Wire Wire Line
	6700 1850 6700 3600
Wire Wire Line
	6700 3600 6400 3600
Wire Notes Line
	7450 1850 6900 1850
Wire Notes Line
	6900 1850 6900 1350
Wire Wire Line
	9800 2450 9850 2450
Wire Wire Line
	9850 2450 9850 2400
Wire Wire Line
	9850 2400 10000 2400
Wire Wire Line
	9800 3050 9850 3050
Wire Wire Line
	9850 3050 9850 3000
Wire Wire Line
	9850 3000 10000 3000
Wire Wire Line
	9800 3650 9850 3650
Wire Wire Line
	9850 3650 9850 3600
Wire Wire Line
	9850 3600 10000 3600
Wire Wire Line
	9800 4200 9850 4200
Wire Wire Line
	9850 4200 9850 4150
Wire Wire Line
	9850 4150 10000 4150
Wire Wire Line
	9800 2650 9950 2650
Wire Wire Line
	9800 3250 9950 3250
Wire Wire Line
	9800 3850 9950 3850
Wire Wire Line
	9800 4400 9950 4400
Wire Wire Line
	9800 4750 9850 4750
Wire Wire Line
	9850 4750 9850 4700
Wire Wire Line
	9800 4950 9950 4950
Wire Wire Line
	9850 4700 10000 4700
Text GLabel 9300 2550 0    60   Input ~ 0
Switch1
Text GLabel 9300 3150 0    60   Input ~ 0
Switch2
Text GLabel 9300 3750 0    60   Input ~ 0
Switch3
Text GLabel 9300 4300 0    60   Input ~ 0
Switch4
Text GLabel 9300 4850 0    60   Input ~ 0
Switch5
Wire Wire Line
	9300 2550 9400 2550
Wire Wire Line
	9300 3150 9400 3150
Wire Wire Line
	9300 3750 9400 3750
Wire Wire Line
	9300 4300 9400 4300
Wire Wire Line
	9300 4850 9400 4850
$Comp
L R_Variable Pressure_Sensor1
U 1 1 5B3BFECF
P 1750 1800
F 0 "Pressure_Sensor1" V 1850 1700 50  0000 L CNN
F 1 "R_Variable" V 1650 1750 50  0000 L CNN
F 2 "" V 1680 1800 50  0001 C CNN
F 3 "" H 1750 1800 50  0001 C CNN
	1    1750 1800
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5B3C02DD
P 2350 1800
F 0 "R?" V 2430 1800 50  0000 C CNN
F 1 "R" V 2350 1800 50  0000 C CNN
F 2 "" V 2280 1800 50  0001 C CNN
F 3 "" H 2350 1800 50  0001 C CNN
	1    2350 1800
	0    -1   -1   0   
$EndComp
Text GLabel 1300 1800 0    60   Input ~ 0
5V
Text GLabel 2200 1550 2    60   Input ~ 0
Pressure1
$Comp
L GND #PWR?
U 1 1 5B3C0686
P 2700 1850
F 0 "#PWR?" H 2700 1600 50  0001 C CNN
F 1 "GND" H 2700 1700 50  0000 C CNN
F 2 "" H 2700 1850 50  0001 C CNN
F 3 "" H 2700 1850 50  0001 C CNN
	1    2700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1800 1600 1800
Wire Wire Line
	1900 1800 2100 1800
Wire Wire Line
	2100 1800 2200 1800
Wire Wire Line
	2500 1800 2700 1800
Wire Wire Line
	2700 1800 2700 1850
Wire Wire Line
	2200 1550 2100 1550
Wire Wire Line
	2100 1550 2100 1800
Connection ~ 2100 1800
Text Notes 7350 7500 0    60   ~ 0
Blow Mold Instrumentation
$Comp
L R_Variable Pressure_Sensor2
U 1 1 5B3C219E
P 1750 2500
F 0 "Pressure_Sensor2" V 1850 2400 50  0000 L CNN
F 1 "R_Variable" V 1650 2450 50  0000 L CNN
F 2 "" V 1680 2500 50  0001 C CNN
F 3 "" H 1750 2500 50  0001 C CNN
	1    1750 2500
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5B3C21A4
P 2350 2500
F 0 "R?" V 2430 2500 50  0000 C CNN
F 1 "R" V 2350 2500 50  0000 C CNN
F 2 "" V 2280 2500 50  0001 C CNN
F 3 "" H 2350 2500 50  0001 C CNN
	1    2350 2500
	0    -1   -1   0   
$EndComp
Text GLabel 1300 2500 0    60   Input ~ 0
5V
Text GLabel 2200 2250 2    60   Input ~ 0
Pressure2
$Comp
L GND #PWR?
U 1 1 5B3C21AC
P 2700 2550
F 0 "#PWR?" H 2700 2300 50  0001 C CNN
F 1 "GND" H 2700 2400 50  0000 C CNN
F 2 "" H 2700 2550 50  0001 C CNN
F 3 "" H 2700 2550 50  0001 C CNN
	1    2700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2500 1600 2500
Wire Wire Line
	1900 2500 2100 2500
Wire Wire Line
	2100 2500 2200 2500
Wire Wire Line
	2500 2500 2700 2500
Wire Wire Line
	2700 2500 2700 2550
Wire Wire Line
	2200 2250 2100 2250
Wire Wire Line
	2100 2250 2100 2500
Connection ~ 2100 2500
$Comp
L R_Variable Pressure_Sensor3
U 1 1 5B3C2273
P 1750 3200
F 0 "Pressure_Sensor3" V 1850 3100 50  0000 L CNN
F 1 "R_Variable" V 1650 3150 50  0000 L CNN
F 2 "" V 1680 3200 50  0001 C CNN
F 3 "" H 1750 3200 50  0001 C CNN
	1    1750 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5B3C2279
P 2350 3200
F 0 "R?" V 2430 3200 50  0000 C CNN
F 1 "R" V 2350 3200 50  0000 C CNN
F 2 "" V 2280 3200 50  0001 C CNN
F 3 "" H 2350 3200 50  0001 C CNN
	1    2350 3200
	0    -1   -1   0   
$EndComp
Text GLabel 1300 3200 0    60   Input ~ 0
5V
Text GLabel 2200 2950 2    60   Input ~ 0
Pressure3
$Comp
L GND #PWR?
U 1 1 5B3C2281
P 2700 3250
F 0 "#PWR?" H 2700 3000 50  0001 C CNN
F 1 "GND" H 2700 3100 50  0000 C CNN
F 2 "" H 2700 3250 50  0001 C CNN
F 3 "" H 2700 3250 50  0001 C CNN
	1    2700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3200 1600 3200
Wire Wire Line
	1900 3200 2100 3200
Wire Wire Line
	2100 3200 2200 3200
Wire Wire Line
	2500 3200 2700 3200
Wire Wire Line
	2700 3200 2700 3250
Wire Wire Line
	2200 2950 2100 2950
Wire Wire Line
	2100 2950 2100 3200
Connection ~ 2100 3200
$Comp
L R_Variable Pressure_Sensor4
U 1 1 5B3C228E
P 1750 3900
F 0 "Pressure_Sensor4" V 1850 3800 50  0000 L CNN
F 1 "R_Variable" V 1650 3850 50  0000 L CNN
F 2 "" V 1680 3900 50  0001 C CNN
F 3 "" H 1750 3900 50  0001 C CNN
	1    1750 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5B3C2294
P 2350 3900
F 0 "R?" V 2430 3900 50  0000 C CNN
F 1 "R" V 2350 3900 50  0000 C CNN
F 2 "" V 2280 3900 50  0001 C CNN
F 3 "" H 2350 3900 50  0001 C CNN
	1    2350 3900
	0    -1   -1   0   
$EndComp
Text GLabel 1300 3900 0    60   Input ~ 0
5V
Text GLabel 2200 3650 2    60   Input ~ 0
Pressure4
$Comp
L GND #PWR?
U 1 1 5B3C229C
P 2700 3950
F 0 "#PWR?" H 2700 3700 50  0001 C CNN
F 1 "GND" H 2700 3800 50  0000 C CNN
F 2 "" H 2700 3950 50  0001 C CNN
F 3 "" H 2700 3950 50  0001 C CNN
	1    2700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3900 1600 3900
Wire Wire Line
	1900 3900 2100 3900
Wire Wire Line
	2100 3900 2200 3900
Wire Wire Line
	2500 3900 2700 3900
Wire Wire Line
	2700 3900 2700 3950
Wire Wire Line
	2200 3650 2100 3650
Wire Wire Line
	2100 3650 2100 3900
Connection ~ 2100 3900
Text GLabel 7050 2900 2    60   Input ~ 0
Pressure1
Text GLabel 7050 3000 2    60   Input ~ 0
Pressure2
Text GLabel 7050 3100 2    60   Input ~ 0
Pressure3
Text GLabel 7050 3200 2    60   Input ~ 0
Pressure4
Text GLabel 5000 3300 0    60   Input ~ 0
Switch5
$Comp
L MS5541-30C U?
U 1 1 5B4F608C
P 6150 5450
F 0 "U?" H 6150 5450 60  0000 C CNN
F 1 "MS5541-30C" H 6150 5450 60  0000 C CNN
F 2 "" H 6150 5450 60  0001 C CNN
F 3 "" H 6150 5450 60  0001 C CNN
	1    6150 5450
	1    0    0    -1  
$EndComp
$Comp
L CP 47uF
U 1 1 5B4F62E9
P 4950 6100
F 0 "47uF" H 4975 6200 50  0000 L CNN
F 1 "CP" H 4975 6000 50  0000 L CNN
F 2 "" H 4988 5950 50  0001 C CNN
F 3 "" H 4950 6100 50  0001 C CNN
	1    4950 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5700 4950 5700
Wire Wire Line
	4950 5700 5200 5700
Wire Wire Line
	4950 5700 4950 5950
Wire Wire Line
	4950 6250 7350 6250
Wire Wire Line
	7350 6250 7350 5300
Wire Wire Line
	7100 5300 7350 5300
Wire Wire Line
	7350 5300 7700 5300
Text GLabel 4850 5700 0    60   Input ~ 0
3.3V
Connection ~ 4950 5700
Text GLabel 4850 5100 0    60   Input ~ 0
DataOut
Text GLabel 4850 5300 0    60   Input ~ 0
DataIn
Text GLabel 4850 5500 0    60   Input ~ 0
Clock
Text GLabel 7350 5100 2    60   Input ~ 0
DataClock
Wire Wire Line
	7100 5100 7350 5100
Wire Wire Line
	4850 5100 5200 5100
Wire Wire Line
	5200 5300 4850 5300
Wire Wire Line
	4850 5500 5200 5500
Text GLabel 5000 3400 0    60   Input ~ 0
Clock
Text GLabel 5000 3500 0    60   Input ~ 0
Switch3
Text GLabel 5000 3600 0    60   Input ~ 0
Switch2
Text GLabel 5000 3700 0    60   Input ~ 0
Switch1
$Comp
L GND #PWR?
U 1 1 5B4F8A7F
P 7700 5400
F 0 "#PWR?" H 7700 5150 50  0001 C CNN
F 1 "GND" H 7700 5250 50  0000 C CNN
F 2 "" H 7700 5400 50  0001 C CNN
F 3 "" H 7700 5400 50  0001 C CNN
	1    7700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5300 7700 5400
Connection ~ 7350 5300
Text Notes 1000 1300 0    79   ~ 0
Contact Pressure Sensors
Text Notes 5600 4800 0    79   ~ 0
Barometric Sensor
Text Notes 8950 2200 0    79   ~ 0
Switch Sensors
Text Notes 4500 6250 0    39   ~ 0
Tantulum Cap\n
Text Notes 4200 5550 0    39   ~ 0
32.768 kHz
Text Notes 7950 5150 0    79   ~ 0
Pin 1
Text Notes 4050 5150 0    79   ~ 0
Pin 8
Text Notes 4050 5350 0    79   ~ 0
Pin 7
Text Notes 7950 5350 0    79   ~ 0
Pin 2\n
Text Notes 4050 5750 0    79   ~ 0
Pin 5\n
Text GLabel 7150 2100 2    59   Input ~ 0
DataClock
Text GLabel 7150 2200 2    59   Input ~ 0
DataOut
Text GLabel 5000 2100 0    59   Input ~ 0
DataIn
Text GLabel 5000 3200 0    59   Input ~ 0
Switch4
Text Notes 4100 6750 0    59   ~ 0
Clock must be on Pin 9, Defined by library\n\n
Text GLabel 5000 3100 0    59   Input ~ 0
ResetSwitch
$Comp
L SW_SPDT SW?
U 1 1 5B6B4171
P 9600 5550
F 0 "SW?" H 9600 5720 50  0000 C CNN
F 1 "SW_SPDT" H 9600 5350 50  0000 C CNN
F 2 "" H 9600 5550 50  0001 C CNN
F 3 "" H 9600 5550 50  0001 C CNN
	1    9600 5550
	1    0    0    -1  
$EndComp
Text GLabel 9950 5650 2    60   Input ~ 0
3.3V
$Comp
L GND #PWR?
U 1 1 5B6B4178
P 10000 5400
F 0 "#PWR?" H 10000 5150 50  0001 C CNN
F 1 "GND" H 10000 5250 50  0000 C CNN
F 2 "" H 10000 5400 50  0001 C CNN
F 3 "" H 10000 5400 50  0001 C CNN
	1    10000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5450 9850 5450
Wire Wire Line
	9850 5450 9850 5400
Wire Wire Line
	9800 5650 9950 5650
Wire Wire Line
	9850 5400 10000 5400
Text GLabel 9300 5550 0    60   Input ~ 0
ResetSwitch
Wire Wire Line
	9300 5550 9400 5550
Text Notes 1050 4250 0    59   ~ 0
Increase to larger resistance for higher sensitivity\n
$Comp
L LM1875 U?
U 1 1 5B6B74E8
P 2300 5950
F 0 "U?" H 2500 6200 50  0000 C CNN
F 1 "LM1875" H 2500 6150 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-5_Pentawatt_Multiwatt-5_Vertical_StaggeredType1" H 2150 5950 50  0001 C CIN
F 3 "" H 2300 5950 50  0001 C CNN
	1    2300 5950
	1    0    0    -1  
$EndComp
$Comp
L R_Variable Pressure_Sensor?
U 1 1 5B6B77BF
P 1500 5800
F 0 "Pressure_Sensor?" V 1600 5700 50  0000 L CNN
F 1 "R_s" V 1400 5750 50  0000 L CNN
F 2 "" V 1430 5800 50  0001 C CNN
F 3 "" H 1500 5800 50  0001 C CNN
	1    1500 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B6B8073
P 2300 6400
F 0 "#PWR?" H 2300 6150 50  0001 C CNN
F 1 "GND" H 2300 6250 50  0000 C CNN
F 2 "" H 2300 6400 50  0001 C CNN
F 3 "" H 2300 6400 50  0001 C CNN
	1    2300 6400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B6B848D
P 2250 5000
F 0 "R?" V 2330 5000 50  0000 C CNN
F 1 "R_f" V 2250 5000 50  0000 C CNN
F 2 "" V 2180 5000 50  0001 C CNN
F 3 "" H 2250 5000 50  0001 C CNN
	1    2250 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 5800 1850 5800
Wire Wire Line
	1850 5800 1850 5000
Wire Wire Line
	1850 5000 2100 5000
Wire Wire Line
	2400 5000 2850 5000
Wire Wire Line
	2850 5000 2850 5950
Wire Wire Line
	2300 6300 2300 6400
$Comp
L GND #PWR?
U 1 1 5B6B8847
P 1750 6400
F 0 "#PWR?" H 1750 6150 50  0001 C CNN
F 1 "GND" H 1750 6250 50  0000 C CNN
F 2 "" H 1750 6400 50  0001 C CNN
F 3 "" H 1750 6400 50  0001 C CNN
	1    1750 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6100 1750 6100
Wire Wire Line
	1750 6100 1750 6400
Text GLabel 1050 5800 0    59   Input ~ 0
~1V
Text GLabel 2400 5400 2    59   Input ~ 0
5V
Text GLabel 3100 5950 2    59   Input ~ 0
Vout
Wire Wire Line
	1050 5800 1350 5800
Wire Wire Line
	2400 5400 2300 5400
Wire Wire Line
	2300 5400 2300 5600
Wire Wire Line
	2850 5950 3100 5950
Text Notes 600  5350 0    59   ~ 0
Use Op-Amp circuit for \neach pressure sensor if \nexact pressure values \nare wanted\n
Text Notes 7050 6900 0    59   ~ 0
Intern: Jerry Lee\nSupervisor: Alexander Mouschovias\nTerm: Summer 2018
Text Notes 8750 1650 0    59   ~ 0
Switch Pins are Labeled: C, NO, NC\nC:  Connects to Arduino Pin\nNO: Connects to Power (3.3V/5V)\nNC: Connects to GND
Text Notes 1750 6850 0    59   ~ 0
V_out = -V_t * (R_f / R_s)
Text Notes 4100 7300 0    59   ~ 0
Decoupling Capacitor:\n47uF Tantalum Capacitor must be places as close as \npossible to the VDD pin of sensor. Capacitor will \nstabilize power supply during data conversion \nfor highest accuracy possible.
Text Notes 4100 6400 0    59   ~ 0
Crystal Oscillator recommended to avoid clock jitter but in circuit but here, clock will be generated with Arduino
Text Notes 650  6300 0    59   ~ 0
**Only for reference**\nNot used in this design
$EndSCHEMATC
