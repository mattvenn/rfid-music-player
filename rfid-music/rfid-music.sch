EESchema Schematic File Version 3
LIBS:4xxx
LIBS:4xxx_IEEE
LIBS:74xGxx
LIBS:74xx
LIBS:74xx_IEEE
LIBS:Amplifier_Audio
LIBS:Amplifier_Buffer
LIBS:Amplifier_Current
LIBS:Amplifier_Difference
LIBS:Amplifier_Instrumentation
LIBS:Amplifier_Operational
LIBS:Amplifier_Video
LIBS:Analog
LIBS:Analog_ADC
LIBS:Analog_DAC
LIBS:Analog_Switch
LIBS:Audio
LIBS:Battery_Management
LIBS:Comparator
LIBS:Connector
LIBS:Connector_Generic
LIBS:Connector_Generic_MountingPin
LIBS:Connector_Generic_Shielded
LIBS:Converter_ACDC
LIBS:Converter_DCDC
LIBS:CPLD_Altera
LIBS:CPLD_Xilinx
LIBS:CPU
LIBS:CPU_NXP_6800
LIBS:CPU_NXP_68000
LIBS:CPU_PowerPC
LIBS:Device
LIBS:Diode
LIBS:Diode_Bridge
LIBS:Diode_Laser
LIBS:Display_Character
LIBS:Display_Graphic
LIBS:Driver_Display
LIBS:Driver_FET
LIBS:Driver_LED
LIBS:Driver_Motor
LIBS:Driver_Relay
LIBS:DSP_Freescale
LIBS:DSP_Microchip_DSPIC33
LIBS:DSP_Motorola
LIBS:DSP_Texas
LIBS:Filter
LIBS:FPGA_Microsemi
LIBS:FPGA_Xilinx
LIBS:FPGA_Xilinx_Artix7
LIBS:FPGA_Xilinx_Kintex7
LIBS:FPGA_Xilinx_Spartan6
LIBS:FPGA_Xilinx_Virtex5
LIBS:FPGA_Xilinx_Virtex6
LIBS:FPGA_Xilinx_Virtex7
LIBS:GPU
LIBS:Graphic
LIBS:Interface
LIBS:Interface_CAN_LIN
LIBS:Interface_CurrentLoop
LIBS:Interface_Ethernet
LIBS:Interface_Expansion
LIBS:Interface_HID
LIBS:Interface_LineDriver
LIBS:Interface_Optical
LIBS:Interface_Telecom
LIBS:Interface_UART
LIBS:Interface_USB
LIBS:Isolator
LIBS:Isolator_Analog
LIBS:Jumper
LIBS:LED
LIBS:Logic_LevelTranslator
LIBS:Logic_Programmable
LIBS:MCU_AnalogDevices
LIBS:MCU_Cypress
LIBS:MCU_Espressif
LIBS:MCU_Intel
LIBS:MCU_Microchip_8051
LIBS:MCU_Microchip_ATmega
LIBS:MCU_Microchip_ATtiny
LIBS:MCU_Microchip_AVR
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_SAME
LIBS:MCU_Microchip_SAML
LIBS:MCU_Module
LIBS:MCU_Nordic
LIBS:MCU_NXP_ColdFire
LIBS:MCU_NXP_HC11
LIBS:MCU_NXP_HC12
LIBS:MCU_NXP_HCS12
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_MAC7100
LIBS:MCU_NXP_MCore
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_SiFive
LIBS:MCU_SiliconLabs
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32F0
LIBS:MCU_ST_STM32F1
LIBS:MCU_ST_STM32F2
LIBS:MCU_ST_STM32F3
LIBS:MCU_ST_STM32F4
LIBS:MCU_ST_STM32F7
LIBS:MCU_ST_STM32H7
LIBS:MCU_ST_STM32L0
LIBS:MCU_ST_STM32L1
LIBS:MCU_ST_STM32L4
LIBS:MCU_ST_STM32L4+
LIBS:MCU_Texas
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:Memory_Controller
LIBS:Memory_EEPROM
LIBS:Memory_EPROM
LIBS:Memory_Flash
LIBS:Memory_NVRAM
LIBS:Memory_RAM
LIBS:Memory_ROM
LIBS:Memory_UniqueID
LIBS:Motor
LIBS:Oscillator
LIBS:Potentiometer_Digital
LIBS:power
LIBS:Power_Management
LIBS:Power_Protection
LIBS:Power_Supervisor
LIBS:pspice
LIBS:Reference_Current
LIBS:Reference_Voltage
LIBS:Regulator_Controller
LIBS:Regulator_Current
LIBS:Regulator_Linear
LIBS:Regulator_SwitchedCapacitor
LIBS:Regulator_Switching
LIBS:Relay
LIBS:Relay_SolidState
LIBS:RF
LIBS:RF_AM_FM
LIBS:RF_Amplifier
LIBS:RF_Bluetooth
LIBS:RF_GPS
LIBS:RF_Mixer
LIBS:RF_Module
LIBS:RF_RFID
LIBS:RF_Switch
LIBS:RF_WiFi
LIBS:RF_ZigBee
LIBS:Sensor
LIBS:Sensor_Audio
LIBS:Sensor_Current
LIBS:Sensor_Gas
LIBS:Sensor_Humidity
LIBS:Sensor_Magnetic
LIBS:Sensor_Motion
LIBS:Sensor_Optical
LIBS:Sensor_Pressure
LIBS:Sensor_Proximity
LIBS:Sensor_Temperature
LIBS:Sensor_Touch
LIBS:Sensor_Voltage
LIBS:Switch
LIBS:Timer
LIBS:Timer_PLL
LIBS:Timer_RTC
LIBS:Transformer
LIBS:Transistor_Array
LIBS:Transistor_BJT
LIBS:Transistor_FET
LIBS:Transistor_IGBT
LIBS:Triac_Thyristor
LIBS:Valve
LIBS:Video
LIBS:teensy
LIBS:test-jig
LIBS:max98357
LIBS:rfid-music-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RFID music player"
Date "2018-07-24"
Rev "2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Micro_SD_Card J2
U 1 1 5B56E17A
P 9600 1750
F 0 "J2" H 9550 2467 50  0000 C CNN
F 1 "Micro_SD_Card" H 9550 2376 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3D-SF" H 10750 2050 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 9600 1750 50  0001 C CNN
F 4 "1764377" H 9600 1750 60  0001 C CNN "farnell #"
F 5 "Value" H 9600 1750 60  0001 C CNN "supplier"
F 6 "Value" H 9600 1750 60  0001 C CNN "supplier PN"
F 7 "Value" H 9600 1750 60  0001 C CNN "MOQ"
F 8 "Value" H 9600 1750 60  0001 C CNN "leadtime"
	1    9600 1750
	1    0    0    -1  
$EndComp
$Comp
L Teensy3.1 U2
U 1 1 5B56E355
P 2400 6150
F 0 "U2" H 2400 7737 60  0000 C CNN
F 1 "Teensy3.1" H 2400 7631 60  0000 C CNN
F 2 "fp:teensy31" H 2400 5350 60  0001 C CNN
F 3 "" H 2400 5350 60  0000 C CNN
	1    2400 6150
	1    0    0    -1  
$EndComp
$Comp
L apa102 U1
U 1 1 5B56E45A
P 2050 1450
F 0 "U1" H 2050 1797 60  0000 C CNN
F 1 "apa102" H 2050 1691 60  0000 C CNN
F 2 "fp:apa102" H 2000 1650 60  0001 C CNN
F 3 "" H 2000 1650 60  0001 C CNN
	1    2050 1450
	1    0    0    -1  
$EndComp
$Comp
L max98357 U3
U 1 1 5B56EBE2
P 2300 3450
F 0 "U3" H 2275 4187 60  0000 C CNN
F 1 "max98357" H 2275 4081 60  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP2.7x2.7mm_ThermalVias" H 2250 3650 60  0001 C CNN
F 3 "" H 2250 3650 60  0001 C CNN
	1    2300 3450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08_Male J1
U 1 1 5B56ED79
P 6650 1800
F 0 "J1" H 6756 2278 50  0000 C CNN
F 1 "Conn_01x08_Male" H 6756 2187 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6650 1800 50  0001 C CNN
F 3 "~" H 6650 1800 50  0001 C CNN
	1    6650 1800
	1    0    0    -1  
$EndComp
Text Label 6850 1500 0    60   ~ 0
rfid_cs
Text Label 6850 1600 0    60   ~ 0
sck
Text Label 6850 1700 0    60   ~ 0
mosi
Text Label 6850 1800 0    60   ~ 0
miso
Text Label 6850 2100 0    60   ~ 0
rfid_rst
$Comp
L +3.3V #PWR03
U 1 1 5B56EE69
P 6850 2200
F 0 "#PWR03" H 6850 2050 50  0001 C CNN
F 1 "+3.3V" V 6865 2328 50  0000 L CNN
F 2 "" H 6850 2200 50  0001 C CNN
F 3 "" H 6850 2200 50  0001 C CNN
	1    6850 2200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5B56EEDE
P 6850 2000
F 0 "#PWR02" H 6850 1750 50  0001 C CNN
F 1 "GND" V 6855 1872 50  0000 R CNN
F 2 "" H 6850 2000 50  0001 C CNN
F 3 "" H 6850 2000 50  0001 C CNN
	1    6850 2000
	0    -1   -1   0   
$EndComp
NoConn ~ 6850 1900
Text Label 1700 3100 2    60   ~ 0
i2s_bclk
Text Label 1700 3200 2    60   ~ 0
i2s_lrclk
Text Label 1700 3300 2    60   ~ 0
i2s_din
$Comp
L +5V #PWR011
U 1 1 5B56EFB6
P 1150 3550
F 0 "#PWR011" H 1150 3400 50  0001 C CNN
F 1 "+5V" H 1165 3723 50  0000 C CNN
F 2 "" H 1150 3550 50  0001 C CNN
F 3 "" H 1150 3550 50  0001 C CNN
	1    1150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3550 1700 3550
$Comp
L GND #PWR012
U 1 1 5B56F02E
P 1150 3950
F 0 "#PWR012" H 1150 3700 50  0001 C CNN
F 1 "GND" H 1155 3777 50  0000 C CNN
F 2 "" H 1150 3950 50  0001 C CNN
F 3 "" H 1150 3950 50  0001 C CNN
	1    1150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3950 1150 3950
$Comp
L Conn_01x02_Female J3
U 1 1 5B56F104
P 3550 3000
F 0 "J3" H 3577 2976 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3577 2885 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3550 3000 50  0001 C CNN
F 3 "~" H 3550 3000 50  0001 C CNN
	1    3550 3000
	1    0    0    -1  
$EndComp
$Comp
L Ferrite_Bead_Small L1
U 1 1 5B56F1F2
P 3050 3000
F 0 "L1" V 2813 3000 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 2904 3000 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 2980 3000 50  0001 C CNN
F 3 "~" H 3050 3000 50  0001 C CNN
	1    3050 3000
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L2
U 1 1 5B56F240
P 3050 3150
F 0 "L2" V 2813 3150 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 2904 3150 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 2980 3150 50  0001 C CNN
F 3 "~" H 3050 3150 50  0001 C CNN
	1    3050 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3000 2950 3000
Wire Wire Line
	3150 3000 3350 3000
Wire Wire Line
	3150 3100 3350 3100
Wire Wire Line
	3150 3100 3150 3150
Wire Wire Line
	2950 3150 2850 3150
Text Label 1300 5850 2    60   ~ 0
i2s_bclk
Text Label 3500 7250 0    60   ~ 0
i2s_lrclk
Text Label 3500 7350 0    60   ~ 0
i2s_din
Text Label 1300 6950 2    60   ~ 0
rfid_cs
Text Label 1300 6850 2    60   ~ 0
sck
Text Label 1300 5650 2    60   ~ 0
mosi
Text Label 1300 6150 2    60   ~ 0
miso
Text Label 1300 7050 2    60   ~ 0
rfid_rst
NoConn ~ 8700 1450
NoConn ~ 8700 2150
Text Label 8700 1550 2    60   ~ 0
sd_cs
Text Label 8700 1650 2    60   ~ 0
mosi
Text Label 8700 1850 2    60   ~ 0
sck
Text Label 8700 2050 2    60   ~ 0
miso
$Comp
L GND #PWR05
U 1 1 5B56F692
P 8300 1950
F 0 "#PWR05" H 8300 1700 50  0001 C CNN
F 1 "GND" H 8305 1777 50  0000 C CNN
F 2 "" H 8300 1950 50  0001 C CNN
F 3 "" H 8300 1950 50  0001 C CNN
	1    8300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1950 8700 1950
$Comp
L +3.3V #PWR04
U 1 1 5B56F6EE
P 8300 1750
F 0 "#PWR04" H 8300 1600 50  0001 C CNN
F 1 "+3.3V" H 8315 1923 50  0000 C CNN
F 2 "" H 8300 1750 50  0001 C CNN
F 3 "" H 8300 1750 50  0001 C CNN
	1    8300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1750 8700 1750
$Comp
L GND #PWR06
U 1 1 5B56F919
P 1300 4850
F 0 "#PWR06" H 1300 4600 50  0001 C CNN
F 1 "GND" V 1305 4722 50  0000 R CNN
F 2 "" H 1300 4850 50  0001 C CNN
F 3 "" H 1300 4850 50  0001 C CNN
	1    1300 4850
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5B56F957
P 3500 7150
F 0 "#PWR08" H 3500 7000 50  0001 C CNN
F 1 "+3.3V" V 3515 7278 50  0000 L CNN
F 2 "" H 3500 7150 50  0001 C CNN
F 3 "" H 3500 7150 50  0001 C CNN
	1    3500 7150
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR01
U 1 1 5B56F9CA
P 1200 1700
F 0 "#PWR01" H 1200 1550 50  0001 C CNN
F 1 "+5V" V 1215 1828 50  0000 L CNN
F 2 "" H 1200 1700 50  0001 C CNN
F 3 "" H 1200 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 5B56FA05
P 3500 6950
F 0 "#PWR010" H 3500 6800 50  0001 C CNN
F 1 "+5V" V 3515 7078 50  0000 L CNN
F 2 "" H 3500 6950 50  0001 C CNN
F 3 "" H 3500 6950 50  0001 C CNN
	1    3500 6950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 5B56FBCD
P 3500 7050
F 0 "#PWR07" H 3500 6800 50  0001 C CNN
F 1 "GND" V 3505 6922 50  0000 R CNN
F 2 "" H 3500 7050 50  0001 C CNN
F 3 "" H 3500 7050 50  0001 C CNN
	1    3500 7050
	0    -1   -1   0   
$EndComp
NoConn ~ 1300 6250
NoConn ~ 1300 6350
NoConn ~ 1300 6450
NoConn ~ 1300 6550
NoConn ~ 1300 6650
NoConn ~ 1300 5750
NoConn ~ 1300 5550
NoConn ~ 1300 5450
NoConn ~ 1300 5350
NoConn ~ 1300 5250
NoConn ~ 1300 5150
NoConn ~ 1300 5050
NoConn ~ 1300 4950
NoConn ~ 3500 4850
NoConn ~ 3500 4950
NoConn ~ 3500 5050
NoConn ~ 3500 5150
NoConn ~ 3500 6850
NoConn ~ 3500 6750
NoConn ~ 3500 6650
NoConn ~ 3500 6550
NoConn ~ 3500 6450
NoConn ~ 3500 6350
NoConn ~ 3500 6250
NoConn ~ 3500 6150
NoConn ~ 3500 6050
NoConn ~ 3500 5950
NoConn ~ 3500 5850
NoConn ~ 3500 5750
NoConn ~ 3500 5650
NoConn ~ 3500 5550
NoConn ~ 3500 5450
NoConn ~ 3500 5350
NoConn ~ 3500 5250
Wire Bus Line
	3650 6850 3650 4850
Wire Bus Line
	1150 6250 1150 6650
Text Notes 3750 5900 1    60   ~ 0
bottom
Text Notes 1100 6700 1    60   ~ 0
short edge
NoConn ~ 1300 7150
NoConn ~ 1300 7250
NoConn ~ 1300 7350
NoConn ~ 1300 7450
Text Notes 6600 1200 0    60   ~ 0
rfid conn
Text Notes 9400 900  0    60   ~ 0
sd card
Text Notes 2150 2550 0    60   ~ 0
i2s amp
$Comp
L C C3
U 1 1 5B570085
P 1250 3700
F 0 "C3" H 1365 3746 50  0000 L CNN
F 1 "2.2u" H 1365 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1288 3550 50  0001 C CNN
F 3 "~" H 1250 3700 50  0001 C CNN
F 4 "Value" H 1250 3700 60  0001 C CNN "supplier"
F 5 "Value" H 1250 3700 60  0001 C CNN "supplier PN"
F 6 "Value" H 1250 3700 60  0001 C CNN "MOQ"
F 7 "Value" H 1250 3700 60  0001 C CNN "leadtime"
	1    1250 3700
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B570111
P 1450 3700
F 0 "C4" H 1565 3746 50  0000 L CNN
F 1 "0.1u" H 1565 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1488 3550 50  0001 C CNN
F 3 "~" H 1450 3700 50  0001 C CNN
F 4 "Value" H 1450 3700 60  0001 C CNN "supplier"
F 5 "Value" H 1450 3700 60  0001 C CNN "supplier PN"
F 6 "Value" H 1450 3700 60  0001 C CNN "MOQ"
F 7 "Value" H 1450 3700 60  0001 C CNN "leadtime"
	1    1450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3850 1250 3950
Connection ~ 1250 3950
Wire Wire Line
	1450 3850 1450 3950
Connection ~ 1450 3950
Connection ~ 1250 3550
Connection ~ 1450 3550
$Comp
L R R1
U 1 1 5B57038B
P 1700 2700
F 0 "R1" H 1770 2746 50  0000 L CNN
F 1 "1M" H 1770 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1630 2700 50  0001 C CNN
F 3 "~" H 1700 2700 50  0001 C CNN
F 4 "Value" H 1700 2700 60  0001 C CNN "supplier"
F 5 "Value" H 1700 2700 60  0001 C CNN "supplier PN"
F 6 "Value" H 1700 2700 60  0001 C CNN "MOQ"
F 7 "Value" H 1700 2700 60  0001 C CNN "leadtime"
	1    1700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3000 1700 2850
$Comp
L +5V #PWR09
U 1 1 5B570427
P 1700 2550
F 0 "#PWR09" H 1700 2400 50  0001 C CNN
F 1 "+5V" H 1715 2723 50  0000 C CNN
F 2 "" H 1700 2550 50  0001 C CNN
F 3 "" H 1700 2550 50  0001 C CNN
	1    1700 2550
	1    0    0    -1  
$EndComp
Text Label 3500 7450 0    60   ~ 0
volume
Text Label 6950 3500 0    60   ~ 0
volume
$Comp
L C C1
U 1 1 5B570861
P 3200 3500
F 0 "C1" H 3315 3546 50  0000 L CNN
F 1 "220pf" H 3315 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 3350 50  0001 C CNN
F 3 "~" H 3200 3500 50  0001 C CNN
F 4 "Value" H 3200 3500 60  0001 C CNN "supplier"
F 5 "Value" H 3200 3500 60  0001 C CNN "supplier PN"
F 6 "Value" H 3200 3500 60  0001 C CNN "MOQ"
F 7 "Value" H 3200 3500 60  0001 C CNN "leadtime"
	1    3200 3500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B5708D1
P 3400 3500
F 0 "C2" H 3515 3546 50  0000 L CNN
F 1 "220pf" H 3515 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3438 3350 50  0001 C CNN
F 3 "~" H 3400 3500 50  0001 C CNN
F 4 "Value" H 3400 3500 60  0001 C CNN "supplier"
F 5 "Value" H 3400 3500 60  0001 C CNN "supplier PN"
F 6 "Value" H 3400 3500 60  0001 C CNN "MOQ"
F 7 "Value" H 3400 3500 60  0001 C CNN "leadtime"
	1    3400 3500
	1    0    0    -1  
$EndComp
Text Label 2850 3300 0    60   ~ 0
gain
Connection ~ 1700 3850
Wire Wire Line
	1700 3550 1700 3650
Wire Wire Line
	1700 3750 1700 3950
Wire Wire Line
	3200 3350 3200 3000
Connection ~ 3200 3000
Wire Wire Line
	3400 3350 3400 3250
Wire Wire Line
	3400 3250 3300 3250
Wire Wire Line
	3300 3250 3300 3100
Connection ~ 3300 3100
$Comp
L GND #PWR013
U 1 1 5B570ACD
P 3200 3650
F 0 "#PWR013" H 3200 3400 50  0001 C CNN
F 1 "GND" H 3205 3477 50  0000 C CNN
F 2 "" H 3200 3650 50  0001 C CNN
F 3 "" H 3200 3650 50  0001 C CNN
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5B570AF2
P 3400 3650
F 0 "#PWR014" H 3400 3400 50  0001 C CNN
F 1 "GND" H 3405 3477 50  0000 C CNN
F 2 "" H 3400 3650 50  0001 C CNN
F 3 "" H 3400 3650 50  0001 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Text Notes 1750 950  0    60   ~ 0
RGB leds APA102
Text Notes 6600 2800 0    60   ~ 0
volume control
Text Notes 9150 2700 0    60   ~ 0
battery charger
Wire Notes Line
	1400 2050 4600 2050
Wire Notes Line
	4600 2050 4600 4250
Wire Notes Line
	4600 4250 900  4250
Wire Notes Line
	900  4250 900  2100
Wire Notes Line
	900  2100 1450 2100
Wire Notes Line
	950  4350 4650 4350
Wire Notes Line
	4650 4350 4650 7700
Wire Notes Line
	4650 7700 900  7700
Wire Notes Line
	900  7700 900  4350
Wire Notes Line
	6200 800  7700 800 
Wire Notes Line
	7700 800  7700 2400
Wire Notes Line
	7700 2400 5950 2400
Wire Notes Line
	5950 2400 5950 800 
Wire Notes Line
	5950 800  6250 800 
Wire Notes Line
	8050 800  10850 800 
Wire Notes Line
	10850 800  10850 2400
Wire Notes Line
	10850 2400 7950 2400
Wire Notes Line
	7950 2400 7950 800 
$Comp
L GND #PWR016
U 1 1 5B5710A5
P 10400 2350
F 0 "#PWR016" H 10400 2100 50  0001 C CNN
F 1 "GND" V 10405 2222 50  0000 R CNN
F 2 "" H 10400 2350 50  0001 C CNN
F 3 "" H 10400 2350 50  0001 C CNN
	1    10400 2350
	0    -1   -1   0   
$EndComp
Wire Notes Line
	6000 2600 7750 2600
Wire Notes Line
	7750 2600 7750 4150
Wire Notes Line
	7750 4150 6000 4150
Wire Notes Line
	6000 4150 6000 2600
Wire Notes Line
	8000 2550 10950 2550
Wire Notes Line
	10950 2550 10950 5050
Wire Notes Line
	10950 5050 8000 5050
Wire Notes Line
	8000 5050 8000 2500
Text Label 1300 5950 2    60   ~ 0
sd_cs
$Comp
L R R2
U 1 1 5B572A29
P 4100 3550
F 0 "R2" H 4170 3596 50  0000 L CNN
F 1 "dnp" H 4170 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4030 3550 50  0001 C CNN
F 3 "~" H 4100 3550 50  0001 C CNN
F 4 "Value" H 4100 3550 60  0001 C CNN "supplier"
F 5 "Value" H 4100 3550 60  0001 C CNN "supplier PN"
F 6 "Value" H 4100 3550 60  0001 C CNN "MOQ"
F 7 "Value" H 4100 3550 60  0001 C CNN "leadtime"
	1    4100 3550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B572B0F
P 4100 3850
F 0 "R3" H 4170 3896 50  0000 L CNN
F 1 "dnp" H 4170 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4030 3850 50  0001 C CNN
F 3 "~" H 4100 3850 50  0001 C CNN
F 4 "Value" H 4100 3850 60  0001 C CNN "supplier"
F 5 "Value" H 4100 3850 60  0001 C CNN "supplier PN"
F 6 "Value" H 4100 3850 60  0001 C CNN "MOQ"
F 7 "Value" H 4100 3850 60  0001 C CNN "leadtime"
	1    4100 3850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5B572B4F
P 4100 3400
F 0 "#PWR017" H 4100 3250 50  0001 C CNN
F 1 "+5V" H 4115 3573 50  0000 C CNN
F 2 "" H 4100 3400 50  0001 C CNN
F 3 "" H 4100 3400 50  0001 C CNN
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5B572B78
P 4100 4000
F 0 "#PWR018" H 4100 3750 50  0001 C CNN
F 1 "GND" H 4105 3827 50  0000 C CNN
F 2 "" H 4100 4000 50  0001 C CNN
F 3 "" H 4100 4000 50  0001 C CNN
	1    4100 4000
	1    0    0    -1  
$EndComp
Connection ~ 4100 3700
Text Label 4300 3700 0    60   ~ 0
gain
Wire Wire Line
	4100 3700 4300 3700
Text Label 1750 1350 2    60   ~ 0
apa_din
Text Label 1750 1450 2    60   ~ 0
apa_clk
$Comp
L apa102 U4
U 1 1 5B572DE0
P 2950 1450
F 0 "U4" H 2950 1797 60  0000 C CNN
F 1 "apa102" H 2950 1691 60  0000 C CNN
F 2 "fp:apa102" H 2900 1650 60  0001 C CNN
F 3 "" H 2900 1650 60  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L apa102 U5
U 1 1 5B572E36
P 3750 1450
F 0 "U5" H 3750 1797 60  0000 C CNN
F 1 "apa102" H 3750 1691 60  0000 C CNN
F 2 "fp:apa102" H 3700 1650 60  0001 C CNN
F 3 "" H 3700 1650 60  0001 C CNN
	1    3750 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5B570C39
P 1600 1750
F 0 "#PWR015" H 1600 1500 50  0001 C CNN
F 1 "GND" V 1605 1622 50  0000 R CNN
F 2 "" H 1600 1750 50  0001 C CNN
F 3 "" H 1600 1750 50  0001 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1700 4050 1700
Wire Wire Line
	4050 1700 4050 1550
Wire Wire Line
	3250 1550 3250 1700
Connection ~ 3250 1700
Wire Wire Line
	2350 1550 2350 1700
Connection ~ 2350 1700
Wire Wire Line
	1600 1750 4350 1750
Wire Wire Line
	3450 1750 3450 1550
Wire Wire Line
	2650 1550 2650 1750
Connection ~ 2650 1750
Wire Wire Line
	1750 1550 1750 1750
Connection ~ 1750 1750
Wire Wire Line
	2350 1350 2650 1350
Wire Wire Line
	2350 1450 2650 1450
Wire Wire Line
	3250 1350 3450 1350
Wire Wire Line
	3250 1450 3450 1450
$Comp
L Conn_01x04_Female J4
U 1 1 5B57333D
P 4550 1450
F 0 "J4" H 4577 1426 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4577 1335 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4550 1450 50  0001 C CNN
F 3 "~" H 4550 1450 50  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1350 4350 1350
Wire Wire Line
	4050 1450 4350 1450
Wire Wire Line
	4050 1550 4350 1550
Wire Wire Line
	4350 1750 4350 1650
Connection ~ 3450 1750
Wire Notes Line
	950  700  5400 700 
Wire Notes Line
	5400 700  5400 1900
Wire Notes Line
	5400 1900 950  1900
Wire Notes Line
	950  1900 950  700 
Text Label 1300 6750 2    60   ~ 0
apa_clk
Text Label 1300 6050 2    60   ~ 0
apa_din
$Comp
L R_POT RV1
U 1 1 5B57388C
P 6800 3500
F 0 "RV1" H 6730 3546 50  0000 R CNN
F 1 "R_POT" H 6730 3455 50  0000 R CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3314S_Horizontal" H 6800 3500 50  0001 C CNN
F 3 "~" H 6800 3500 50  0001 C CNN
F 4 "1696070" H 6800 3500 60  0001 C CNN "farnell #"
F 5 "Value" H 6800 3500 60  0001 C CNN "supplier"
F 6 "Value" H 6800 3500 60  0001 C CNN "supplier PN"
F 7 "Value" H 6800 3500 60  0001 C CNN "MOQ"
F 8 "Value" H 6800 3500 60  0001 C CNN "leadtime"
	1    6800 3500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 5B5739D9
P 6800 3350
F 0 "#PWR019" H 6800 3200 50  0001 C CNN
F 1 "+3.3V" V 6815 3478 50  0000 L CNN
F 2 "" H 6800 3350 50  0001 C CNN
F 3 "" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5B573A6E
P 6800 3650
F 0 "#PWR020" H 6800 3400 50  0001 C CNN
F 1 "GND" V 6805 3522 50  0000 R CNN
F 2 "" H 6800 3650 50  0001 C CNN
F 3 "" H 6800 3650 50  0001 C CNN
	1    6800 3650
	1    0    0    -1  
$EndComp
$Comp
L Test_Point TP1
U 1 1 5B5743CA
P 5650 6100
F 0 "TP1" V 5845 6174 50  0000 C CNN
F 1 "Test_Point" V 5754 6174 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6100 50  0001 C CNN
F 3 "~" H 5850 6100 50  0001 C CNN
	1    5650 6100
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP2
U 1 1 5B5744C1
P 5650 6200
F 0 "TP2" V 5845 6274 50  0000 C CNN
F 1 "Test_Point" V 5754 6274 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6200 50  0001 C CNN
F 3 "~" H 5850 6200 50  0001 C CNN
	1    5650 6200
	0    -1   -1   0   
$EndComp
Text Label 5650 6100 0    60   ~ 0
apa_din
Text Label 5650 6200 0    60   ~ 0
apa_clk
Text Label 5650 6300 0    60   ~ 0
mosi
Text Label 5650 6400 0    60   ~ 0
miso
Text Label 5650 6600 0    60   ~ 0
sd_cs
Text Label 5650 6700 0    60   ~ 0
rfid_cs
Text Label 5650 6500 0    60   ~ 0
sck
$Comp
L Test_Point TP3
U 1 1 5B574ED9
P 5650 6300
F 0 "TP3" V 5845 6374 50  0000 C CNN
F 1 "Test_Point" V 5754 6374 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6300 50  0001 C CNN
F 3 "~" H 5850 6300 50  0001 C CNN
	1    5650 6300
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP4
U 1 1 5B574F15
P 5650 6400
F 0 "TP4" V 5845 6474 50  0000 C CNN
F 1 "Test_Point" V 5754 6474 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6400 50  0001 C CNN
F 3 "~" H 5850 6400 50  0001 C CNN
	1    5650 6400
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP5
U 1 1 5B574F57
P 5650 6500
F 0 "TP5" V 5845 6574 50  0000 C CNN
F 1 "Test_Point" V 5754 6574 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6500 50  0001 C CNN
F 3 "~" H 5850 6500 50  0001 C CNN
	1    5650 6500
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP6
U 1 1 5B574F9B
P 5650 6600
F 0 "TP6" V 5845 6674 50  0000 C CNN
F 1 "Test_Point" V 5754 6674 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6600 50  0001 C CNN
F 3 "~" H 5850 6600 50  0001 C CNN
	1    5650 6600
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP7
U 1 1 5B574FDD
P 5650 6700
F 0 "TP7" V 5845 6774 50  0000 C CNN
F 1 "Test_Point" V 5754 6774 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6700 50  0001 C CNN
F 3 "~" H 5850 6700 50  0001 C CNN
	1    5650 6700
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP8
U 1 1 5B575027
P 5650 6800
F 0 "TP8" V 5845 6874 50  0000 C CNN
F 1 "Test_Point" V 5754 6874 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6800 50  0001 C CNN
F 3 "~" H 5850 6800 50  0001 C CNN
	1    5650 6800
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP9
U 1 1 5B575071
P 5650 6900
F 0 "TP9" V 5845 6974 50  0000 C CNN
F 1 "Test_Point" V 5754 6974 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 6900 50  0001 C CNN
F 3 "~" H 5850 6900 50  0001 C CNN
	1    5650 6900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5B5750F1
P 5650 6800
F 0 "#PWR021" H 5650 6550 50  0001 C CNN
F 1 "GND" V 5655 6672 50  0000 R CNN
F 2 "" H 5650 6800 50  0001 C CNN
F 3 "" H 5650 6800 50  0001 C CNN
	1    5650 6800
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR022
U 1 1 5B5751A4
P 5650 6900
F 0 "#PWR022" H 5650 6750 50  0001 C CNN
F 1 "+3.3V" V 5665 7028 50  0000 L CNN
F 2 "" H 5650 6900 50  0001 C CNN
F 3 "" H 5650 6900 50  0001 C CNN
	1    5650 6900
	0    1    1    0   
$EndComp
$Comp
L Test_Point TP10
U 1 1 5B575203
P 5650 7000
F 0 "TP10" V 5845 7074 50  0000 C CNN
F 1 "Test_Point" V 5754 7074 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5850 7000 50  0001 C CNN
F 3 "~" H 5850 7000 50  0001 C CNN
	1    5650 7000
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR023
U 1 1 5B575251
P 5650 7000
F 0 "#PWR023" H 5650 6850 50  0001 C CNN
F 1 "+5V" H 5665 7173 50  0000 C CNN
F 2 "" H 5650 7000 50  0001 C CNN
F 3 "" H 5650 7000 50  0001 C CNN
	1    5650 7000
	0    1    1    0   
$EndComp
Text Notes 5400 5600 0    60   ~ 0
testpoints
Wire Notes Line
	4750 5150 6750 5150
Wire Notes Line
	6750 5150 6750 7700
Wire Notes Line
	6750 7700 4750 7700
Wire Notes Line
	4750 7700 4750 5150
$Comp
L +5V #PWR024
U 1 1 5B575722
P 8400 3150
F 0 "#PWR024" H 8400 3000 50  0001 C CNN
F 1 "+5V" V 8415 3278 50  0000 L CNN
F 2 "" H 8400 3150 50  0001 C CNN
F 3 "" H 8400 3150 50  0001 C CNN
	1    8400 3150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 5B5758BA
P 8600 3150
F 0 "#FLG01" H 8600 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 8600 3324 50  0000 C CNN
F 2 "" H 8600 3150 50  0001 C CNN
F 3 "~" H 8600 3150 50  0001 C CNN
	1    8600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3150 8600 3150
$Comp
L Mounting_Hole_PAD MK1
U 1 1 5B575BF9
P 5150 7300
F 0 "MK1" H 5250 7351 50  0000 L CNN
F 1 "Mounting_Hole_PAD" H 5250 7260 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 5150 7300 50  0001 C CNN
F 3 "" H 5150 7300 50  0001 C CNN
	1    5150 7300
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK2
U 1 1 5B575C8D
P 5400 7300
F 0 "MK2" H 5500 7351 50  0000 L CNN
F 1 "Mounting_Hole_PAD" H 5500 7260 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 5400 7300 50  0001 C CNN
F 3 "" H 5400 7300 50  0001 C CNN
	1    5400 7300
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK3
U 1 1 5B575CE1
P 5650 7300
F 0 "MK3" H 5750 7351 50  0000 L CNN
F 1 "Mounting_Hole_PAD" H 5750 7260 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 5650 7300 50  0001 C CNN
F 3 "" H 5650 7300 50  0001 C CNN
	1    5650 7300
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK4
U 1 1 5B575D37
P 5900 7300
F 0 "MK4" H 6000 7351 50  0000 L CNN
F 1 "Mounting_Hole_PAD" H 6000 7260 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 5900 7300 50  0001 C CNN
F 3 "" H 5900 7300 50  0001 C CNN
	1    5900 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5B575DD1
P 5150 7400
F 0 "#PWR025" H 5150 7150 50  0001 C CNN
F 1 "GND" V 5155 7272 50  0000 R CNN
F 2 "" H 5150 7400 50  0001 C CNN
F 3 "" H 5150 7400 50  0001 C CNN
	1    5150 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5B575E3F
P 5400 7400
F 0 "#PWR026" H 5400 7150 50  0001 C CNN
F 1 "GND" V 5405 7272 50  0000 R CNN
F 2 "" H 5400 7400 50  0001 C CNN
F 3 "" H 5400 7400 50  0001 C CNN
	1    5400 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5B575E8C
P 5650 7400
F 0 "#PWR027" H 5650 7150 50  0001 C CNN
F 1 "GND" V 5655 7272 50  0000 R CNN
F 2 "" H 5650 7400 50  0001 C CNN
F 3 "" H 5650 7400 50  0001 C CNN
	1    5650 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5B575ED9
P 5900 7400
F 0 "#PWR028" H 5900 7150 50  0001 C CNN
F 1 "GND" V 5905 7272 50  0000 R CNN
F 2 "" H 5900 7400 50  0001 C CNN
F 3 "" H 5900 7400 50  0001 C CNN
	1    5900 7400
	1    0    0    -1  
$EndComp
$EndSCHEMATC