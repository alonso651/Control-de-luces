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
U 1 1 5CD0873D
P 2800 2200
F 0 "NodeMCU_V2" H 2800 3000 50  0000 C CNN
F 1 "NodeMCU_Amica_R2" H 2800 1350 50  0000 C CNN
F 2 "" H 3050 2200 50  0000 C CNN
F 3 "" H 3050 2200 50  0000 C CNN
	1    2800 2200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 Entrada_5V
U 1 1 5CD08946
P 4950 1500
F 0 "Entrada_5V" H 4950 1600 50  0000 C CNN
F 1 "Conn_01x02" H 4950 1300 50  0000 C CNN
F 2 "" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 Conector_botones
U 1 1 5CD089B3
P 4950 2050
F 0 "Conector_botones" H 4950 2250 50  0000 C CNN
F 1 "Conn_01x04" H 4950 1750 50  0000 C CNN
F 2 "" H 4950 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1600 3700 1600
Wire Wire Line
	3250 1700 3700 1700
Wire Wire Line
	3250 1800 3700 1800
Wire Wire Line
	3250 2200 3700 2200
Wire Wire Line
	3250 2300 3700 2300
Wire Wire Line
	3250 2500 3700 2500
Wire Wire Line
	3250 2800 3700 2800
Wire Wire Line
	3250 2900 3700 2900
Wire Wire Line
	2350 2900 1850 2900
Wire Wire Line
	2350 2800 1850 2800
Wire Wire Line
	2350 2500 1850 2500
Wire Wire Line
	2350 2400 1850 2400
Wire Wire Line
	3250 2100 3700 2100
Wire Wire Line
	3250 2000 3700 2000
Wire Wire Line
	4750 1500 4300 1500
Wire Wire Line
	4750 1600 4300 1600
Wire Wire Line
	4750 1950 4300 1950
Wire Wire Line
	4750 2050 4300 2050
Wire Wire Line
	4750 2150 4300 2150
Wire Wire Line
	4750 2250 4300 2250
Text Label 4300 1500 0    60   ~ 0
5V
Text Label 4300 1600 0    60   ~ 0
GND
Text Label 4300 1950 0    60   ~ 0
GND
Text Label 4300 2050 0    60   ~ 0
BOTON1
Text Label 4300 2150 0    60   ~ 0
BOTON2
Text Label 4300 2250 0    60   ~ 0
BOTON3
Text Label 3450 1600 0    60   ~ 0
RELE1
Text Label 3450 1700 0    60   ~ 0
RELE2
Text Label 3450 1800 0    60   ~ 0
RELE3
Text Label 3550 2000 0    60   ~ 0
3V3
Text Label 3550 2100 0    60   ~ 0
GND
Text Label 3400 2200 0    60   ~ 0
BOTON1
Text Label 3400 2300 0    60   ~ 0
BOTON2
Text Label 3400 2500 0    60   ~ 0
BOTON3
Text Label 3550 2800 0    60   ~ 0
GND
Text Label 3550 2900 0    60   ~ 0
3V3
Text Label 1850 2900 0    60   ~ 0
5V
Text Label 1850 2800 0    60   ~ 0
GND
Text Label 1850 2500 0    60   ~ 0
3V3
Text Label 1850 2400 0    60   ~ 0
GND
$Comp
L R R3
U 1 1 5CD08BD9
P 2800 3700
F 0 "R3" V 2880 3700 50  0000 C CNN
F 1 "R" V 2800 3700 50  0000 C CNN
F 2 "" V 2730 3700 50  0001 C CNN
F 3 "" H 2800 3700 50  0001 C CNN
	1    2800 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5CD08BFE
P 2800 3500
F 0 "R2" V 2880 3500 50  0000 C CNN
F 1 "R" V 2800 3500 50  0000 C CNN
F 2 "" V 2730 3500 50  0001 C CNN
F 3 "" H 2800 3500 50  0001 C CNN
	1    2800 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5CD08C45
P 2800 3300
F 0 "R1" V 2880 3300 50  0000 C CNN
F 1 "R" V 2800 3300 50  0000 C CNN
F 2 "" V 2730 3300 50  0001 C CNN
F 3 "" H 2800 3300 50  0001 C CNN
	1    2800 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3300 2150 3300
Wire Wire Line
	2650 3500 2150 3500
Wire Wire Line
	2650 3700 2150 3700
Wire Wire Line
	2950 3300 3400 3300
Wire Wire Line
	2950 3500 3400 3500
Wire Wire Line
	2950 3700 3400 3700
Text Label 2150 3300 0    60   ~ 0
BOTON1
Text Label 2150 3500 0    60   ~ 0
BOTON2
Text Label 2150 3700 0    60   ~ 0
BOTON3
Text Label 3250 3300 0    60   ~ 0
3V3
Text Label 3250 3500 0    60   ~ 0
3V3
Text Label 3250 3700 0    60   ~ 0
3V3
$Comp
L Conn_01x05 Conector_reles
U 1 1 5CD09203
P 4950 2850
F 0 "Conector_reles" H 4950 3150 50  0000 C CNN
F 1 "Conn_01x05" H 4950 2550 50  0000 C CNN
F 2 "" H 4950 2850 50  0001 C CNN
F 3 "" H 4950 2850 50  0001 C CNN
	1    4950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2650 4300 2650
Wire Wire Line
	4750 2750 4300 2750
Wire Wire Line
	4750 2850 4300 2850
Wire Wire Line
	4750 2950 4300 2950
Wire Wire Line
	4750 3050 4300 3050
Text Label 4300 2650 0    60   ~ 0
3V3
Text Label 4300 2750 0    60   ~ 0
GND
Text Label 4300 2850 0    60   ~ 0
RELE1
Text Label 4300 2950 0    60   ~ 0
RELE2
Text Label 4300 3050 0    60   ~ 0
RELE3
$EndSCHEMATC
