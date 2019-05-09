EESchema Schematic File Version 4
EELAYER 29 0
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
L Sensor_Optical:LDR03 R1
U 1 1 5CD249A2
P 2100 3000
F 0 "R1" H 2170 3046 50  0000 L CNN
F 1 "LDR03" H 2170 2955 50  0000 L CNN
F 2 "OptoDevice:R_LDR_10x8.5mm_P7.6mm_Vertical" V 2275 3000 50  0001 C CNN
F 3 "http://www.elektronica-componenten.nl/WebRoot/StoreNL/Shops/61422969/54F1/BA0C/C664/31B9/2173/C0A8/2AB9/2AEF/LDR03IMP.pdf" H 2100 2950 50  0001 C CNN
	1    2100 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5CD26C89
P 2450 1700
F 0 "J1" H 2530 1692 50  0000 L CNN
F 1 "DHT11" H 2530 1601 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2450 1700 50  0001 C CNN
F 3 "~" H 2450 1700 50  0001 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5CD27744
P 2450 2350
F 0 "J2" H 2530 2392 50  0000 L CNN
F 1 "Conn_01x05" H 2530 2301 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 2450 2350 50  0001 C CNN
F 3 "~" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2150 1700 2150
Wire Wire Line
	2250 2550 1700 2550
Wire Wire Line
	2250 2450 1700 2450
Wire Wire Line
	2250 2250 1700 2250
Wire Wire Line
	2250 2350 1700 2350
Text Label 1700 2150 0    50   ~ 0
GND
Text Label 1700 2550 0    50   ~ 0
VCC
Text Label 1700 2450 0    50   ~ 0
PIR
Text Label 1700 2250 0    50   ~ 0
DHT11
Text Label 1700 2350 0    50   ~ 0
LDR
Wire Wire Line
	2250 1600 1750 1600
Wire Wire Line
	2250 1700 1750 1700
Wire Wire Line
	2250 1900 1750 1900
Text Label 1750 1600 0    50   ~ 0
VCC
Text Label 1750 1700 0    50   ~ 0
DHT11
Text Label 1750 1900 0    50   ~ 0
GND
Wire Wire Line
	1550 3000 1950 3000
Text Label 1550 3000 0    50   ~ 0
LDR
Wire Wire Line
	2250 3450 2700 3450
Wire Wire Line
	1950 3450 1550 3450
Text Label 1550 3450 0    50   ~ 0
LDR
Text Label 2700 3450 0    50   ~ 0
GND
$Comp
L sensors:PIR_Motion_Sensor PIR1
U 1 1 5CD23504
P 4550 2200
F 0 "PIR1" V 4444 2928 60  0000 L CNN
F 1 "PIR_Motion_Sensor" V 4550 2928 60  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" V 4656 2928 60  0000 L CNN
F 3 "" H 4550 3000 60  0000 C CNN
	1    4550 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2100 4050 2100
$Comp
L Device:R R2
U 1 1 5CD2C9FB
P 2100 3450
F 0 "R2" V 1893 3450 50  0000 C CNN
F 1 "R" V 1984 3450 50  0000 C CNN
F 2 "" V 2030 3450 50  0001 C CNN
F 3 "~" H 2100 3450 50  0001 C CNN
	1    2100 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2200 4050 2200
Wire Wire Line
	4550 2300 4050 2300
Text Label 2700 3000 0    50   ~ 0
VCC
Wire Wire Line
	2250 3000 2700 3000
Text Label 4050 2300 0    50   ~ 0
VCC
Text Label 4050 2100 0    50   ~ 0
GND
Text Label 4050 2200 0    50   ~ 0
PIR
$EndSCHEMATC
