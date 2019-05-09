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
LIBS:nodemcu
EELAYER 25 0
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
L NodeMCU_Amica_R2 NodeMCU_V2
U 1 1 5CD081FB
P 2600 3250
F 0 "NodeMCU_V2" H 2600 4050 50  0000 C CNN
F 1 "NodeMCU_Amica_R2" H 2600 2400 50  0000 C CNN
F 2 "" H 2850 3250 50  0000 C CNN
F 3 "" H 2850 3250 50  0000 C CNN
	1    2600 3250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05 Conector_sensores
U 1 1 5CD083E8
P 4700 2700
F 0 "Conector_sensores" H 4700 3000 50  0000 C CNN
F 1 "Conn_01x05" H 4700 2400 50  0000 C CNN
F 2 "" H 4700 2700 50  0001 C CNN
F 3 "" H 4700 2700 50  0001 C CNN
	1    4700 2700
	1    0    0    -1  
$EndComp
Text Label 4050 2500 0    60   ~ 0
3V3
Text Label 4050 2600 0    60   ~ 0
GND
Text Label 4050 2700 0    60   ~ 0
PIR
Text Label 4050 2800 0    60   ~ 0
DHT11
Text Label 4050 2900 0    60   ~ 0
LDR
Wire Wire Line
	4050 2500 4500 2500
Wire Wire Line
	4500 2600 4050 2600
Wire Wire Line
	4500 2700 4050 2700
Wire Wire Line
	4500 2800 4050 2800
Wire Wire Line
	4500 2900 4050 2900
Wire Wire Line
	2150 3550 1700 3550
Wire Wire Line
	2150 3450 1700 3450
Wire Wire Line
	2150 3950 1700 3950
Wire Wire Line
	2150 3850 1700 3850
Wire Wire Line
	3050 2650 3500 2650
Wire Wire Line
	3050 2750 3500 2750
Wire Wire Line
	2150 2550 1700 2550
Text Label 3250 2650 0    60   ~ 0
DHT11
Text Label 3250 2750 0    60   ~ 0
PIR
Text Label 1700 2550 0    60   ~ 0
LDR
Text Label 1700 3450 0    60   ~ 0
GND
Text Label 1700 3550 0    60   ~ 0
3V3
Text Label 1700 3850 0    60   ~ 0
GND
Text Label 1700 3950 0    60   ~ 0
5V
$Comp
L Conn_01x02 Entrada_5V
U 1 1 5CD08548
P 4700 3400
F 0 "Entrada_5V" H 4700 3500 50  0000 C CNN
F 1 "Conn_01x02" H 4700 3200 50  0000 C CNN
F 2 "" H 4700 3400 50  0001 C CNN
F 3 "" H 4700 3400 50  0001 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3400 4050 3400
Wire Wire Line
	4500 3500 4050 3500
Text Label 4050 3400 0    60   ~ 0
5V
Text Label 4050 3500 0    60   ~ 0
GND
Wire Wire Line
	3050 3050 3500 3050
Wire Wire Line
	3050 3150 3500 3150
Wire Wire Line
	3050 3850 3500 3850
Wire Wire Line
	3050 3950 3500 3950
Text Label 3350 3050 0    60   ~ 0
3V3
Text Label 3350 3150 0    60   ~ 0
GND
Text Label 3350 3850 0    60   ~ 0
GND
Text Label 3350 3950 0    60   ~ 0
3V3
$EndSCHEMATC
