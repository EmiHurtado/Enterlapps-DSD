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

-- DATE "04/04/2022 21:43:07"

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

ENTITY 	Practica2 IS
    PORT (
	Salida1Hz : OUT std_logic;
	Reloj : IN std_logic;
	Reset : IN std_logic;
	Salida5Hz : OUT std_logic;
	Salida25Hz : OUT std_logic
	);
END Practica2;

-- Design Ports Information
-- Salida1Hz	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Salida5Hz	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Salida25Hz	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reloj	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Salida1Hz : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Salida5Hz : std_logic;
SIGNAL ww_Salida25Hz : std_logic;
SIGNAL \Reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst|contador~0_combout\ : std_logic;
SIGNAL \inst|contador~5_combout\ : std_logic;
SIGNAL \inst|contador~9_combout\ : std_logic;
SIGNAL \inst2|contador~0_combout\ : std_logic;
SIGNAL \inst2|contador~1_combout\ : std_logic;
SIGNAL \inst2|contador~6_combout\ : std_logic;
SIGNAL \inst1|contador~0_combout\ : std_logic;
SIGNAL \inst1|contador~1_combout\ : std_logic;
SIGNAL \inst1|contador~6_combout\ : std_logic;
SIGNAL \Reloj~combout\ : std_logic;
SIGNAL \Reloj~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|contador~11_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|contador~7_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|contador~4_combout\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|contador~3_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|contador~2_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|contador~1_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|contador~10_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|contador~8_combout\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|contador~6_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|salida_media~0_combout\ : std_logic;
SIGNAL \inst|salida_media~regout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_cout\ : std_logic;
SIGNAL \inst2|Add0~3_cout\ : std_logic;
SIGNAL \inst2|Add0~5_cout\ : std_logic;
SIGNAL \inst2|Add0~7_cout\ : std_logic;
SIGNAL \inst2|Add0~9_cout\ : std_logic;
SIGNAL \inst2|Add0~11_cout\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|contador~7_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|contador~5_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|contador~4_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|contador~3_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|contador~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|salida_media~0_combout\ : std_logic;
SIGNAL \inst2|salida_media~regout\ : std_logic;
SIGNAL \inst1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|Add0~3_cout\ : std_logic;
SIGNAL \inst1|Add0~5_cout\ : std_logic;
SIGNAL \inst1|Add0~7_cout\ : std_logic;
SIGNAL \inst1|Add0~9_cout\ : std_logic;
SIGNAL \inst1|Add0~11_cout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|contador~7_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|contador~5_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|contador~4_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|contador~3_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|contador~2_combout\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|salida_media~0_combout\ : std_logic;
SIGNAL \inst1|salida_media~regout\ : std_logic;
SIGNAL \inst|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|contador\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst1|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_Reset~combout\ : std_logic;

BEGIN

Salida1Hz <= ww_Salida1Hz;
ww_Reloj <= Reloj;
ww_Reset <= Reset;
Salida5Hz <= ww_Salida5Hz;
Salida25Hz <= ww_Salida25Hz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reloj~combout\);
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;

-- Location: LCCOMB_X2_Y12_N0
\inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|contador\(13) & (!\inst|Add0~25\)) # (!\inst|contador\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X2_Y12_N6
\inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|contador\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|contador\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|contador\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X2_Y12_N12
\inst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|contador\(19) & (!\inst|Add0~37\)) # (!\inst|contador\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X2_Y12_N22
\inst|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|contador\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|contador\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|contador\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X2_Y12_N24
\inst|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = \inst|Add0~49\ $ (\inst|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(25),
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\);

-- Location: LCCOMB_X5_Y13_N26
\inst2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|contador\(9) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|contador\(9) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|contador\(9) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(9),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X5_Y12_N12
\inst2|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|contador\(18) & (!\inst2|Add0~33\)) # (!\inst2|contador\(18) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(18),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X5_Y12_N14
\inst2|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|contador\(19) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|contador\(19) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|contador\(19) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(19),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X5_Y12_N16
\inst2|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|contador\(20) & (!\inst2|Add0~37\)) # (!\inst2|contador\(20) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|contador\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(20),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X5_Y12_N18
\inst2|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|contador\(21) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|contador\(21) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|contador\(21) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(21),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X5_Y12_N20
\inst2|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|contador\(22) & (!\inst2|Add0~41\)) # (!\inst2|contador\(22) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|contador\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(22),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X5_Y12_N22
\inst2|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = \inst2|Add0~43\ $ (!\inst2|contador\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|contador\(23),
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\);

-- Location: LCCOMB_X3_Y13_N26
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|contador\(10) & (!\inst1|Add0~17\)) # (!\inst1|contador\(10) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(10),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X3_Y12_N10
\inst1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|contador\(18) & (!\inst1|Add0~33\)) # (!\inst1|contador\(18) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(18),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X3_Y12_N14
\inst1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|contador\(20) & (!\inst1|Add0~37\)) # (!\inst1|contador\(20) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|contador\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(20),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X3_Y12_N16
\inst1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|contador\(21) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|contador\(21) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|contador\(21) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(21),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X3_Y12_N18
\inst1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|contador\(22) & (!\inst1|Add0~41\)) # (!\inst1|contador\(22) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|contador\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(22),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X3_Y12_N20
\inst1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|contador\(23) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|contador\(23) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|contador\(23) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(23),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: LCCOMB_X3_Y12_N22
\inst1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = \inst1|Add0~45\ $ (\inst1|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|contador\(24),
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\);

-- Location: LCFF_X2_Y12_N27
\inst|contador[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(25));

-- Location: LCFF_X1_Y12_N9
\inst|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(19));

-- Location: LCFF_X2_Y12_N7
\inst|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~32_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(16));

-- Location: LCFF_X1_Y12_N11
\inst|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(13));

-- Location: LCFF_X5_Y12_N29
\inst2|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(23));

-- Location: LCFF_X5_Y12_N31
\inst2|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(20));

-- Location: LCFF_X5_Y12_N21
\inst2|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(22));

-- Location: LCFF_X5_Y12_N19
\inst2|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~40_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(21));

-- Location: LCCOMB_X4_Y12_N20
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|contador\(22) & (!\inst2|contador\(21) & (\inst2|contador\(23) & \inst2|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(22),
	datab => \inst2|contador\(21),
	datac => \inst2|contador\(23),
	datad => \inst2|contador\(20),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCFF_X5_Y12_N13
\inst2|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(18));

-- Location: LCFF_X5_Y13_N7
\inst2|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~6_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(9));

-- Location: LCFF_X3_Y12_N29
\inst1|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(24));

-- Location: LCFF_X3_Y12_N31
\inst1|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(21));

-- Location: LCFF_X3_Y12_N21
\inst1|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~44_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(23));

-- Location: LCFF_X3_Y12_N19
\inst1|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(22));

-- Location: LCCOMB_X4_Y12_N12
\inst1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|contador\(23) & (!\inst1|contador\(22) & (\inst1|contador\(21) & \inst1|contador\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(23),
	datab => \inst1|contador\(22),
	datac => \inst1|contador\(21),
	datad => \inst1|contador\(24),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCFF_X3_Y12_N11
\inst1|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(18));

-- Location: LCFF_X3_Y13_N7
\inst1|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~6_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(10));

-- Location: LCCOMB_X2_Y12_N26
\inst|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~0_combout\ = (\inst|Add0~50_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)) # (!\inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~5_combout\,
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~50_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~0_combout\);

-- Location: LCCOMB_X1_Y12_N8
\inst|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~5_combout\ = (\inst|Add0~38_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Add0~38_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~5_combout\);

-- Location: LCCOMB_X1_Y12_N10
\inst|contador~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~9_combout\ = (\inst|Add0~26_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Add0~26_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~9_combout\);

-- Location: LCCOMB_X5_Y12_N28
\inst2|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~0_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|contador~0_combout\);

-- Location: LCCOMB_X5_Y12_N30
\inst2|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~1_combout\ = (\inst2|Add0~38_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~38_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~1_combout\);

-- Location: LCCOMB_X5_Y13_N6
\inst2|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~6_combout\ = (\inst2|Add0~16_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~16_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~6_combout\);

-- Location: LCCOMB_X3_Y12_N28
\inst1|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~0_combout\ = (!\inst1|Equal0~5_combout\ & \inst1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datad => \inst1|Add0~46_combout\,
	combout => \inst1|contador~0_combout\);

-- Location: LCCOMB_X3_Y12_N30
\inst1|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~1_combout\ = (\inst1|Add0~40_combout\ & !\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~40_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~1_combout\);

-- Location: LCCOMB_X3_Y13_N6
\inst1|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~6_combout\ = (\inst1|Add0~18_combout\ & !\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~6_combout\);

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

-- Location: LCCOMB_X2_Y13_N6
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|contador\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X2_Y13_N8
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|contador\(1) & (!\inst|Add0~1\)) # (!\inst|contador\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
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
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LCFF_X2_Y13_N9
\inst|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(1));

-- Location: LCCOMB_X2_Y13_N10
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|contador\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|contador\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|contador\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X2_Y13_N12
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|contador\(3) & (!\inst|Add0~5\)) # (!\inst|contador\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X2_Y13_N14
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|contador\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|contador\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|contador\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCFF_X2_Y13_N15
\inst|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~8_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(4));

-- Location: LCCOMB_X2_Y13_N16
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|contador\(5) & (!\inst|Add0~9\)) # (!\inst|contador\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X2_Y13_N18
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|contador\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|contador\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|contador\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCFF_X2_Y13_N19
\inst|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~12_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(6));

-- Location: LCCOMB_X2_Y13_N20
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|contador\(7) & (!\inst|Add0~13\)) # (!\inst|contador\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X1_Y12_N20
\inst|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~11_combout\ = (\inst|Add0~14_combout\ & (((!\inst|Equal0~7_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|contador~11_combout\);

-- Location: LCFF_X1_Y12_N21
\inst|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(7));

-- Location: LCCOMB_X2_Y13_N22
\inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|contador\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|contador\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|contador\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCFF_X2_Y13_N23
\inst|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~16_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(8));

-- Location: LCCOMB_X2_Y13_N24
\inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|contador\(9) & (!\inst|Add0~17\)) # (!\inst|contador\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCFF_X2_Y13_N25
\inst|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~18_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(9));

-- Location: LCCOMB_X2_Y13_N26
\inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|contador\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|contador\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|contador\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCFF_X2_Y13_N27
\inst|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~20_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(10));

-- Location: LCCOMB_X2_Y13_N28
\inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|contador\(11) & (!\inst|Add0~21\)) # (!\inst|contador\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCFF_X2_Y13_N29
\inst|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~22_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(11));

-- Location: LCCOMB_X2_Y13_N30
\inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|contador\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|contador\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|contador\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X2_Y12_N2
\inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|contador\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|contador\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|contador\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X2_Y12_N4
\inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|contador\(15) & (!\inst|Add0~29\)) # (!\inst|contador\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X1_Y12_N16
\inst|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~7_combout\ = (\inst|Add0~30_combout\ & (((!\inst|Equal0~7_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~30_combout\,
	combout => \inst|contador~7_combout\);

-- Location: LCFF_X1_Y12_N17
\inst|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(15));

-- Location: LCCOMB_X2_Y12_N8
\inst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|contador\(17) & (!\inst|Add0~33\)) # (!\inst|contador\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X2_Y12_N10
\inst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|contador\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|contador\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|contador\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X2_Y12_N14
\inst|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|contador\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|contador\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|contador\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X1_Y12_N14
\inst|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~4_combout\ = (\inst|Add0~40_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~4_combout\);

-- Location: LCFF_X1_Y12_N15
\inst|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(20));

-- Location: LCFF_X2_Y12_N11
\inst|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~36_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(18));

-- Location: LCCOMB_X2_Y12_N16
\inst|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|contador\(21) & (!\inst|Add0~41\)) # (!\inst|contador\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X2_Y12_N30
\inst|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~3_combout\ = (\inst|Add0~42_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)) # (!\inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~5_combout\,
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~42_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~3_combout\);

-- Location: LCFF_X2_Y12_N31
\inst|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~3_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(21));

-- Location: LCCOMB_X1_Y12_N22
\inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|contador\(19) & (\inst|contador\(20) & (!\inst|contador\(18) & \inst|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(19),
	datab => \inst|contador\(20),
	datac => \inst|contador\(18),
	datad => \inst|contador\(21),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y12_N18
\inst|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|contador\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|contador\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|contador\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X1_Y12_N30
\inst|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~2_combout\ = (\inst|Add0~44_combout\ & (((!\inst|Equal0~7_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|contador~2_combout\);

-- Location: LCFF_X1_Y12_N31
\inst|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(22));

-- Location: LCCOMB_X2_Y12_N20
\inst|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|contador\(23) & (!\inst|Add0~45\)) # (!\inst|contador\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X2_Y12_N28
\inst|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~1_combout\ = (\inst|Add0~46_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~7_combout\)) # (!\inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~5_combout\,
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~46_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~1_combout\);

-- Location: LCFF_X2_Y12_N29
\inst|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(23));

-- Location: LCFF_X2_Y12_N23
\inst|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~48_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(24));

-- Location: LCCOMB_X1_Y12_N4
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|contador\(25) & (\inst|contador\(22) & (\inst|contador\(23) & !\inst|contador\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(25),
	datab => \inst|contador\(22),
	datac => \inst|contador\(23),
	datad => \inst|contador\(24),
	combout => \inst|Equal0~2_combout\);

-- Location: LCFF_X2_Y13_N17
\inst|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~10_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(5));

-- Location: LCCOMB_X2_Y13_N4
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|contador\(0) & (\inst|contador\(4) & (\inst|contador\(5) & \inst|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(0),
	datab => \inst|contador\(4),
	datac => \inst|contador\(5),
	datad => \inst|contador\(6),
	combout => \inst|Equal0~0_combout\);

-- Location: LCFF_X2_Y13_N11
\inst|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(2));

-- Location: LCCOMB_X2_Y13_N2
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|contador\(3) & (\inst|contador\(1) & (\inst|Equal0~0_combout\ & \inst|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(3),
	datab => \inst|contador\(1),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|contador\(2),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y12_N12
\inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y12_N24
\inst|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~10_combout\ = (\inst|Add0~24_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Add0~24_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~10_combout\);

-- Location: LCFF_X1_Y12_N25
\inst|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~10_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(12));

-- Location: LCCOMB_X1_Y12_N26
\inst|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|contador\(13) & (!\inst|contador\(10) & (\inst|contador\(12) & !\inst|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(13),
	datab => \inst|contador\(10),
	datac => \inst|contador\(12),
	datad => \inst|contador\(11),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y12_N6
\inst|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|contador\(8) & (!\inst|contador\(9) & (!\inst|contador\(7) & \inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(8),
	datab => \inst|contador\(9),
	datac => \inst|contador\(7),
	datad => \inst|Equal0~6_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y12_N18
\inst|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~8_combout\ = (\inst|Add0~28_combout\ & (((!\inst|Equal0~7_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|contador~8_combout\);

-- Location: LCFF_X1_Y12_N19
\inst|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~8_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(14));

-- Location: LCCOMB_X1_Y12_N2
\inst|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador~6_combout\ = (\inst|Add0~34_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~5_combout\)) # (!\inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Add0~34_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|contador~6_combout\);

-- Location: LCFF_X1_Y12_N3
\inst|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|contador~6_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(17));

-- Location: LCCOMB_X1_Y12_N28
\inst|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|contador\(16) & (\inst|contador\(14) & (\inst|contador\(15) & \inst|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(16),
	datab => \inst|contador\(14),
	datac => \inst|contador\(15),
	datad => \inst|contador\(17),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y12_N0
\inst|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|salida_media~0_combout\ = \inst|salida_media~regout\ $ (((\inst|Equal0~7_combout\ & (\inst|Equal0~5_combout\ & \inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|salida_media~regout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|salida_media~0_combout\);

-- Location: LCFF_X1_Y12_N1
\inst|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|salida_media~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|salida_media~regout\);

-- Location: LCFF_X2_Y13_N13
\inst|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~6_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(3));

-- Location: LCFF_X2_Y13_N7
\inst|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst|Add0~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(0));

-- Location: LCCOMB_X5_Y13_N10
\inst2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_cout\ = CARRY((\inst|contador\(1) & \inst|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(0),
	datad => VCC,
	cout => \inst2|Add0~1_cout\);

-- Location: LCCOMB_X5_Y13_N12
\inst2|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~3_cout\ = CARRY((!\inst2|Add0~1_cout\) # (!\inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(2),
	datad => VCC,
	cin => \inst2|Add0~1_cout\,
	cout => \inst2|Add0~3_cout\);

-- Location: LCCOMB_X5_Y13_N14
\inst2|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_cout\ = CARRY((\inst|contador\(3) & !\inst2|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(3),
	datad => VCC,
	cin => \inst2|Add0~3_cout\,
	cout => \inst2|Add0~5_cout\);

-- Location: LCCOMB_X5_Y13_N16
\inst2|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~7_cout\ = CARRY((!\inst2|Add0~5_cout\) # (!\inst|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(4),
	datad => VCC,
	cin => \inst2|Add0~5_cout\,
	cout => \inst2|Add0~7_cout\);

-- Location: LCCOMB_X5_Y13_N18
\inst2|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_cout\ = CARRY((\inst|contador\(5) & !\inst2|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(5),
	datad => VCC,
	cin => \inst2|Add0~7_cout\,
	cout => \inst2|Add0~9_cout\);

-- Location: LCCOMB_X5_Y13_N20
\inst2|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~11_cout\ = CARRY((!\inst2|Add0~9_cout\) # (!\inst|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(6),
	datad => VCC,
	cin => \inst2|Add0~9_cout\,
	cout => \inst2|Add0~11_cout\);

-- Location: LCCOMB_X5_Y13_N22
\inst2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|contador\(7) & (\inst2|Add0~11_cout\ $ (GND))) # (!\inst2|contador\(7) & (!\inst2|Add0~11_cout\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|contador\(7) & !\inst2|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(7),
	datad => VCC,
	cin => \inst2|Add0~11_cout\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X5_Y13_N2
\inst2|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~7_combout\ = (\inst2|Add0~12_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~12_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~7_combout\);

-- Location: LCFF_X5_Y13_N3
\inst2|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(7));

-- Location: LCCOMB_X5_Y13_N24
\inst2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|contador\(8) & (!\inst2|Add0~13\)) # (!\inst2|contador\(8) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(8),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X5_Y13_N28
\inst2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|contador\(10) & (!\inst2|Add0~17\)) # (!\inst2|contador\(10) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(10),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X5_Y13_N8
\inst2|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~5_combout\ = (\inst2|Add0~18_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~18_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~5_combout\);

-- Location: LCFF_X5_Y13_N9
\inst2|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(10));

-- Location: LCCOMB_X5_Y13_N30
\inst2|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|contador\(11) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|contador\(11) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|contador\(11) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(11),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCFF_X5_Y13_N31
\inst2|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~20_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(11));

-- Location: LCCOMB_X5_Y12_N0
\inst2|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|contador\(12) & (!\inst2|Add0~21\)) # (!\inst2|contador\(12) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(12),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X4_Y12_N28
\inst2|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~4_combout\ = (\inst2|Add0~22_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~4_combout\);

-- Location: LCFF_X4_Y12_N29
\inst2|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(12));

-- Location: LCCOMB_X5_Y12_N2
\inst2|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|contador\(13) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|contador\(13) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|contador\(13) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(13),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCFF_X5_Y12_N3
\inst2|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(13));

-- Location: LCCOMB_X5_Y12_N4
\inst2|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|contador\(14) & (!\inst2|Add0~25\)) # (!\inst2|contador\(14) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(14),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCFF_X5_Y12_N5
\inst2|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~26_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(14));

-- Location: LCCOMB_X5_Y12_N6
\inst2|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|contador\(15) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|contador\(15) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|contador\(15) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(15),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X5_Y12_N26
\inst2|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~3_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|contador~3_combout\);

-- Location: LCFF_X5_Y12_N27
\inst2|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~3_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(15));

-- Location: LCCOMB_X5_Y12_N8
\inst2|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|contador\(16) & (!\inst2|Add0~29\)) # (!\inst2|contador\(16) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(16),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCFF_X5_Y12_N9
\inst2|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~30_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(16));

-- Location: LCCOMB_X5_Y12_N10
\inst2|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|contador\(17) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|contador\(17) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|contador\(17) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(17),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCFF_X5_Y12_N11
\inst2|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~32_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(17));

-- Location: LCCOMB_X5_Y12_N24
\inst2|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contador~2_combout\ = (\inst2|Add0~36_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~36_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~2_combout\);

-- Location: LCFF_X5_Y12_N25
\inst2|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|contador~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(19));

-- Location: LCCOMB_X4_Y12_N22
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|contador\(18) & (!\inst2|contador\(17) & (!\inst2|contador\(16) & \inst2|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(18),
	datab => \inst2|contador\(17),
	datac => \inst2|contador\(16),
	datad => \inst2|contador\(19),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y12_N14
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|contador\(13) & (\inst2|contador\(12) & (\inst2|contador\(15) & !\inst2|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(13),
	datab => \inst2|contador\(12),
	datac => \inst2|contador\(15),
	datad => \inst2|contador\(14),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCFF_X5_Y13_N25
\inst2|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|Add0~14_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contador\(8));

-- Location: LCCOMB_X5_Y13_N0
\inst2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst2|contador\(9) & (\inst2|contador\(10) & (!\inst2|contador\(8) & !\inst2|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(9),
	datab => \inst2|contador\(10),
	datac => \inst2|contador\(8),
	datad => \inst2|contador\(11),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y12_N8
\inst2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (!\inst2|contador\(7) & (\inst2|Equal0~2_combout\ & \inst2|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(7),
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X4_Y12_N18
\inst2|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|Equal0~1_combout\ & (\inst2|Equal0~4_combout\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y12_N16
\inst2|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|salida_media~0_combout\ = \inst2|salida_media~regout\ $ (\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|salida_media~regout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|salida_media~0_combout\);

-- Location: LCFF_X4_Y12_N17
\inst2|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst2|salida_media~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|salida_media~regout\);

-- Location: LCCOMB_X3_Y13_N8
\inst1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_cout\ = CARRY((\inst|contador\(1) & \inst|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(0),
	datad => VCC,
	cout => \inst1|Add0~1_cout\);

-- Location: LCCOMB_X3_Y13_N10
\inst1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_cout\ = CARRY((!\inst1|Add0~1_cout\) # (!\inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(2),
	datad => VCC,
	cin => \inst1|Add0~1_cout\,
	cout => \inst1|Add0~3_cout\);

-- Location: LCCOMB_X3_Y13_N12
\inst1|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_cout\ = CARRY((\inst|contador\(3) & !\inst1|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(3),
	datad => VCC,
	cin => \inst1|Add0~3_cout\,
	cout => \inst1|Add0~5_cout\);

-- Location: LCCOMB_X3_Y13_N14
\inst1|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~7_cout\ = CARRY((!\inst1|Add0~5_cout\) # (!\inst|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(4),
	datad => VCC,
	cin => \inst1|Add0~5_cout\,
	cout => \inst1|Add0~7_cout\);

-- Location: LCCOMB_X3_Y13_N16
\inst1|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_cout\ = CARRY((\inst|contador\(5) & !\inst1|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(5),
	datad => VCC,
	cin => \inst1|Add0~7_cout\,
	cout => \inst1|Add0~9_cout\);

-- Location: LCCOMB_X3_Y13_N18
\inst1|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~11_cout\ = CARRY((!\inst1|Add0~9_cout\) # (!\inst|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(6),
	datad => VCC,
	cin => \inst1|Add0~9_cout\,
	cout => \inst1|Add0~11_cout\);

-- Location: LCCOMB_X3_Y13_N20
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|contador\(7) & (\inst1|Add0~11_cout\ $ (GND))) # (!\inst1|contador\(7) & (!\inst1|Add0~11_cout\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|contador\(7) & !\inst1|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(7),
	datad => VCC,
	cin => \inst1|Add0~11_cout\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X3_Y13_N22
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|contador\(8) & (!\inst1|Add0~13\)) # (!\inst1|contador\(8) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(8),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X3_Y13_N2
\inst1|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~7_combout\ = (\inst1|Add0~14_combout\ & !\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~14_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~7_combout\);

-- Location: LCFF_X3_Y13_N3
\inst1|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(8));

-- Location: LCCOMB_X3_Y13_N24
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|contador\(9) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|contador\(9) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|contador\(9) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(9),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X3_Y13_N28
\inst1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|contador\(11) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|contador\(11) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|contador\(11) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(11),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X3_Y13_N0
\inst1|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~5_combout\ = (\inst1|Add0~20_combout\ & !\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~20_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~5_combout\);

-- Location: LCFF_X3_Y13_N1
\inst1|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(11));

-- Location: LCCOMB_X3_Y13_N30
\inst1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|contador\(12) & (!\inst1|Add0~21\)) # (!\inst1|contador\(12) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(12),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCFF_X3_Y13_N31
\inst1|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~22_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(12));

-- Location: LCCOMB_X3_Y12_N0
\inst1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|contador\(13) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|contador\(13) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|contador\(13) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(13),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X4_Y12_N24
\inst1|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~4_combout\ = (\inst1|Add0~24_combout\ & !\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~24_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~4_combout\);

-- Location: LCFF_X4_Y12_N25
\inst1|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(13));

-- Location: LCCOMB_X3_Y12_N2
\inst1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|contador\(14) & (!\inst1|Add0~25\)) # (!\inst1|contador\(14) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(14),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCFF_X3_Y12_N3
\inst1|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~26_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(14));

-- Location: LCCOMB_X3_Y12_N4
\inst1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|contador\(15) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|contador\(15) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|contador\(15) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(15),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCFF_X3_Y12_N5
\inst1|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~28_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(15));

-- Location: LCCOMB_X3_Y12_N6
\inst1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|contador\(16) & (!\inst1|Add0~29\)) # (!\inst1|contador\(16) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(16),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X4_Y12_N30
\inst1|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~3_combout\ = (\inst1|Add0~30_combout\ & !\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~30_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~3_combout\);

-- Location: LCFF_X4_Y12_N31
\inst1|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~3_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(16));

-- Location: LCCOMB_X3_Y12_N8
\inst1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|contador\(17) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|contador\(17) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|contador\(17) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(17),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCFF_X3_Y12_N9
\inst1|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~32_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(17));

-- Location: LCCOMB_X3_Y12_N12
\inst1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|contador\(19) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|contador\(19) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|contador\(19) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(19),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X3_Y12_N24
\inst1|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~2_combout\ = (\inst1|Add0~38_combout\ & !\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~2_combout\);

-- Location: LCFF_X3_Y12_N25
\inst1|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|contador~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(20));

-- Location: LCFF_X3_Y12_N13
\inst1|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~36_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(19));

-- Location: LCCOMB_X3_Y12_N26
\inst1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|contador\(18) & (!\inst1|contador\(17) & (\inst1|contador\(20) & !\inst1|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(18),
	datab => \inst1|contador\(17),
	datac => \inst1|contador\(20),
	datad => \inst1|contador\(19),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y12_N26
\inst1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|contador\(13) & (\inst1|contador\(16) & (!\inst1|contador\(15) & !\inst1|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(13),
	datab => \inst1|contador\(16),
	datac => \inst1|contador\(15),
	datad => \inst1|contador\(14),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCFF_X3_Y13_N21
\inst1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~12_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(7));

-- Location: LCFF_X3_Y13_N25
\inst1|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|Add0~16_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(9));

-- Location: LCCOMB_X3_Y13_N4
\inst1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|contador\(10) & (!\inst1|contador\(12) & (!\inst1|contador\(9) & \inst1|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(10),
	datab => \inst1|contador\(12),
	datac => \inst1|contador\(9),
	datad => \inst1|contador\(11),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y12_N4
\inst1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (!\inst1|contador\(8) & (\inst1|Equal0~2_combout\ & (\inst1|contador\(7) & \inst1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(8),
	datab => \inst1|Equal0~2_combout\,
	datac => \inst1|contador\(7),
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X4_Y12_N2
\inst1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|Equal0~0_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~4_combout\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y12_N10
\inst1|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salida_media~0_combout\ = \inst1|salida_media~regout\ $ (\inst1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|salida_media~regout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|salida_media~0_combout\);

-- Location: LCFF_X4_Y12_N11
\inst1|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj~clkctrl_outclk\,
	datain => \inst1|salida_media~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|salida_media~regout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Salida1Hz~I\ : cycloneii_io
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
	datain => \inst|salida_media~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Salida1Hz);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Salida5Hz~I\ : cycloneii_io
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
	datain => \inst2|salida_media~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Salida5Hz);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Salida25Hz~I\ : cycloneii_io
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
	datain => \inst1|salida_media~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Salida25Hz);
END structure;


