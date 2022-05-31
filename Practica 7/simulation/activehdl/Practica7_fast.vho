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

<<<<<<< HEAD
-- DATE "05/13/2022 15:58:46"
=======
-- DATE "05/04/2022 13:00:33"
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365

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

ENTITY 	Practica7 IS
    PORT (
<<<<<<< HEAD
	led : OUT std_logic;
	sensor_metales : IN std_logic;
	salida : OUT std_logic_vector(6 DOWNTO 0);
	CLK : IN std_logic
=======
	A : OUT std_logic;
	Detector : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
	);
END Practica7;

-- Design Ports Information
<<<<<<< HEAD
-- led	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[6]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[5]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[4]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[3]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[2]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[1]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sensor_metales	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
=======
-- A	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Detector	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365


ARCHITECTURE structure OF Practica7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
<<<<<<< HEAD
SIGNAL ww_led : std_logic;
SIGNAL ww_sensor_metales : std_logic;
SIGNAL ww_salida : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \inst1|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|salida_media~regout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|salida_media~0_combout\ : std_logic;
SIGNAL \inst1|contador~0_combout\ : std_logic;
SIGNAL \inst1|contador~1_combout\ : std_logic;
SIGNAL \inst1|contador~2_combout\ : std_logic;
SIGNAL \inst1|contador~3_combout\ : std_logic;
SIGNAL \inst1|contador~4_combout\ : std_logic;
SIGNAL \inst1|contador~5_combout\ : std_logic;
SIGNAL \inst1|contador~6_combout\ : std_logic;
SIGNAL \inst1|contador~7_combout\ : std_logic;
SIGNAL \inst1|contador~8_combout\ : std_logic;
SIGNAL \inst1|contador~9_combout\ : std_logic;
SIGNAL \inst1|contador~10_combout\ : std_logic;
SIGNAL \inst1|contador~11_combout\ : std_logic;
SIGNAL \inst1|contador~12_combout\ : std_logic;
SIGNAL \inst1|contador~13_combout\ : std_logic;
SIGNAL \inst1|contador~14_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \inst1|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \sensor_metales~combout\ : std_logic;
SIGNAL \inst3|Q[0]~0_combout\ : std_logic;
SIGNAL \inst3|Q[0]~reg0_regout\ : std_logic;
SIGNAL \inst3|Add0~1_combout\ : std_logic;
SIGNAL \inst3|Q[3]~3_combout\ : std_logic;
SIGNAL \inst3|Q[3]~reg0_regout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Q[1]~2_combout\ : std_logic;
SIGNAL \inst3|Q[1]~reg0_regout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Q[2]~1_combout\ : std_logic;
SIGNAL \inst3|Q[2]~reg0_regout\ : std_logic;
SIGNAL \inst|salida[6]~0_combout\ : std_logic;
SIGNAL \inst|salida[5]~1_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|salida[3]~2_combout\ : std_logic;
SIGNAL \inst|salida[2]~3_combout\ : std_logic;
SIGNAL \inst|salida[1]~4_combout\ : std_logic;
SIGNAL \inst|salida[0]~5_combout\ : std_logic;
SIGNAL \inst1|contador\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_sensor_metales~combout\ : std_logic;

BEGIN

led <= ww_led;
ww_sensor_metales <= sensor_metales;
salida <= ww_salida;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|salida_media~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|salida_media~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_sensor_metales~combout\ <= NOT \sensor_metales~combout\;

-- Location: LCCOMB_X26_Y3_N10
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|contador\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X26_Y3_N12
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|contador\(1) & (!\inst1|Add0~1\)) # (!\inst1|contador\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X26_Y3_N14
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|contador\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|contador\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|contador\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X26_Y3_N16
\inst1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|contador\(3) & (!\inst1|Add0~5\)) # (!\inst1|contador\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X26_Y3_N18
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|contador\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|contador\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|contador\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X26_Y3_N20
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|contador\(5) & (!\inst1|Add0~9\)) # (!\inst1|contador\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X26_Y3_N22
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|contador\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|contador\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|contador\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X26_Y3_N24
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|contador\(7) & (!\inst1|Add0~13\)) # (!\inst1|contador\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X26_Y3_N26
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|contador\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|contador\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|contador\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X26_Y3_N28
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|contador\(9) & (!\inst1|Add0~17\)) # (!\inst1|contador\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X26_Y3_N30
\inst1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|contador\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|contador\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|contador\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X26_Y2_N0
\inst1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|contador\(11) & (!\inst1|Add0~21\)) # (!\inst1|contador\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X26_Y2_N2
\inst1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|contador\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|contador\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|contador\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X26_Y2_N4
\inst1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|contador\(13) & (!\inst1|Add0~25\)) # (!\inst1|contador\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X26_Y2_N6
\inst1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|contador\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|contador\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|contador\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X26_Y2_N8
\inst1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|contador\(15) & (!\inst1|Add0~29\)) # (!\inst1|contador\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X26_Y2_N10
\inst1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|contador\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|contador\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|contador\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X26_Y2_N12
\inst1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|contador\(17) & (!\inst1|Add0~33\)) # (!\inst1|contador\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X26_Y2_N14
\inst1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|contador\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|contador\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|contador\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X26_Y2_N16
\inst1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|contador\(19) & (!\inst1|Add0~37\)) # (!\inst1|contador\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X26_Y2_N18
\inst1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|contador\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|contador\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|contador\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X26_Y2_N20
\inst1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|contador\(21) & (!\inst1|Add0~41\)) # (!\inst1|contador\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X26_Y2_N22
\inst1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = \inst1|contador\(22) $ (!\inst1|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(22),
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\);

-- Location: LCFF_X27_Y2_N1
\inst1|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|salida_media~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|salida_media~regout\);

-- Location: LCFF_X26_Y2_N25
\inst1|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(22));

-- Location: LCFF_X26_Y2_N31
\inst1|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(21));

-- Location: LCFF_X26_Y3_N5
\inst1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(0));

-- Location: LCFF_X26_Y2_N19
\inst1|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(20));

-- Location: LCCOMB_X27_Y2_N20
\inst1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|contador\(21) & (!\inst1|contador\(20) & (\inst1|contador\(22) & !\inst1|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(21),
	datab => \inst1|contador\(20),
	datac => \inst1|contador\(22),
	datad => \inst1|contador\(0),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCFF_X26_Y2_N29
\inst1|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(19));

-- Location: LCFF_X26_Y2_N27
\inst1|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(18));

-- Location: LCFF_X26_Y2_N13
\inst1|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(17));

-- Location: LCFF_X26_Y2_N11
\inst1|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(16));

-- Location: LCCOMB_X27_Y2_N8
\inst1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|contador\(17) & (\inst1|contador\(18) & (\inst1|contador\(19) & !\inst1|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(17),
	datab => \inst1|contador\(18),
	datac => \inst1|contador\(19),
	datad => \inst1|contador\(16),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCFF_X27_Y2_N11
\inst1|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(15));

-- Location: LCFF_X27_Y2_N19
\inst1|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(14));

-- Location: LCFF_X27_Y2_N15
\inst1|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(13));

-- Location: LCFF_X27_Y2_N31
\inst1|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(12));

-- Location: LCCOMB_X27_Y2_N16
\inst1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|contador\(15) & (\inst1|contador\(14) & (\inst1|contador\(13) & \inst1|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(15),
	datab => \inst1|contador\(14),
	datac => \inst1|contador\(13),
	datad => \inst1|contador\(12),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCFF_X27_Y2_N13
\inst1|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(11));

-- Location: LCFF_X26_Y3_N7
\inst1|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(10));

-- Location: LCFF_X27_Y3_N9
\inst1|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(8));

-- Location: LCFF_X26_Y3_N29
\inst1|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(9));

-- Location: LCCOMB_X27_Y2_N28
\inst1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|contador\(11) & (\inst1|contador\(10) & (\inst1|contador\(8) & !\inst1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(11),
	datab => \inst1|contador\(10),
	datac => \inst1|contador\(8),
	datad => \inst1|contador\(9),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y2_N22
\inst1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~0_combout\ & \inst1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCFF_X26_Y3_N1
\inst1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(7));

-- Location: LCFF_X26_Y3_N3
\inst1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(6));

-- Location: LCFF_X26_Y3_N21
\inst1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(5));

-- Location: LCFF_X26_Y3_N19
\inst1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(4));

-- Location: LCCOMB_X27_Y3_N14
\inst1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (!\inst1|contador\(5) & (!\inst1|contador\(4) & (\inst1|contador\(7) & \inst1|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(5),
	datab => \inst1|contador\(4),
	datac => \inst1|contador\(7),
	datad => \inst1|contador\(6),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCFF_X26_Y3_N9
\inst1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(3));

-- Location: LCFF_X26_Y3_N15
\inst1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(2));

-- Location: LCFF_X26_Y3_N13
\inst1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(1));

-- Location: LCCOMB_X27_Y3_N16
\inst1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (!\inst1|contador\(2) & (!\inst1|contador\(1) & (\inst1|Equal0~5_combout\ & \inst1|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datab => \inst1|contador\(1),
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|contador\(3),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y2_N0
\inst1|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salida_media~0_combout\ = \inst1|salida_media~regout\ $ (((\inst1|Equal0~6_combout\ & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~6_combout\,
	datac => \inst1|salida_media~regout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|salida_media~0_combout\);

-- Location: LCCOMB_X26_Y2_N24
\inst1|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~0_combout\ = (\inst1|Add0~44_combout\ & ((!\inst1|Equal0~6_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Add0~44_combout\,
	combout => \inst1|contador~0_combout\);

-- Location: LCCOMB_X26_Y2_N30
\inst1|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~1_combout\ = (\inst1|Add0~42_combout\ & ((!\inst1|Equal0~6_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~42_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|contador~1_combout\);

-- Location: LCCOMB_X26_Y3_N4
\inst1|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~2_combout\ = (\inst1|Add0~0_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~2_combout\);

-- Location: LCCOMB_X26_Y2_N28
\inst1|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~3_combout\ = (\inst1|Add0~38_combout\ & ((!\inst1|Equal0~6_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|contador~3_combout\);

-- Location: LCCOMB_X26_Y2_N26
\inst1|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~4_combout\ = (\inst1|Add0~36_combout\ & ((!\inst1|Equal0~6_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~36_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|contador~4_combout\);

-- Location: LCCOMB_X27_Y2_N10
\inst1|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~5_combout\ = (\inst1|Add0~30_combout\ & ((!\inst1|Equal0~6_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|contador~5_combout\);

-- Location: LCCOMB_X27_Y2_N18
\inst1|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~6_combout\ = (\inst1|Add0~28_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~6_combout\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~6_combout\);

-- Location: LCCOMB_X27_Y2_N14
\inst1|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~7_combout\ = (\inst1|Add0~26_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~6_combout\,
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~7_combout\);

-- Location: LCCOMB_X27_Y2_N30
\inst1|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~8_combout\ = (\inst1|Add0~24_combout\ & ((!\inst1|Equal0~6_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|contador~8_combout\);

-- Location: LCCOMB_X27_Y2_N12
\inst1|contador~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~9_combout\ = (\inst1|Add0~22_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~9_combout\);

-- Location: LCCOMB_X26_Y3_N6
\inst1|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~10_combout\ = (\inst1|Add0~20_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~20_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~10_combout\);

-- Location: LCCOMB_X27_Y3_N8
\inst1|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~11_combout\ = (\inst1|Add0~16_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~11_combout\);

-- Location: LCCOMB_X26_Y3_N0
\inst1|contador~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~12_combout\ = (\inst1|Add0~14_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~12_combout\);

-- Location: LCCOMB_X26_Y3_N2
\inst1|contador~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~13_combout\ = (\inst1|Add0~12_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~13_combout\);

-- Location: LCCOMB_X26_Y3_N8
\inst1|contador~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~14_combout\ = (\inst1|Add0~6_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~14_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G4
\inst1|salida_media~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|salida_media~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|salida_media~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sensor_metales~I\ : cycloneii_io
=======
SIGNAL ww_A : std_logic;
SIGNAL ww_Detector : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \Detector~combout\ : std_logic;
SIGNAL \inst2|salida[0]~0_combout\ : std_logic;
SIGNAL \inst2|salida[0]~reg0_regout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|salida[1]~reg0_regout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|salida[2]~reg0_regout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|salida[3]~reg0_regout\ : std_logic;
SIGNAL \inst1|salidaVector~0_combout\ : std_logic;
SIGNAL \inst1|salidaVector~1_combout\ : std_logic;
SIGNAL \inst1|salidaVector~2_combout\ : std_logic;
SIGNAL \inst1|salidaVector~3_combout\ : std_logic;
SIGNAL \inst1|salidaVector~4_combout\ : std_logic;
SIGNAL \inst1|salidaVector~5_combout\ : std_logic;
SIGNAL \inst1|salidaVector~6_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_salidaVector~6_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_salidaVector~5_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_salidaVector~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_salidaVector~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_salidaVector~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_salidaVector~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_salidaVector~0_combout\ : std_logic;

BEGIN

A <= ww_A;
ww_Detector <= Detector;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_salidaVector~6_combout\ <= NOT \inst1|salidaVector~6_combout\;
\inst1|ALT_INV_salidaVector~5_combout\ <= NOT \inst1|salidaVector~5_combout\;
\inst1|ALT_INV_salidaVector~4_combout\ <= NOT \inst1|salidaVector~4_combout\;
\inst1|ALT_INV_salidaVector~3_combout\ <= NOT \inst1|salidaVector~3_combout\;
\inst1|ALT_INV_salidaVector~2_combout\ <= NOT \inst1|salidaVector~2_combout\;
\inst1|ALT_INV_salidaVector~1_combout\ <= NOT \inst1|salidaVector~1_combout\;
\inst1|ALT_INV_salidaVector~0_combout\ <= NOT \inst1|salidaVector~0_combout\;

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Detector~I\ : cycloneii_io
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
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
<<<<<<< HEAD
	padio => ww_sensor_metales,
	combout => \sensor_metales~combout\);

-- Location: LCCOMB_X9_Y3_N8
\inst3|Q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Q[0]~0_combout\ = \inst3|Q[0]~reg0_regout\ $ (!\sensor_metales~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Q[0]~reg0_regout\,
	datad => \sensor_metales~combout\,
	combout => \inst3|Q[0]~0_combout\);

-- Location: LCFF_X9_Y3_N9
\inst3|Q[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	datain => \inst3|Q[0]~0_combout\,
=======
	padio => ww_Detector,
	combout => \Detector~combout\);

-- Location: LCCOMB_X4_Y1_N6
\inst2|salida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|salida[0]~0_combout\ = !\inst2|salida[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|salida[0]~reg0_regout\,
	combout => \inst2|salida[0]~0_combout\);

-- Location: LCFF_X4_Y1_N7
\inst2|salida[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Detector~combout\,
	datain => \inst2|salida[0]~0_combout\,
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q[0]~reg0_regout\);

<<<<<<< HEAD
-- Location: LCCOMB_X9_Y3_N30
\inst3|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_combout\ = \inst3|Q[3]~reg0_regout\ $ (((\inst3|Q[1]~reg0_regout\ & (\inst3|Q[0]~reg0_regout\ & \inst3|Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[1]~reg0_regout\,
	datab => \inst3|Q[0]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[2]~reg0_regout\,
	combout => \inst3|Add0~1_combout\);

-- Location: LCCOMB_X9_Y3_N14
\inst3|Q[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Q[3]~3_combout\ = (\sensor_metales~combout\ & (((\inst3|Q[3]~reg0_regout\)))) # (!\sensor_metales~combout\ & (\inst3|Add0~1_combout\ & ((!\inst3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_metales~combout\,
	datab => \inst3|Add0~1_combout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Q[3]~3_combout\);

-- Location: LCFF_X9_Y3_N15
\inst3|Q[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	datain => \inst3|Q[3]~3_combout\,
=======
-- Location: LCCOMB_X4_Y1_N28
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = \inst2|salida[1]~reg0_regout\ $ (\inst2|salida[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|salida[1]~reg0_regout\,
	datad => \inst2|salida[0]~reg0_regout\,
	combout => \inst2|Add0~2_combout\);

-- Location: LCFF_X4_Y1_N29
\inst2|salida[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Detector~combout\,
	datain => \inst2|Add0~2_combout\,
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q[3]~reg0_regout\);

<<<<<<< HEAD
-- Location: LCCOMB_X9_Y3_N0
\inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|Q[1]~reg0_regout\ & (\inst3|Q[0]~reg0_regout\ & (\inst3|Q[3]~reg0_regout\ & !\inst3|Q[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[1]~reg0_regout\,
	datab => \inst3|Q[0]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[2]~reg0_regout\,
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y3_N20
\inst3|Q[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Q[1]~2_combout\ = (\sensor_metales~combout\ & (((\inst3|Q[1]~reg0_regout\)))) # (!\sensor_metales~combout\ & (!\inst3|Equal0~0_combout\ & (\inst3|Q[0]~reg0_regout\ $ (\inst3|Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \sensor_metales~combout\,
	datac => \inst3|Q[1]~reg0_regout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Q[1]~2_combout\);

-- Location: LCFF_X9_Y3_N21
\inst3|Q[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	datain => \inst3|Q[1]~2_combout\,
=======
-- Location: LCCOMB_X4_Y1_N30
\inst2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \inst2|salida[2]~reg0_regout\ $ (((\inst2|salida[0]~reg0_regout\ & \inst2|salida[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[2]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst2|Add0~1_combout\);

-- Location: LCFF_X4_Y1_N31
\inst2|salida[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Detector~combout\,
	datain => \inst2|Add0~1_combout\,
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q[1]~reg0_regout\);

<<<<<<< HEAD
-- Location: LCCOMB_X9_Y3_N18
\inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|Q[2]~reg0_regout\ $ (((\inst3|Q[0]~reg0_regout\ & \inst3|Q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q[0]~reg0_regout\,
	datac => \inst3|Q[1]~reg0_regout\,
	datad => \inst3|Q[2]~reg0_regout\,
	combout => \inst3|Add0~0_combout\);

-- Location: LCCOMB_X9_Y3_N10
\inst3|Q[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Q[2]~1_combout\ = (\sensor_metales~combout\ & (((\inst3|Q[2]~reg0_regout\)))) # (!\sensor_metales~combout\ & (\inst3|Add0~0_combout\ & ((!\inst3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_metales~combout\,
	datab => \inst3|Add0~0_combout\,
	datac => \inst3|Q[2]~reg0_regout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Q[2]~1_combout\);

-- Location: LCFF_X9_Y3_N11
\inst3|Q[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	datain => \inst3|Q[2]~1_combout\,
=======
-- Location: LCCOMB_X4_Y1_N8
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|salida[3]~reg0_regout\ $ (((\inst2|salida[0]~reg0_regout\ & (\inst2|salida[2]~reg0_regout\ & \inst2|salida[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[0]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst2|Add0~0_combout\);

-- Location: LCFF_X4_Y1_N9
\inst2|salida[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Detector~combout\,
	datain => \inst2|Add0~0_combout\,
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q[2]~reg0_regout\);

<<<<<<< HEAD
-- Location: LCCOMB_X9_Y3_N28
\inst|salida[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|salida[6]~0_combout\ = (!\inst3|Q[3]~reg0_regout\ & (!\inst3|Q[1]~reg0_regout\ & (\inst3|Q[0]~reg0_regout\ $ (\inst3|Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \inst3|Q[2]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[1]~reg0_regout\,
	combout => \inst|salida[6]~0_combout\);

-- Location: LCCOMB_X9_Y3_N26
\inst|salida[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|salida[5]~1_combout\ = (\inst3|Q[2]~reg0_regout\ & (!\inst3|Q[3]~reg0_regout\ & (\inst3|Q[0]~reg0_regout\ $ (\inst3|Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \inst3|Q[2]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[1]~reg0_regout\,
	combout => \inst|salida[5]~1_combout\);

-- Location: LCCOMB_X9_Y3_N12
\inst|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\inst3|Q[0]~reg0_regout\ & (!\inst3|Q[2]~reg0_regout\ & (!\inst3|Q[3]~reg0_regout\ & \inst3|Q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \inst3|Q[2]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[1]~reg0_regout\,
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X9_Y3_N22
\inst|salida[3]~2\ : cycloneii_lcell_comb
=======
-- Location: LCCOMB_X4_Y1_N20
\inst1|salidaVector~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~0_combout\ = (\inst2|salida[2]~reg0_regout\ & (!\inst2|salida[0]~reg0_regout\)) # (!\inst2|salida[2]~reg0_regout\ & (\inst2|salida[1]~reg0_regout\ $ (((\inst2|salida[0]~reg0_regout\) # (!\inst2|salida[3]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[2]~reg0_regout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~0_combout\);

-- Location: LCCOMB_X4_Y1_N18
\inst1|salidaVector~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~1_combout\ = (\inst2|salida[0]~reg0_regout\ & (!\inst2|salida[2]~reg0_regout\ & ((!\inst2|salida[1]~reg0_regout\)))) # (!\inst2|salida[0]~reg0_regout\ & ((\inst2|salida[2]~reg0_regout\ $ (!\inst2|salida[3]~reg0_regout\)) # 
-- (!\inst2|salida[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[2]~reg0_regout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~1_combout\);

-- Location: LCCOMB_X4_Y1_N12
\inst1|salidaVector~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~2_combout\ = (\inst2|salida[1]~reg0_regout\ & (((!\inst2|salida[0]~reg0_regout\)))) # (!\inst2|salida[1]~reg0_regout\ & (((!\inst2|salida[0]~reg0_regout\ & \inst2|salida[3]~reg0_regout\)) # (!\inst2|salida[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[2]~reg0_regout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~2_combout\);

-- Location: LCCOMB_X4_Y1_N26
\inst1|salidaVector~3\ : cycloneii_lcell_comb
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
-- Equation(s):
-- \inst|salida[3]~2_combout\ = (!\inst3|Q[3]~reg0_regout\ & ((\inst3|Q[0]~reg0_regout\ & (\inst3|Q[2]~reg0_regout\ $ (!\inst3|Q[1]~reg0_regout\))) # (!\inst3|Q[0]~reg0_regout\ & (\inst3|Q[2]~reg0_regout\ & !\inst3|Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \inst3|Q[2]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[1]~reg0_regout\,
	combout => \inst|salida[3]~2_combout\);

-- Location: LCCOMB_X9_Y3_N4
\inst|salida[2]~3\ : cycloneii_lcell_comb
=======
	lut_mask => "0001001001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[2]~reg0_regout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~3_combout\);

-- Location: LCCOMB_X4_Y1_N16
\inst1|salidaVector~4\ : cycloneii_lcell_comb
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
-- Equation(s):
-- \inst|salida[2]~3_combout\ = (\inst3|Q[1]~reg0_regout\ & (\inst3|Q[0]~reg0_regout\ & ((!\inst3|Q[3]~reg0_regout\)))) # (!\inst3|Q[1]~reg0_regout\ & ((\inst3|Q[2]~reg0_regout\ & ((!\inst3|Q[3]~reg0_regout\))) # (!\inst3|Q[2]~reg0_regout\ & 
-- (\inst3|Q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \inst3|Q[2]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[1]~reg0_regout\,
	combout => \inst|salida[2]~3_combout\);

-- Location: LCCOMB_X9_Y3_N6
\inst|salida[1]~4\ : cycloneii_lcell_comb
=======
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[2]~reg0_regout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~4_combout\);

-- Location: LCCOMB_X4_Y1_N10
\inst1|salidaVector~5\ : cycloneii_lcell_comb
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
-- Equation(s):
-- \inst|salida[1]~4_combout\ = (!\inst3|Q[3]~reg0_regout\ & ((\inst3|Q[0]~reg0_regout\ & ((\inst3|Q[1]~reg0_regout\) # (!\inst3|Q[2]~reg0_regout\))) # (!\inst3|Q[0]~reg0_regout\ & (!\inst3|Q[2]~reg0_regout\ & \inst3|Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \inst3|Q[2]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[1]~reg0_regout\,
	combout => \inst|salida[1]~4_combout\);

-- Location: LCCOMB_X9_Y3_N24
\inst|salida[0]~5\ : cycloneii_lcell_comb
=======
	lut_mask => "0001001101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[2]~reg0_regout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~5_combout\);

-- Location: LCCOMB_X4_Y1_N24
\inst1|salidaVector~6\ : cycloneii_lcell_comb
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365
-- Equation(s):
-- \inst|salida[0]~5_combout\ = (\inst3|Q[2]~reg0_regout\ & ((\inst3|Q[3]~reg0_regout\) # ((\inst3|Q[0]~reg0_regout\ & \inst3|Q[1]~reg0_regout\)))) # (!\inst3|Q[2]~reg0_regout\ & ((\inst3|Q[3]~reg0_regout\ $ (!\inst3|Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	lut_mask => "1111100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q[0]~reg0_regout\,
	datab => \inst3|Q[2]~reg0_regout\,
	datac => \inst3|Q[3]~reg0_regout\,
	datad => \inst3|Q[1]~reg0_regout\,
	combout => \inst|salida[0]~5_combout\);
=======
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[2]~reg0_regout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[3]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~6_combout\);
>>>>>>> 17bdf2c0d6bba0c30ba9f1f0fcceb62c747ee365

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led~I\ : cycloneii_io
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
	datain => \ALT_INV_sensor_metales~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[6]~I\ : cycloneii_io
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
	datain => \inst|salida[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(6));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[5]~I\ : cycloneii_io
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
	datain => \inst|salida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(5));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[4]~I\ : cycloneii_io
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
	datain => \inst|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(4));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[3]~I\ : cycloneii_io
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
	datain => \inst|salida[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(3));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[2]~I\ : cycloneii_io
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
	datain => \inst|salida[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[1]~I\ : cycloneii_io
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
	datain => \inst|salida[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[0]~I\ : cycloneii_io
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
	datain => \inst|salida[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(0));
END structure;


