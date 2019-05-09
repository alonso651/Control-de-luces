EESchema Schematic File Version 4
LIBS:Nodo_actuador_nodemcu-cache
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
L nodemcu:NodeMCU_Amica_R2 U1
U 1 1 5CD0873D
P 2800 2200
F 0 "U1" H 2800 3000 50  0000 C CNN
F 1 "NodeMCU_Amica_R2" H 2800 1350 50  0000 C CNN
F 2 "nodemcu:NodeMCU_Amica_R2" H 3050 2200 50  0001 C CNN
F 3 "" H 3050 2200 50  0000 C CNN
	1    2800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2300 3700 2300
Wire Wire Line
	3250 2500 3700 2500
Wire Wire Line
	2350 2900 1850 2900
Wire Wire Line
	2350 2800 1850 2800
Wire Wire Line
	2350 2500 1850 2500
Wire Wire Line
	3250 2100 3700 2100
Wire Wire Line
	4750 1500 4300 1500
Wire Wire Line
	4750 1600 4300 1600
Wire Wire Line
	4750 1850 4300 1850
Wire Wire Line
	4750 1950 4300 1950
Wire Wire Line
	4750 2050 4300 2050
Wire Wire Line
	4750 2150 4300 2150
Text Label 4300 1500 0    60   ~ 0
5V
Text Label 4300 1600 0    60   ~ 0
GND
Text Label 4300 1850 0    60   ~ 0
GND
Text Label 4300 1950 0    60   ~ 0
BOTON1
Text Label 4300 2050 0    60   ~ 0
BOTON2
Text Label 4300 2150 0    60   ~ 0
BOTON3
Text Label 3550 2100 0    60   ~ 0
GND
Text Label 3400 2300 0    60   ~ 0
BOTON2
Text Label 3400 2500 0    60   ~ 0
BOTON4
Text Label 1850 2900 0    60   ~ 0
5V
Text Label 1850 2800 0    60   ~ 0
GND
Text Label 1850 2500 0    60   ~ 0
3V3
Wire Wire Line
	4750 2250 4300 2250
Wire Wire Line
	4750 2350 4300 2350
Wire Wire Line
	4750 2450 4300 2450
Text Label 4300 2250 0    50   ~ 0
BOTON4
Text Label 4300 2350 0    50   ~ 0
BOTON5
Text Label 4300 2450 0    50   ~ 0
BOTON6
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5CD2C4E0
P 4950 1500
F 0 "J1" H 5178 1546 50  0000 L CNN
F 1 "Entrada 5V" H 5178 1455 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 4950 1500 50  0001 C CNN
F 3 "~" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
Text Label 3400 2200 0    60   ~ 0
BOTON1
Wire Wire Line
	3250 2200 3700 2200
Text Label 3450 1800 0    60   ~ 0
RELE4
Wire Wire Line
	3250 1800 3700 1800
Text Label 3450 1700 0    60   ~ 0
RELE3
Text Label 3450 1600 0    60   ~ 0
RELE2
Text Label 3450 1500 0    60   ~ 0
RELE1
Wire Wire Line
	3250 1700 3700 1700
Wire Wire Line
	3250 1600 3700 1600
Wire Wire Line
	3250 1500 3700 1500
Wire Wire Line
	3250 1900 3700 1900
Wire Wire Line
	2350 1800 1850 1800
Text Label 1850 1800 0    60   ~ 0
RELE6
Wire Wire Line
	3250 2400 3700 2400
Text Label 3400 2400 0    60   ~ 0
BOTON3
Wire Wire Line
	3250 2700 3700 2700
Text Label 3400 2700 0    60   ~ 0
BOTON6
Wire Wire Line
	3250 2600 3700 2600
Text Label 3400 2600 0    60   ~ 0
BOTON5
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 5CD1A8C1
P 4950 2950
F 0 "J3" H 5178 2996 50  0000 L CNN
F 1 "Conector_reles" H 5178 2905 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4950 2950 50  0001 C CNN
F 3 "~" H 4950 2950 50  0001 C CNN
	1    4950 2950
	1    0    0    -1  
$EndComp
Text Label 4300 3350 0    50   ~ 0
RELE6
Text Label 4300 3250 0    50   ~ 0
RELE5
Text Label 4300 3150 0    50   ~ 0
RELE4
Text Label 4300 3050 0    50   ~ 0
RELE3
Text Label 4300 2950 0    50   ~ 0
RELE2
Text Label 4300 2850 0    50   ~ 0
RELE1
Text Label 4300 2750 0    50   ~ 0
GND
Text Label 4300 2650 0    50   ~ 0
3V3
Wire Wire Line
	4750 3350 4300 3350
Wire Wire Line
	4750 3250 4300 3250
Wire Wire Line
	4750 3150 4300 3150
Wire Wire Line
	4750 3050 4300 3050
Wire Wire Line
	4750 2950 4300 2950
Wire Wire Line
	4750 2850 4300 2850
Wire Wire Line
	4750 2750 4300 2750
Wire Wire Line
	4750 2650 4300 2650
Text Label 2400 4400 3    50   ~ 0
3V3
Text Label 2650 4400 3    50   ~ 0
3V3
Text Label 2900 4400 3    50   ~ 0
3V3
Text Label 3150 4400 3    50   ~ 0
3V3
Text Label 3400 4400 3    50   ~ 0
3V3
Wire Wire Line
	3650 4100 3650 4400
Wire Wire Line
	3400 4100 3400 4400
Wire Wire Line
	3150 4100 3150 4400
Wire Wire Line
	2900 4100 2900 4400
Wire Wire Line
	2650 4100 2650 4400
Wire Wire Line
	2400 4100 2400 4400
$Comp
L Device:R R6
U 1 1 5CD38161
P 3650 3950
F 0 "R6" H 3720 3996 50  0000 L CNN
F 1 "R" H 3720 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3580 3950 50  0001 C CNN
F 3 "~" H 3650 3950 50  0001 C CNN
	1    3650 3950
	1    0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5CD375B6
P 3400 3950
F 0 "R5" H 3470 3996 50  0000 L CNN
F 1 "R" H 3470 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3330 3950 50  0001 C CNN
F 3 "~" H 3400 3950 50  0001 C CNN
	1    3400 3950
	1    0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5CD359FC
P 3150 3950
F 0 "R4" H 3220 3996 50  0000 L CNN
F 1 "R" H 3220 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3080 3950 50  0001 C CNN
F 3 "~" H 3150 3950 50  0001 C CNN
	1    3150 3950
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5CD34D37
P 2900 3950
F 0 "R3" H 2970 3996 50  0000 L CNN
F 1 "R" H 2970 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2830 3950 50  0001 C CNN
F 3 "~" H 2900 3950 50  0001 C CNN
	1    2900 3950
	1    0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5CD3421A
P 2650 3950
F 0 "R2" H 2720 3996 50  0000 L CNN
F 1 "R" H 2720 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2580 3950 50  0001 C CNN
F 3 "~" H 2650 3950 50  0001 C CNN
	1    2650 3950
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5CD2E364
P 2400 3950
F 0 "R1" H 2470 3996 50  0000 L CNN
F 1 "R" H 2470 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2330 3950 50  0001 C CNN
F 3 "~" H 2400 3950 50  0001 C CNN
	1    2400 3950
	1    0    0    1   
$EndComp
Text Label 3650 4400 3    50   ~ 0
3V3
Text Label 2400 3450 3    50   ~ 0
BOTON1
Text Label 2650 3450 3    50   ~ 0
BOTON2
Text Label 2900 3450 3    50   ~ 0
BOTON3
Text Label 3150 3450 3    50   ~ 0
BOTON4
Text Label 3400 3450 3    50   ~ 0
BOTON5
Text Label 3650 3450 3    50   ~ 0
BOTON6
Wire Wire Line
	2400 3800 2400 3450
Wire Wire Line
	2650 3800 2650 3450
Wire Wire Line
	2900 3800 2900 3450
Wire Wire Line
	3150 3800 3150 3450
Wire Wire Line
	3400 3800 3400 3450
Wire Wire Line
	3650 3800 3650 3450
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5CD2D1AD
P 4950 1850
F 0 "J2" H 5030 1842 50  0000 L CNN
F 1 "Conn_01x02" H 5030 1751 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 4950 1850 50  0001 C CNN
F 3 "~" H 4950 1850 50  0001 C CNN
	1    4950 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5CD2D656
P 4950 2250
F 0 "J4" H 5030 2292 50  0000 L CNN
F 1 "Conn_01x05" H 5030 2201 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-5_P5.08mm" H 4950 2250 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4950 2250
	1    0    0    -1  
$EndComp
Text Label 3450 1900 0    60   ~ 0
RELE5
$EndSCHEMATC
