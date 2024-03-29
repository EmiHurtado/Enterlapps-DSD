-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/06/2022 12:20:59"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica1 IS
    PORT (
	A : OUT std_logic;
	Data1 : IN std_logic;
	Reloj : IN std_logic;
	ResetReloj : IN std_logic;
	Data2 : IN std_logic;
	Sel0 : IN std_logic;
	Sel1 : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	NA : OUT std_logic;
	NB : OUT std_logic;
	NC : OUT std_logic;
	ND : OUT std_logic;
	NE : OUT std_logic;
	NF : OUT std_logic
	);
END Practica1;

-- Design Ports Information
-- A	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NA	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NB	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NC	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ND	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NE	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NF	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sel1	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sel0	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data1	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data2	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reloj	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ResetReloj	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Data1 : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_ResetReloj : std_logic;
SIGNAL ww_Data2 : std_logic;
SIGNAL ww_Sel0 : std_logic;
SIGNAL ww_Sel1 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_NA : std_logic;
SIGNAL ww_NB : std_logic;
SIGNAL ww_NC : std_logic;
SIGNAL ww_ND : std_logic;
SIGNAL ww_NE : std_logic;
SIGNAL ww_NF : std_logic;
SIGNAL \inst6|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|Add0~1\ : std_logic;
SIGNAL \inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst6|Add0~3\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst6|Add0~5\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|Add0~7\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|Add0~9\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add0~11\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst6|Add0~13\ : std_logic;
SIGNAL \inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst6|Add0~15\ : std_logic;
SIGNAL \inst6|Add0~16_combout\ : std_logic;
SIGNAL \inst6|Add0~17\ : std_logic;
SIGNAL \inst6|Add0~18_combout\ : std_logic;
SIGNAL \inst6|Add0~19\ : std_logic;
SIGNAL \inst6|Add0~20_combout\ : std_logic;
SIGNAL \inst6|Add0~21\ : std_logic;
SIGNAL \inst6|Add0~22_combout\ : std_logic;
SIGNAL \inst6|Add0~23\ : std_logic;
SIGNAL \inst6|Add0~24_combout\ : std_logic;
SIGNAL \inst6|Add0~25\ : std_logic;
SIGNAL \inst6|Add0~26_combout\ : std_logic;
SIGNAL \inst6|Add0~27\ : std_logic;
SIGNAL \inst6|Add0~28_combout\ : std_logic;
SIGNAL \inst6|Add0~29\ : std_logic;
SIGNAL \inst6|Add0~30_combout\ : std_logic;
SIGNAL \inst6|Add0~31\ : std_logic;
SIGNAL \inst6|Add0~32_combout\ : std_logic;
SIGNAL \inst6|Add0~33\ : std_logic;
SIGNAL \inst6|Add0~34_combout\ : std_logic;
SIGNAL \inst6|Add0~35\ : std_logic;
SIGNAL \inst6|Add0~36_combout\ : std_logic;
SIGNAL \inst6|Add0~37\ : std_logic;
SIGNAL \inst6|Add0~38_combout\ : std_logic;
SIGNAL \inst6|Add0~39\ : std_logic;
SIGNAL \inst6|Add0~40_combout\ : std_logic;
SIGNAL \inst6|Add0~41\ : std_logic;
SIGNAL \inst6|Add0~42_combout\ : std_logic;
SIGNAL \inst6|Add0~43\ : std_logic;
SIGNAL \inst6|Add0~44_combout\ : std_logic;
SIGNAL \inst6|Add0~45\ : std_logic;
SIGNAL \inst6|Add0~46_combout\ : std_logic;
SIGNAL \inst6|Add0~47\ : std_logic;
SIGNAL \inst6|Add0~48_combout\ : std_logic;
SIGNAL \inst6|salida_media~regout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|Equal0~5_combout\ : std_logic;
SIGNAL \inst6|Equal0~6_combout\ : std_logic;
SIGNAL \inst6|Equal0~7_combout\ : std_logic;
SIGNAL \inst6|salida_media~0_combout\ : std_logic;
SIGNAL \inst6|contador~0_combout\ : std_logic;
SIGNAL \inst6|contador~1_combout\ : std_logic;
SIGNAL \inst6|contador~2_combout\ : std_logic;
SIGNAL \inst6|contador~3_combout\ : std_logic;
SIGNAL \inst6|contador~4_combout\ : std_logic;
SIGNAL \inst6|contador~5_combout\ : std_logic;
SIGNAL \inst6|contador~6_combout\ : std_logic;
SIGNAL \inst6|contador~7_combout\ : std_logic;
SIGNAL \inst6|contador~8_combout\ : std_logic;
SIGNAL \inst6|contador~9_combout\ : std_logic;
SIGNAL \inst6|contador~10_combout\ : std_logic;
SIGNAL \inst6|contador~11_combout\ : std_logic;
SIGNAL \Reloj~combout\ : std_logic;
SIGNAL \ResetReloj~combout\ : std_logic;
SIGNAL \inst6|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \Reloj~clkctrl_outclk\ : std_logic;
SIGNAL \Data1~combout\ : std_logic;
SIGNAL \inst3|Q~0_combout\ : std_logic;
SIGNAL \inst3|Q~reg0_regout\ : std_logic;
SIGNAL \inst|Q~reg0feeder_combout\ : std_logic;
SIGNAL \inst|Q~reg0_regout\ : std_logic;
SIGNAL \Sel1~combout\ : std_logic;
SIGNAL \Data2~combout\ : std_logic;
SIGNAL \inst2|Q~0_combout\ : std_logic;
SIGNAL \inst2|Q~reg0_regout\ : std_logic;
SIGNAL \inst4|Q~0_combout\ : std_logic;
SIGNAL \inst1|Q~0_combout\ : std_logic;
SIGNAL \inst1|Q~reg0_regout\ : std_logic;
SIGNAL \inst4|Q~1_combout\ : std_logic;
SIGNAL \Sel0~combout\ : std_logic;
SIGNAL \inst5|Q~0_combout\ : std_logic;
SIGNAL \inst2|QN~0_combout\ : std_logic;
SIGNAL \inst2|QN~reg0_regout\ : std_logic;
SIGNAL \inst5|Q~1_combout\ : std_logic;
SIGNAL \inst6|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALT_INV_ResetReloj~combout\ : std_logic;

BEGIN

A <= ww_A;
ww_Data1 <= Data1;
ww_Reloj <= Reloj;
ww_ResetReloj <= ResetReloj;
ww_Data2 <= Data2;
ww_Sel0 <= Sel0;
ww_Sel1 <= Sel1;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
NA <= ww_NA;
NB <= ww_NB;
NC <= ww_NC;
ND <= ww_ND;
NE <= ww_NE;
NF <= ww_NF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|salida_media~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|salida_media~regout\);

\Reloj~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reloj~combout\);
\inst5|ALT_INV_Q~1_combout\ <= NOT \inst5|Q~1_combout\;
\inst4|ALT_INV_Q~1_combout\ <= NOT \inst4|Q~1_combout\;
\ALT_INV_ResetReloj~combout\ <= NOT \ResetReloj~combout\;

-- Location: LCCOMB_X1_Y12_N8
\inst6|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|contador\(0) $ (VCC)
-- \inst6|Add0~1\ = CARRY(\inst6|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(0),
	datad => VCC,
	combout => \inst6|Add0~0_combout\,
	cout => \inst6|Add0~1\);

-- Location: LCCOMB_X1_Y12_N10
\inst6|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~2_combout\ = (\inst6|contador\(1) & (!\inst6|Add0~1\)) # (!\inst6|contador\(1) & ((\inst6|Add0~1\) # (GND)))
-- \inst6|Add0~3\ = CARRY((!\inst6|Add0~1\) # (!\inst6|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(1),
	datad => VCC,
	cin => \inst6|Add0~1\,
	combout => \inst6|Add0~2_combout\,
	cout => \inst6|Add0~3\);

-- Location: LCCOMB_X1_Y12_N12
\inst6|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = (\inst6|contador\(2) & (\inst6|Add0~3\ $ (GND))) # (!\inst6|contador\(2) & (!\inst6|Add0~3\ & VCC))
-- \inst6|Add0~5\ = CARRY((\inst6|contador\(2) & !\inst6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(2),
	datad => VCC,
	cin => \inst6|Add0~3\,
	combout => \inst6|Add0~4_combout\,
	cout => \inst6|Add0~5\);

-- Location: LCCOMB_X1_Y12_N14
\inst6|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = (\inst6|contador\(3) & (!\inst6|Add0~5\)) # (!\inst6|contador\(3) & ((\inst6|Add0~5\) # (GND)))
-- \inst6|Add0~7\ = CARRY((!\inst6|Add0~5\) # (!\inst6|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(3),
	datad => VCC,
	cin => \inst6|Add0~5\,
	combout => \inst6|Add0~6_combout\,
	cout => \inst6|Add0~7\);

-- Location: LCCOMB_X1_Y12_N16
\inst6|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = (\inst6|contador\(4) & (\inst6|Add0~7\ $ (GND))) # (!\inst6|contador\(4) & (!\inst6|Add0~7\ & VCC))
-- \inst6|Add0~9\ = CARRY((\inst6|contador\(4) & !\inst6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(4),
	datad => VCC,
	cin => \inst6|Add0~7\,
	combout => \inst6|Add0~8_combout\,
	cout => \inst6|Add0~9\);

-- Location: LCCOMB_X1_Y12_N18
\inst6|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = (\inst6|contador\(5) & (!\inst6|Add0~9\)) # (!\inst6|contador\(5) & ((\inst6|Add0~9\) # (GND)))
-- \inst6|Add0~11\ = CARRY((!\inst6|Add0~9\) # (!\inst6|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(5),
	datad => VCC,
	cin => \inst6|Add0~9\,
	combout => \inst6|Add0~10_combout\,
	cout => \inst6|Add0~11\);

-- Location: LCCOMB_X1_Y12_N20
\inst6|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = (\inst6|contador\(6) & (\inst6|Add0~11\ $ (GND))) # (!\inst6|contador\(6) & (!\inst6|Add0~11\ & VCC))
-- \inst6|Add0~13\ = CARRY((\inst6|contador\(6) & !\inst6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(6),
	datad => VCC,
	cin => \inst6|Add0~11\,
	combout => \inst6|Add0~12_combout\,
	cout => \inst6|Add0~13\);

-- Location: LCCOMB_X1_Y12_N22
\inst6|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~14_combout\ = (\inst6|contador\(7) & (!\inst6|Add0~13\)) # (!\inst6|contador\(7) & ((\inst6|Add0~13\) # (GND)))
-- \inst6|Add0~15\ = CARRY((!\inst6|Add0~13\) # (!\inst6|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(7),
	datad => VCC,
	cin => \inst6|Add0~13\,
	combout => \inst6|Add0~14_combout\,
	cout => \inst6|Add0~15\);

-- Location: LCCOMB_X1_Y12_N24
\inst6|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~16_combout\ = (\inst6|contador\(8) & (\inst6|Add0~15\ $ (GND))) # (!\inst6|contador\(8) & (!\inst6|Add0~15\ & VCC))
-- \inst6|Add0~17\ = CARRY((\inst6|contador\(8) & !\inst6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(8),
	datad => VCC,
	cin => \inst6|Add0~15\,
	combout => \inst6|Add0~16_combout\,
	cout => \inst6|Add0~17\);

-- Location: LCCOMB_X1_Y12_N26
\inst6|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~18_combout\ = (\inst6|contador\(9) & (!\inst6|Add0~17\)) # (!\inst6|contador\(9) & ((\inst6|Add0~17\) # (GND)))
-- \inst6|Add0~19\ = CARRY((!\inst6|Add0~17\) # (!\inst6|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(9),
	datad => VCC,
	cin => \inst6|Add0~17\,
	combout => \inst6|Add0~18_combout\,
	cout => \inst6|Add0~19\);

-- Location: LCCOMB_X1_Y12_N28
\inst6|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~20_combout\ = (\inst6|contador\(10) & (\inst6|Add0~19\ $ (GND))) # (!\inst6|contador\(10) & (!\inst6|Add0~19\ & VCC))
-- \inst6|Add0~21\ = CARRY((\inst6|contador\(10) & !\inst6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(10),
	datad => VCC,
	cin => \inst6|Add0~19\,
	combout => \inst6|Add0~20_combout\,
	cout => \inst6|Add0~21\);

-- Location: LCCOMB_X1_Y12_N30
\inst6|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~22_combout\ = (\inst6|contador\(11) & (!\inst6|Add0~21\)) # (!\inst6|contador\(11) & ((\inst6|Add0~21\) # (GND)))
-- \inst6|Add0~23\ = CARRY((!\inst6|Add0~21\) # (!\inst6|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(11),
	datad => VCC,
	cin => \inst6|Add0~21\,
	combout => \inst6|Add0~22_combout\,
	cout => \inst6|Add0~23\);

-- Location: LCCOMB_X1_Y11_N0
\inst6|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~24_combout\ = (\inst6|contador\(12) & (\inst6|Add0~23\ $ (GND))) # (!\inst6|contador\(12) & (!\inst6|Add0~23\ & VCC))
-- \inst6|Add0~25\ = CARRY((\inst6|contador\(12) & !\inst6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(12),
	datad => VCC,
	cin => \inst6|Add0~23\,
	combout => \inst6|Add0~24_combout\,
	cout => \inst6|Add0~25\);

-- Location: LCCOMB_X1_Y11_N2
\inst6|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~26_combout\ = (\inst6|contador\(13) & (!\inst6|Add0~25\)) # (!\inst6|contador\(13) & ((\inst6|Add0~25\) # (GND)))
-- \inst6|Add0~27\ = CARRY((!\inst6|Add0~25\) # (!\inst6|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(13),
	datad => VCC,
	cin => \inst6|Add0~25\,
	combout => \inst6|Add0~26_combout\,
	cout => \inst6|Add0~27\);

-- Location: LCCOMB_X1_Y11_N4
\inst6|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~28_combout\ = (\inst6|contador\(14) & (\inst6|Add0~27\ $ (GND))) # (!\inst6|contador\(14) & (!\inst6|Add0~27\ & VCC))
-- \inst6|Add0~29\ = CARRY((\inst6|contador\(14) & !\inst6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(14),
	datad => VCC,
	cin => \inst6|Add0~27\,
	combout => \inst6|Add0~28_combout\,
	cout => \inst6|Add0~29\);

-- Location: LCCOMB_X1_Y11_N6
\inst6|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~30_combout\ = (\inst6|contador\(15) & (!\inst6|Add0~29\)) # (!\inst6|contador\(15) & ((\inst6|Add0~29\) # (GND)))
-- \inst6|Add0~31\ = CARRY((!\inst6|Add0~29\) # (!\inst6|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(15),
	datad => VCC,
	cin => \inst6|Add0~29\,
	combout => \inst6|Add0~30_combout\,
	cout => \inst6|Add0~31\);

-- Location: LCCOMB_X1_Y11_N8
\inst6|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~32_combout\ = (\inst6|contador\(16) & (\inst6|Add0~31\ $ (GND))) # (!\inst6|contador\(16) & (!\inst6|Add0~31\ & VCC))
-- \inst6|Add0~33\ = CARRY((\inst6|contador\(16) & !\inst6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(16),
	datad => VCC,
	cin => \inst6|Add0~31\,
	combout => \inst6|Add0~32_combout\,
	cout => \inst6|Add0~33\);

-- Location: LCCOMB_X1_Y11_N10
\inst6|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~34_combout\ = (\inst6|contador\(17) & (!\inst6|Add0~33\)) # (!\inst6|contador\(17) & ((\inst6|Add0~33\) # (GND)))
-- \inst6|Add0~35\ = CARRY((!\inst6|Add0~33\) # (!\inst6|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(17),
	datad => VCC,
	cin => \inst6|Add0~33\,
	combout => \inst6|Add0~34_combout\,
	cout => \inst6|Add0~35\);

-- Location: LCCOMB_X1_Y11_N12
\inst6|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~36_combout\ = (\inst6|contador\(18) & (\inst6|Add0~35\ $ (GND))) # (!\inst6|contador\(18) & (!\inst6|Add0~35\ & VCC))
-- \inst6|Add0~37\ = CARRY((\inst6|contador\(18) & !\inst6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(18),
	datad => VCC,
	cin => \inst6|Add0~35\,
	combout => \inst6|Add0~36_combout\,
	cout => \inst6|Add0~37\);

-- Location: LCCOMB_X1_Y11_N14
\inst6|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~38_combout\ = (\inst6|contador\(19) & (!\inst6|Add0~37\)) # (!\inst6|contador\(19) & ((\inst6|Add0~37\) # (GND)))
-- \inst6|Add0~39\ = CARRY((!\inst6|Add0~37\) # (!\inst6|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(19),
	datad => VCC,
	cin => \inst6|Add0~37\,
	combout => \inst6|Add0~38_combout\,
	cout => \inst6|Add0~39\);

-- Location: LCCOMB_X1_Y11_N16
\inst6|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~40_combout\ = (\inst6|contador\(20) & (\inst6|Add0~39\ $ (GND))) # (!\inst6|contador\(20) & (!\inst6|Add0~39\ & VCC))
-- \inst6|Add0~41\ = CARRY((\inst6|contador\(20) & !\inst6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(20),
	datad => VCC,
	cin => \inst6|Add0~39\,
	combout => \inst6|Add0~40_combout\,
	cout => \inst6|Add0~41\);

-- Location: LCCOMB_X1_Y11_N18
\inst6|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~42_combout\ = (\inst6|contador\(21) & (!\inst6|Add0~41\)) # (!\inst6|contador\(21) & ((\inst6|Add0~41\) # (GND)))
-- \inst6|Add0~43\ = CARRY((!\inst6|Add0~41\) # (!\inst6|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(21),
	datad => VCC,
	cin => \inst6|Add0~41\,
	combout => \inst6|Add0~42_combout\,
	cout => \inst6|Add0~43\);

-- Location: LCCOMB_X1_Y11_N20
\inst6|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~44_combout\ = (\inst6|contador\(22) & (\inst6|Add0~43\ $ (GND))) # (!\inst6|contador\(22) & (!\inst6|Add0~43\ & VCC))
-- \inst6|Add0~45\ = CARRY((\inst6|contador\(22) & !\inst6|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(22),
	datad => VCC,
	cin => \inst6|Add0~43\,
	combout => \inst6|Add0~44_combout\,
	cout => \inst6|Add0~45\);

-- Location: LCCOMB_X1_Y11_N22
\inst6|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~46_combout\ = (\inst6|contador\(23) & (!\inst6|Add0~45\)) # (!\inst6|contador\(23) & ((\inst6|Add0~45\) # (GND)))
-- \inst6|Add0~47\ = CARRY((!\inst6|Add0~45\) # (!\inst6|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(23),
	datad => VCC,
	cin => \inst6|Add0~45\,
	combout => \inst6|Add0~46_combout\,
	cout => \inst6|Add0~47\);

-- Location: LCCOMB_X1_Y11_N24
\inst6|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~48_combout\ = \inst6|Add0~47\ $ (!\inst6|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|contador\(24),
	cin => \inst6|Add0~47\,
	combout => \inst6|Add0~48_combout\);

-- Location: LCFF_X2_Y11_N25
\inst6|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|salida_media~0_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|salida_media~regout\);

-- Location: LCFF_X1_Y12_N9
\inst6|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~0_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(0));

-- Location: LCFF_X1_Y11_N27
\inst6|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~0_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(24));

-- Location: LCFF_X2_Y11_N17
\inst6|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~1_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(22));

-- Location: LCFF_X1_Y11_N23
\inst6|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~46_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(23));

-- Location: LCCOMB_X2_Y11_N22
\inst6|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (\inst6|contador\(22) & (\inst6|contador\(24) & (!\inst6|contador\(23) & \inst6|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(22),
	datab => \inst6|contador\(24),
	datac => \inst6|contador\(23),
	datad => \inst6|contador\(0),
	combout => \inst6|Equal0~0_combout\);

-- Location: LCFF_X1_Y11_N29
\inst6|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~2_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(21));

-- Location: LCFF_X1_Y11_N31
\inst6|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~3_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(20));

-- Location: LCFF_X2_Y11_N11
\inst6|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~4_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(19));

-- Location: LCFF_X2_Y11_N13
\inst6|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~5_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(18));

-- Location: LCCOMB_X2_Y11_N28
\inst6|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = (\inst6|contador\(19) & (\inst6|contador\(21) & (\inst6|contador\(20) & \inst6|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(19),
	datab => \inst6|contador\(21),
	datac => \inst6|contador\(20),
	datad => \inst6|contador\(18),
	combout => \inst6|Equal0~1_combout\);

-- Location: LCFF_X2_Y11_N15
\inst6|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~6_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(16));

-- Location: LCFF_X2_Y11_N31
\inst6|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~7_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(14));

-- Location: LCFF_X1_Y11_N11
\inst6|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~34_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(17));

-- Location: LCFF_X1_Y11_N7
\inst6|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~30_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(15));

-- Location: LCCOMB_X2_Y11_N4
\inst6|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~2_combout\ = (!\inst6|contador\(17) & (!\inst6|contador\(15) & (\inst6|contador\(16) & \inst6|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(17),
	datab => \inst6|contador\(15),
	datac => \inst6|contador\(16),
	datad => \inst6|contador\(14),
	combout => \inst6|Equal0~2_combout\);

-- Location: LCFF_X2_Y11_N19
\inst6|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~8_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(13));

-- Location: LCFF_X2_Y11_N21
\inst6|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~9_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(12));

-- Location: LCFF_X2_Y11_N9
\inst6|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~10_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(11));

-- Location: LCFF_X1_Y12_N29
\inst6|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~20_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(10));

-- Location: LCCOMB_X2_Y11_N6
\inst6|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~3_combout\ = (\inst6|contador\(12) & (\inst6|contador\(13) & (\inst6|contador\(11) & !\inst6|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(12),
	datab => \inst6|contador\(13),
	datac => \inst6|contador\(11),
	datad => \inst6|contador\(10),
	combout => \inst6|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y11_N26
\inst6|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~4_combout\ = (\inst6|Equal0~3_combout\ & (\inst6|Equal0~1_combout\ & (\inst6|Equal0~2_combout\ & \inst6|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~3_combout\,
	datab => \inst6|Equal0~1_combout\,
	datac => \inst6|Equal0~2_combout\,
	datad => \inst6|Equal0~0_combout\,
	combout => \inst6|Equal0~4_combout\);

-- Location: LCFF_X1_Y12_N27
\inst6|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~18_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(9));

-- Location: LCFF_X1_Y12_N25
\inst6|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~16_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(8));

-- Location: LCFF_X1_Y12_N23
\inst6|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~14_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(7));

-- Location: LCFF_X1_Y12_N1
\inst6|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|contador~11_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(6));

-- Location: LCCOMB_X1_Y12_N6
\inst6|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~5_combout\ = (!\inst6|contador\(8) & (!\inst6|contador\(9) & (!\inst6|contador\(6) & !\inst6|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(8),
	datab => \inst6|contador\(9),
	datac => \inst6|contador\(6),
	datad => \inst6|contador\(7),
	combout => \inst6|Equal0~5_combout\);

-- Location: LCFF_X1_Y12_N11
\inst6|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~2_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(1));

-- Location: LCFF_X1_Y12_N19
\inst6|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~10_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(5));

-- Location: LCFF_X1_Y12_N17
\inst6|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~8_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(4));

-- Location: LCFF_X1_Y12_N15
\inst6|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~6_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(3));

-- Location: LCFF_X1_Y12_N13
\inst6|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst6|Add0~4_combout\,
	aclr => \ALT_INV_ResetReloj~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|contador\(2));

-- Location: LCCOMB_X1_Y12_N4
\inst6|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~6_combout\ = (\inst6|contador\(2) & (\inst6|contador\(3) & (\inst6|contador\(4) & \inst6|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(2),
	datab => \inst6|contador\(3),
	datac => \inst6|contador\(4),
	datad => \inst6|contador\(5),
	combout => \inst6|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y11_N0
\inst6|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~7_combout\ = (\inst6|Equal0~6_combout\ & (\inst6|contador\(1) & (\inst6|Equal0~5_combout\ & \inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~6_combout\,
	datab => \inst6|contador\(1),
	datac => \inst6|Equal0~5_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y11_N24
\inst6|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|salida_media~0_combout\ = \inst6|salida_media~regout\ $ (\inst6|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|salida_media~regout\,
	datad => \inst6|Equal0~7_combout\,
	combout => \inst6|salida_media~0_combout\);

-- Location: LCCOMB_X1_Y11_N26
\inst6|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~0_combout\ = (!\inst6|Equal0~7_combout\ & \inst6|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~7_combout\,
	datac => \inst6|Add0~48_combout\,
	combout => \inst6|contador~0_combout\);

-- Location: LCCOMB_X2_Y11_N16
\inst6|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~1_combout\ = (\inst6|Add0~44_combout\ & !\inst6|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~44_combout\,
	datad => \inst6|Equal0~7_combout\,
	combout => \inst6|contador~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\inst6|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~2_combout\ = (!\inst6|Equal0~7_combout\ & \inst6|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Equal0~7_combout\,
	datad => \inst6|Add0~42_combout\,
	combout => \inst6|contador~2_combout\);

-- Location: LCCOMB_X1_Y11_N30
\inst6|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~3_combout\ = (!\inst6|Equal0~7_combout\ & \inst6|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~7_combout\,
	datac => \inst6|Add0~40_combout\,
	combout => \inst6|contador~3_combout\);

-- Location: LCCOMB_X2_Y11_N10
\inst6|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~4_combout\ = (!\inst6|Equal0~7_combout\ & \inst6|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~7_combout\,
	datad => \inst6|Add0~38_combout\,
	combout => \inst6|contador~4_combout\);

-- Location: LCCOMB_X2_Y11_N12
\inst6|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~5_combout\ = (!\inst6|Equal0~7_combout\ & \inst6|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~7_combout\,
	datad => \inst6|Add0~36_combout\,
	combout => \inst6|contador~5_combout\);

-- Location: LCCOMB_X2_Y11_N14
\inst6|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~6_combout\ = (!\inst6|Equal0~7_combout\ & \inst6|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~7_combout\,
	datad => \inst6|Add0~32_combout\,
	combout => \inst6|contador~6_combout\);

-- Location: LCCOMB_X2_Y11_N30
\inst6|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~7_combout\ = (\inst6|Add0~28_combout\ & !\inst6|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~28_combout\,
	datad => \inst6|Equal0~7_combout\,
	combout => \inst6|contador~7_combout\);

-- Location: LCCOMB_X2_Y11_N18
\inst6|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~8_combout\ = (!\inst6|Equal0~7_combout\ & \inst6|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~7_combout\,
	datac => \inst6|Add0~26_combout\,
	combout => \inst6|contador~8_combout\);

-- Location: LCCOMB_X2_Y11_N20
\inst6|contador~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~9_combout\ = (\inst6|Add0~24_combout\ & !\inst6|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~24_combout\,
	datad => \inst6|Equal0~7_combout\,
	combout => \inst6|contador~9_combout\);

-- Location: LCCOMB_X2_Y11_N8
\inst6|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~10_combout\ = (\inst6|Add0~22_combout\ & !\inst6|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~22_combout\,
	datad => \inst6|Equal0~7_combout\,
	combout => \inst6|contador~10_combout\);

-- Location: LCCOMB_X1_Y12_N0
\inst6|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|contador~11_combout\ = (\inst6|Add0~12_combout\ & !\inst6|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~12_combout\,
	datad => \inst6|Equal0~7_combout\,
	combout => \inst6|contador~11_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reloj~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reloj,
	combout => \Reloj~combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ResetReloj~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ResetReloj,
	combout => \ResetReloj~combout\);

-- Location: CLKCTRL_G0
\inst6|salida_media~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|salida_media~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|salida_media~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\Reloj~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj~clkctrl_outclk\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data1,
	combout => \Data1~combout\);

-- Location: LCCOMB_X5_Y13_N24
\inst3|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Q~0_combout\ = \inst3|Q~reg0_regout\ $ (\Data1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Q~reg0_regout\,
	datad => \Data1~combout\,
	combout => \inst3|Q~0_combout\);

-- Location: LCFF_X5_Y13_N25
\inst3|Q~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|salida_media~clkctrl_outclk\,
	datain => \inst3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q~reg0_regout\);

-- Location: LCCOMB_X5_Y13_N0
\inst|Q~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Q~reg0feeder_combout\ = \Data1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data1~combout\,
	combout => \inst|Q~reg0feeder_combout\);

-- Location: LCFF_X5_Y13_N1
\inst|Q~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|salida_media~clkctrl_outclk\,
	datain => \inst|Q~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q~reg0_regout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Sel1,
	combout => \Sel1~combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data2,
	combout => \Data2~combout\);

-- Location: LCCOMB_X5_Y13_N30
\inst2|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Q~0_combout\ = (\Data2~combout\ & (\inst2|Q~reg0_regout\ & \Data1~combout\)) # (!\Data2~combout\ & ((\inst2|Q~reg0_regout\) # (\Data1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data2~combout\,
	datac => \inst2|Q~reg0_regout\,
	datad => \Data1~combout\,
	combout => \inst2|Q~0_combout\);

-- Location: LCFF_X5_Y13_N31
\inst2|Q~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|salida_media~clkctrl_outclk\,
	datain => \inst2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q~reg0_regout\);

-- Location: LCCOMB_X5_Y13_N26
\inst4|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Q~0_combout\ = (\Sel0~combout\ & (((\Sel1~combout\) # (\inst2|Q~reg0_regout\)))) # (!\Sel0~combout\ & (\inst|Q~reg0_regout\ & (!\Sel1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel0~combout\,
	datab => \inst|Q~reg0_regout\,
	datac => \Sel1~combout\,
	datad => \inst2|Q~reg0_regout\,
	combout => \inst4|Q~0_combout\);

-- Location: LCCOMB_X5_Y13_N4
\inst1|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Q~0_combout\ = (\inst1|Q~reg0_regout\ & (!\Data2~combout\)) # (!\inst1|Q~reg0_regout\ & ((\Data1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data2~combout\,
	datac => \inst1|Q~reg0_regout\,
	datad => \Data1~combout\,
	combout => \inst1|Q~0_combout\);

-- Location: LCFF_X5_Y13_N5
\inst1|Q~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|salida_media~clkctrl_outclk\,
	datain => \inst1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q~reg0_regout\);

-- Location: LCCOMB_X5_Y13_N10
\inst4|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Q~1_combout\ = (\inst4|Q~0_combout\ & (((\inst1|Q~reg0_regout\) # (!\Sel1~combout\)))) # (!\inst4|Q~0_combout\ & (\inst3|Q~reg0_regout\ & ((\Sel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q~reg0_regout\,
	datab => \inst4|Q~0_combout\,
	datac => \inst1|Q~reg0_regout\,
	datad => \Sel1~combout\,
	combout => \inst4|Q~1_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Sel0,
	combout => \Sel0~combout\);

-- Location: LCCOMB_X5_Y13_N22
\inst5|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Q~0_combout\ = (\Sel1~combout\ & (((\Sel0~combout\) # (!\inst3|Q~reg0_regout\)))) # (!\Sel1~combout\ & (!\inst|Q~reg0_regout\ & ((!\Sel0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel1~combout\,
	datab => \inst|Q~reg0_regout\,
	datac => \inst3|Q~reg0_regout\,
	datad => \Sel0~combout\,
	combout => \inst5|Q~0_combout\);

-- Location: LCCOMB_X5_Y13_N28
\inst2|QN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|QN~0_combout\ = (\Data2~combout\ & ((\inst2|QN~reg0_regout\) # (!\Data1~combout\))) # (!\Data2~combout\ & (\inst2|QN~reg0_regout\ & !\Data1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data2~combout\,
	datac => \inst2|QN~reg0_regout\,
	datad => \Data1~combout\,
	combout => \inst2|QN~0_combout\);

-- Location: LCFF_X5_Y13_N29
\inst2|QN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|salida_media~clkctrl_outclk\,
	datain => \inst2|QN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|QN~reg0_regout\);

-- Location: LCCOMB_X5_Y13_N12
\inst5|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Q~1_combout\ = (\Sel0~combout\ & ((\inst5|Q~0_combout\ & (!\inst1|Q~reg0_regout\)) # (!\inst5|Q~0_combout\ & ((\inst2|QN~reg0_regout\))))) # (!\Sel0~combout\ & (\inst5|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel0~combout\,
	datab => \inst5|Q~0_combout\,
	datac => \inst1|Q~reg0_regout\,
	datad => \inst2|QN~reg0_regout\,
	combout => \inst5|Q~1_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F);

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NA);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NB);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NC);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ND~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ND);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NE);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NF~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NF);
END structure;


