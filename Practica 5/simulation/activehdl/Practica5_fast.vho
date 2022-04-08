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

-- DATE "04/07/2022 21:20:55"

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

ENTITY 	Practica5 IS
    PORT (
	LED1 : OUT std_logic;
	Selector : IN std_logic;
	CLK : IN std_logic;
	ResetCLK : IN std_logic;
	ResetCounter : IN std_logic;
	INIT : IN std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic;
	LED8 : OUT std_logic
	);
END Practica5;

-- Design Ports Information
-- LED1	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED5	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED6	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED7	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED8	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Selector	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INIT	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ResetCounter	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ResetCLK	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_Selector : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ResetCLK : std_logic;
SIGNAL ww_ResetCounter : std_logic;
SIGNAL ww_INIT : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL ww_LED8 : std_logic;
SIGNAL \ResetCounter~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|Add0~15\ : std_logic;
SIGNAL \inst11|Add0~16_combout\ : std_logic;
SIGNAL \inst11|Add0~17\ : std_logic;
SIGNAL \inst11|Add0~18_combout\ : std_logic;
SIGNAL \inst11|Add0~19\ : std_logic;
SIGNAL \inst11|Add0~20_combout\ : std_logic;
SIGNAL \inst11|Add0~21\ : std_logic;
SIGNAL \inst11|Add0~22_combout\ : std_logic;
SIGNAL \inst11|Add0~23\ : std_logic;
SIGNAL \inst11|Add0~24_combout\ : std_logic;
SIGNAL \inst11|Add0~25\ : std_logic;
SIGNAL \inst11|Add0~26_combout\ : std_logic;
SIGNAL \inst11|Add0~27\ : std_logic;
SIGNAL \inst11|Add0~28_combout\ : std_logic;
SIGNAL \inst11|Add0~29\ : std_logic;
SIGNAL \inst11|Add0~30_combout\ : std_logic;
SIGNAL \inst11|Add0~31\ : std_logic;
SIGNAL \inst11|Add0~32_combout\ : std_logic;
SIGNAL \inst11|Add0~33\ : std_logic;
SIGNAL \inst11|Add0~34_combout\ : std_logic;
SIGNAL \inst11|Add0~35\ : std_logic;
SIGNAL \inst11|Add0~36_combout\ : std_logic;
SIGNAL \inst11|Add0~37\ : std_logic;
SIGNAL \inst11|Add0~38_combout\ : std_logic;
SIGNAL \inst11|Add0~39\ : std_logic;
SIGNAL \inst11|Add0~40_combout\ : std_logic;
SIGNAL \inst11|Add0~41\ : std_logic;
SIGNAL \inst11|Add0~42_combout\ : std_logic;
SIGNAL \inst11|Add0~43\ : std_logic;
SIGNAL \inst11|Add0~44_combout\ : std_logic;
SIGNAL \inst11|Add0~45\ : std_logic;
SIGNAL \inst11|Add0~46_combout\ : std_logic;
SIGNAL \inst11|Add0~47\ : std_logic;
SIGNAL \inst11|Add0~48_combout\ : std_logic;
SIGNAL \inst11|salida_media~regout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~3_combout\ : std_logic;
SIGNAL \inst11|Equal0~4_combout\ : std_logic;
SIGNAL \inst11|Equal0~5_combout\ : std_logic;
SIGNAL \inst11|Equal0~6_combout\ : std_logic;
SIGNAL \inst11|Equal0~7_combout\ : std_logic;
SIGNAL \inst11|salida_media~0_combout\ : std_logic;
SIGNAL \inst11|contador~0_combout\ : std_logic;
SIGNAL \inst11|contador~1_combout\ : std_logic;
SIGNAL \inst11|contador~2_combout\ : std_logic;
SIGNAL \inst11|contador~3_combout\ : std_logic;
SIGNAL \inst11|contador~4_combout\ : std_logic;
SIGNAL \inst11|contador~5_combout\ : std_logic;
SIGNAL \inst11|contador~6_combout\ : std_logic;
SIGNAL \inst11|contador~7_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \ResetCLK~combout\ : std_logic;
SIGNAL \inst11|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \ResetCounter~combout\ : std_logic;
SIGNAL \ResetCounter~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst8~regout\ : std_logic;
SIGNAL \inst|inst9~regout\ : std_logic;
SIGNAL \inst|inst10~regout\ : std_logic;
SIGNAL \inst|inst11~regout\ : std_logic;
SIGNAL \inst|inst12~feeder_combout\ : std_logic;
SIGNAL \inst|inst12~regout\ : std_logic;
SIGNAL \inst|inst13~feeder_combout\ : std_logic;
SIGNAL \inst|inst13~regout\ : std_logic;
SIGNAL \inst|inst14~regout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~regout\ : std_logic;
SIGNAL \Selector~combout\ : std_logic;
SIGNAL \INIT~combout\ : std_logic;
SIGNAL \inst10|inst~1_combout\ : std_logic;
SIGNAL \inst10|inst1~regout\ : std_logic;
SIGNAL \inst10|inst2~regout\ : std_logic;
SIGNAL \inst10|inst3~regout\ : std_logic;
SIGNAL \inst10|inst4~regout\ : std_logic;
SIGNAL \inst10|inst5~regout\ : std_logic;
SIGNAL \inst10|inst6~regout\ : std_logic;
SIGNAL \inst10|inst7~feeder_combout\ : std_logic;
SIGNAL \inst10|inst7~regout\ : std_logic;
SIGNAL \inst10|inst~3_combout\ : std_logic;
SIGNAL \inst10|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst~_emulated_regout\ : std_logic;
SIGNAL \inst10|inst~2_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst11|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_ResetCounter~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ResetCLK~combout\ : std_logic;

BEGIN

LED1 <= ww_LED1;
ww_Selector <= Selector;
ww_CLK <= CLK;
ww_ResetCLK <= ResetCLK;
ww_ResetCounter <= ResetCounter;
ww_INIT <= INIT;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
LED6 <= ww_LED6;
LED7 <= ww_LED7;
LED8 <= ww_LED8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ResetCounter~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ResetCounter~combout\);

\inst11|salida_media~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst11|salida_media~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_ResetCounter~clkctrl_outclk\ <= NOT \ResetCounter~clkctrl_outclk\;
\ALT_INV_ResetCLK~combout\ <= NOT \ResetCLK~combout\;

-- Location: LCCOMB_X2_Y12_N8
\inst11|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|contador\(0) $ (VCC)
-- \inst11|Add0~1\ = CARRY(\inst11|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(0),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X2_Y12_N10
\inst11|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst11|contador\(1) & (!\inst11|Add0~1\)) # (!\inst11|contador\(1) & ((\inst11|Add0~1\) # (GND)))
-- \inst11|Add0~3\ = CARRY((!\inst11|Add0~1\) # (!\inst11|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(1),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X2_Y12_N12
\inst11|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst11|contador\(2) & (\inst11|Add0~3\ $ (GND))) # (!\inst11|contador\(2) & (!\inst11|Add0~3\ & VCC))
-- \inst11|Add0~5\ = CARRY((\inst11|contador\(2) & !\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(2),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X2_Y12_N14
\inst11|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst11|contador\(3) & (!\inst11|Add0~5\)) # (!\inst11|contador\(3) & ((\inst11|Add0~5\) # (GND)))
-- \inst11|Add0~7\ = CARRY((!\inst11|Add0~5\) # (!\inst11|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(3),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X2_Y12_N16
\inst11|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst11|contador\(4) & (\inst11|Add0~7\ $ (GND))) # (!\inst11|contador\(4) & (!\inst11|Add0~7\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst11|contador\(4) & !\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(4),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X2_Y12_N18
\inst11|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst11|contador\(5) & (!\inst11|Add0~9\)) # (!\inst11|contador\(5) & ((\inst11|Add0~9\) # (GND)))
-- \inst11|Add0~11\ = CARRY((!\inst11|Add0~9\) # (!\inst11|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(5),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: LCCOMB_X2_Y12_N20
\inst11|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst11|contador\(6) & (\inst11|Add0~11\ $ (GND))) # (!\inst11|contador\(6) & (!\inst11|Add0~11\ & VCC))
-- \inst11|Add0~13\ = CARRY((\inst11|contador\(6) & !\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(6),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: LCCOMB_X2_Y12_N22
\inst11|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = (\inst11|contador\(7) & (!\inst11|Add0~13\)) # (!\inst11|contador\(7) & ((\inst11|Add0~13\) # (GND)))
-- \inst11|Add0~15\ = CARRY((!\inst11|Add0~13\) # (!\inst11|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(7),
	datad => VCC,
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\,
	cout => \inst11|Add0~15\);

-- Location: LCCOMB_X2_Y12_N24
\inst11|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~16_combout\ = (\inst11|contador\(8) & (\inst11|Add0~15\ $ (GND))) # (!\inst11|contador\(8) & (!\inst11|Add0~15\ & VCC))
-- \inst11|Add0~17\ = CARRY((\inst11|contador\(8) & !\inst11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(8),
	datad => VCC,
	cin => \inst11|Add0~15\,
	combout => \inst11|Add0~16_combout\,
	cout => \inst11|Add0~17\);

-- Location: LCCOMB_X2_Y12_N26
\inst11|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~18_combout\ = (\inst11|contador\(9) & (!\inst11|Add0~17\)) # (!\inst11|contador\(9) & ((\inst11|Add0~17\) # (GND)))
-- \inst11|Add0~19\ = CARRY((!\inst11|Add0~17\) # (!\inst11|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(9),
	datad => VCC,
	cin => \inst11|Add0~17\,
	combout => \inst11|Add0~18_combout\,
	cout => \inst11|Add0~19\);

-- Location: LCCOMB_X2_Y12_N28
\inst11|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~20_combout\ = (\inst11|contador\(10) & (\inst11|Add0~19\ $ (GND))) # (!\inst11|contador\(10) & (!\inst11|Add0~19\ & VCC))
-- \inst11|Add0~21\ = CARRY((\inst11|contador\(10) & !\inst11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(10),
	datad => VCC,
	cin => \inst11|Add0~19\,
	combout => \inst11|Add0~20_combout\,
	cout => \inst11|Add0~21\);

-- Location: LCCOMB_X2_Y12_N30
\inst11|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~22_combout\ = (\inst11|contador\(11) & (!\inst11|Add0~21\)) # (!\inst11|contador\(11) & ((\inst11|Add0~21\) # (GND)))
-- \inst11|Add0~23\ = CARRY((!\inst11|Add0~21\) # (!\inst11|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(11),
	datad => VCC,
	cin => \inst11|Add0~21\,
	combout => \inst11|Add0~22_combout\,
	cout => \inst11|Add0~23\);

-- Location: LCCOMB_X2_Y11_N0
\inst11|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~24_combout\ = (\inst11|contador\(12) & (\inst11|Add0~23\ $ (GND))) # (!\inst11|contador\(12) & (!\inst11|Add0~23\ & VCC))
-- \inst11|Add0~25\ = CARRY((\inst11|contador\(12) & !\inst11|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(12),
	datad => VCC,
	cin => \inst11|Add0~23\,
	combout => \inst11|Add0~24_combout\,
	cout => \inst11|Add0~25\);

-- Location: LCCOMB_X2_Y11_N2
\inst11|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~26_combout\ = (\inst11|contador\(13) & (!\inst11|Add0~25\)) # (!\inst11|contador\(13) & ((\inst11|Add0~25\) # (GND)))
-- \inst11|Add0~27\ = CARRY((!\inst11|Add0~25\) # (!\inst11|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(13),
	datad => VCC,
	cin => \inst11|Add0~25\,
	combout => \inst11|Add0~26_combout\,
	cout => \inst11|Add0~27\);

-- Location: LCCOMB_X2_Y11_N4
\inst11|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~28_combout\ = (\inst11|contador\(14) & (\inst11|Add0~27\ $ (GND))) # (!\inst11|contador\(14) & (!\inst11|Add0~27\ & VCC))
-- \inst11|Add0~29\ = CARRY((\inst11|contador\(14) & !\inst11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(14),
	datad => VCC,
	cin => \inst11|Add0~27\,
	combout => \inst11|Add0~28_combout\,
	cout => \inst11|Add0~29\);

-- Location: LCCOMB_X2_Y11_N6
\inst11|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~30_combout\ = (\inst11|contador\(15) & (!\inst11|Add0~29\)) # (!\inst11|contador\(15) & ((\inst11|Add0~29\) # (GND)))
-- \inst11|Add0~31\ = CARRY((!\inst11|Add0~29\) # (!\inst11|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(15),
	datad => VCC,
	cin => \inst11|Add0~29\,
	combout => \inst11|Add0~30_combout\,
	cout => \inst11|Add0~31\);

-- Location: LCCOMB_X2_Y11_N8
\inst11|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~32_combout\ = (\inst11|contador\(16) & (\inst11|Add0~31\ $ (GND))) # (!\inst11|contador\(16) & (!\inst11|Add0~31\ & VCC))
-- \inst11|Add0~33\ = CARRY((\inst11|contador\(16) & !\inst11|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(16),
	datad => VCC,
	cin => \inst11|Add0~31\,
	combout => \inst11|Add0~32_combout\,
	cout => \inst11|Add0~33\);

-- Location: LCCOMB_X2_Y11_N10
\inst11|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~34_combout\ = (\inst11|contador\(17) & (!\inst11|Add0~33\)) # (!\inst11|contador\(17) & ((\inst11|Add0~33\) # (GND)))
-- \inst11|Add0~35\ = CARRY((!\inst11|Add0~33\) # (!\inst11|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(17),
	datad => VCC,
	cin => \inst11|Add0~33\,
	combout => \inst11|Add0~34_combout\,
	cout => \inst11|Add0~35\);

-- Location: LCCOMB_X2_Y11_N12
\inst11|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~36_combout\ = (\inst11|contador\(18) & (\inst11|Add0~35\ $ (GND))) # (!\inst11|contador\(18) & (!\inst11|Add0~35\ & VCC))
-- \inst11|Add0~37\ = CARRY((\inst11|contador\(18) & !\inst11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(18),
	datad => VCC,
	cin => \inst11|Add0~35\,
	combout => \inst11|Add0~36_combout\,
	cout => \inst11|Add0~37\);

-- Location: LCCOMB_X2_Y11_N14
\inst11|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~38_combout\ = (\inst11|contador\(19) & (!\inst11|Add0~37\)) # (!\inst11|contador\(19) & ((\inst11|Add0~37\) # (GND)))
-- \inst11|Add0~39\ = CARRY((!\inst11|Add0~37\) # (!\inst11|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(19),
	datad => VCC,
	cin => \inst11|Add0~37\,
	combout => \inst11|Add0~38_combout\,
	cout => \inst11|Add0~39\);

-- Location: LCCOMB_X2_Y11_N16
\inst11|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~40_combout\ = (\inst11|contador\(20) & (\inst11|Add0~39\ $ (GND))) # (!\inst11|contador\(20) & (!\inst11|Add0~39\ & VCC))
-- \inst11|Add0~41\ = CARRY((\inst11|contador\(20) & !\inst11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(20),
	datad => VCC,
	cin => \inst11|Add0~39\,
	combout => \inst11|Add0~40_combout\,
	cout => \inst11|Add0~41\);

-- Location: LCCOMB_X2_Y11_N18
\inst11|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~42_combout\ = (\inst11|contador\(21) & (!\inst11|Add0~41\)) # (!\inst11|contador\(21) & ((\inst11|Add0~41\) # (GND)))
-- \inst11|Add0~43\ = CARRY((!\inst11|Add0~41\) # (!\inst11|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(21),
	datad => VCC,
	cin => \inst11|Add0~41\,
	combout => \inst11|Add0~42_combout\,
	cout => \inst11|Add0~43\);

-- Location: LCCOMB_X2_Y11_N20
\inst11|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~44_combout\ = (\inst11|contador\(22) & (\inst11|Add0~43\ $ (GND))) # (!\inst11|contador\(22) & (!\inst11|Add0~43\ & VCC))
-- \inst11|Add0~45\ = CARRY((\inst11|contador\(22) & !\inst11|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(22),
	datad => VCC,
	cin => \inst11|Add0~43\,
	combout => \inst11|Add0~44_combout\,
	cout => \inst11|Add0~45\);

-- Location: LCCOMB_X2_Y11_N22
\inst11|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~46_combout\ = (\inst11|contador\(23) & (!\inst11|Add0~45\)) # (!\inst11|contador\(23) & ((\inst11|Add0~45\) # (GND)))
-- \inst11|Add0~47\ = CARRY((!\inst11|Add0~45\) # (!\inst11|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|contador\(23),
	datad => VCC,
	cin => \inst11|Add0~45\,
	combout => \inst11|Add0~46_combout\,
	cout => \inst11|Add0~47\);

-- Location: LCCOMB_X2_Y11_N24
\inst11|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~48_combout\ = \inst11|Add0~47\ $ (!\inst11|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|contador\(24),
	cin => \inst11|Add0~47\,
	combout => \inst11|Add0~48_combout\);

-- Location: LCFF_X1_Y11_N9
\inst11|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|salida_media~0_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|salida_media~regout\);

-- Location: LCFF_X2_Y12_N9
\inst11|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~0_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(0));

-- Location: LCFF_X2_Y11_N27
\inst11|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~0_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(24));

-- Location: LCFF_X2_Y11_N23
\inst11|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~46_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(23));

-- Location: LCFF_X2_Y11_N21
\inst11|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~44_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(22));

-- Location: LCCOMB_X1_Y11_N16
\inst11|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (\inst11|contador\(24) & (!\inst11|contador\(22) & (!\inst11|contador\(23) & \inst11|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(24),
	datab => \inst11|contador\(22),
	datac => \inst11|contador\(23),
	datad => \inst11|contador\(0),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCFF_X1_Y11_N15
\inst11|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~1_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(21));

-- Location: LCFF_X2_Y11_N29
\inst11|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~2_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(20));

-- Location: LCFF_X2_Y11_N15
\inst11|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~38_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(19));

-- Location: LCFF_X2_Y11_N13
\inst11|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~36_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(18));

-- Location: LCCOMB_X1_Y11_N12
\inst11|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (\inst11|contador\(21) & (\inst11|contador\(20) & (!\inst11|contador\(18) & !\inst11|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(21),
	datab => \inst11|contador\(20),
	datac => \inst11|contador\(18),
	datad => \inst11|contador\(19),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCFF_X2_Y11_N31
\inst11|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~3_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(16));

-- Location: LCFF_X2_Y11_N11
\inst11|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~34_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(17));

-- Location: LCFF_X2_Y11_N7
\inst11|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~30_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(15));

-- Location: LCFF_X2_Y11_N5
\inst11|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~28_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(14));

-- Location: LCCOMB_X1_Y11_N28
\inst11|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (!\inst11|contador\(15) & (\inst11|contador\(16) & (!\inst11|contador\(17) & !\inst11|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(15),
	datab => \inst11|contador\(16),
	datac => \inst11|contador\(17),
	datad => \inst11|contador\(14),
	combout => \inst11|Equal0~2_combout\);

-- Location: LCFF_X1_Y11_N31
\inst11|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~4_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(13));

-- Location: LCFF_X1_Y11_N23
\inst11|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~5_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(11));

-- Location: LCFF_X1_Y11_N7
\inst11|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~6_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(10));

-- Location: LCFF_X2_Y11_N1
\inst11|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~24_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(12));

-- Location: LCCOMB_X1_Y11_N26
\inst11|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~3_combout\ = (\inst11|contador\(10) & (\inst11|contador\(11) & (!\inst11|contador\(12) & \inst11|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(10),
	datab => \inst11|contador\(11),
	datac => \inst11|contador\(12),
	datad => \inst11|contador\(13),
	combout => \inst11|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y11_N10
\inst11|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~4_combout\ = (\inst11|Equal0~1_combout\ & (\inst11|Equal0~2_combout\ & (\inst11|Equal0~0_combout\ & \inst11|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~1_combout\,
	datab => \inst11|Equal0~2_combout\,
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|Equal0~3_combout\,
	combout => \inst11|Equal0~4_combout\);

-- Location: LCFF_X2_Y12_N23
\inst11|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~14_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(7));

-- Location: LCFF_X2_Y12_N21
\inst11|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~12_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(6));

-- Location: LCFF_X2_Y12_N27
\inst11|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~18_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(9));

-- Location: LCFF_X1_Y11_N25
\inst11|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|contador~7_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(8));

-- Location: LCCOMB_X1_Y11_N20
\inst11|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~5_combout\ = (!\inst11|contador\(8) & (\inst11|contador\(6) & (\inst11|contador\(7) & !\inst11|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(8),
	datab => \inst11|contador\(6),
	datac => \inst11|contador\(7),
	datad => \inst11|contador\(9),
	combout => \inst11|Equal0~5_combout\);

-- Location: LCFF_X2_Y12_N11
\inst11|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~2_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(1));

-- Location: LCFF_X2_Y12_N19
\inst11|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~10_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(5));

-- Location: LCFF_X2_Y12_N17
\inst11|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~8_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(4));

-- Location: LCFF_X2_Y12_N15
\inst11|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~6_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(3));

-- Location: LCFF_X2_Y12_N13
\inst11|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|Add0~4_combout\,
	aclr => \ALT_INV_ResetCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|contador\(2));

-- Location: LCCOMB_X2_Y12_N4
\inst11|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~6_combout\ = (\inst11|contador\(2) & (\inst11|contador\(3) & (\inst11|contador\(4) & \inst11|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|contador\(2),
	datab => \inst11|contador\(3),
	datac => \inst11|contador\(4),
	datad => \inst11|contador\(5),
	combout => \inst11|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y11_N18
\inst11|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~7_combout\ = (\inst11|Equal0~5_combout\ & (\inst11|contador\(1) & (\inst11|Equal0~6_combout\ & \inst11|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~5_combout\,
	datab => \inst11|contador\(1),
	datac => \inst11|Equal0~6_combout\,
	datad => \inst11|Equal0~4_combout\,
	combout => \inst11|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y11_N8
\inst11|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|salida_media~0_combout\ = \inst11|salida_media~regout\ $ (\inst11|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|salida_media~regout\,
	datad => \inst11|Equal0~7_combout\,
	combout => \inst11|salida_media~0_combout\);

-- Location: LCCOMB_X2_Y11_N26
\inst11|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~0_combout\ = (\inst11|Add0~48_combout\ & !\inst11|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~48_combout\,
	datad => \inst11|Equal0~7_combout\,
	combout => \inst11|contador~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst11|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~1_combout\ = (!\inst11|Equal0~7_combout\ & \inst11|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal0~7_combout\,
	datad => \inst11|Add0~42_combout\,
	combout => \inst11|contador~1_combout\);

-- Location: LCCOMB_X2_Y11_N28
\inst11|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~2_combout\ = (\inst11|Add0~40_combout\ & !\inst11|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~40_combout\,
	datad => \inst11|Equal0~7_combout\,
	combout => \inst11|contador~2_combout\);

-- Location: LCCOMB_X2_Y11_N30
\inst11|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~3_combout\ = (\inst11|Add0~32_combout\ & !\inst11|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~32_combout\,
	datad => \inst11|Equal0~7_combout\,
	combout => \inst11|contador~3_combout\);

-- Location: LCCOMB_X1_Y11_N30
\inst11|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~4_combout\ = (!\inst11|Equal0~7_combout\ & \inst11|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal0~7_combout\,
	datad => \inst11|Add0~26_combout\,
	combout => \inst11|contador~4_combout\);

-- Location: LCCOMB_X1_Y11_N22
\inst11|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~5_combout\ = (!\inst11|Equal0~7_combout\ & \inst11|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal0~7_combout\,
	datad => \inst11|Add0~22_combout\,
	combout => \inst11|contador~5_combout\);

-- Location: LCCOMB_X1_Y11_N6
\inst11|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~6_combout\ = (\inst11|Add0~20_combout\ & !\inst11|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~20_combout\,
	datad => \inst11|Equal0~7_combout\,
	combout => \inst11|contador~6_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst11|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|contador~7_combout\ = (\inst11|Add0~16_combout\ & !\inst11|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~16_combout\,
	datad => \inst11|Equal0~7_combout\,
	combout => \inst11|contador~7_combout\);

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

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ResetCLK~I\ : cycloneii_io
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
	padio => ww_ResetCLK,
	combout => \ResetCLK~combout\);

-- Location: CLKCTRL_G3
\inst11|salida_media~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|salida_media~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|salida_media~clkctrl_outclk\);

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

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ResetCounter~I\ : cycloneii_io
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
	padio => ww_ResetCounter,
	combout => \ResetCounter~combout\);

-- Location: CLKCTRL_G1
\ResetCounter~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ResetCounter~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ResetCounter~clkctrl_outclk\);

-- Location: LCFF_X27_Y9_N5
\inst|inst8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst|inst~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst8~regout\);

-- Location: LCFF_X27_Y9_N25
\inst|inst9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst|inst8~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9~regout\);

-- Location: LCFF_X27_Y9_N21
\inst|inst10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst|inst9~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst10~regout\);

-- Location: LCFF_X27_Y9_N7
\inst|inst11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst|inst10~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11~regout\);

-- Location: LCCOMB_X27_Y9_N22
\inst|inst12~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12~feeder_combout\ = \inst|inst11~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst11~regout\,
	combout => \inst|inst12~feeder_combout\);

-- Location: LCFF_X27_Y9_N23
\inst|inst12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	datain => \inst|inst12~feeder_combout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst12~regout\);

-- Location: LCCOMB_X27_Y9_N10
\inst|inst13~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst13~feeder_combout\ = \inst|inst12~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst12~regout\,
	combout => \inst|inst13~feeder_combout\);

-- Location: LCFF_X27_Y9_N11
\inst|inst13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	datain => \inst|inst13~feeder_combout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13~regout\);

-- Location: LCFF_X27_Y9_N27
\inst|inst14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst|inst13~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14~regout\);

-- Location: LCCOMB_X27_Y9_N16
\inst|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = !\inst|inst14~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst14~regout\,
	combout => \inst|inst~0_combout\);

-- Location: LCFF_X27_Y9_N17
\inst|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	datain => \inst|inst~0_combout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst~regout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Selector~I\ : cycloneii_io
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
	padio => ww_Selector,
	combout => \Selector~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INIT~I\ : cycloneii_io
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
	padio => ww_INIT,
	combout => \INIT~combout\);

-- Location: LCCOMB_X27_Y9_N18
\inst10|inst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst~1_combout\ = (\ResetCounter~combout\ & ((\inst10|inst~1_combout\) # (!\INIT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetCounter~combout\,
	datab => \INIT~combout\,
	datad => \inst10|inst~1_combout\,
	combout => \inst10|inst~1_combout\);

-- Location: LCFF_X27_Y9_N31
\inst10|inst1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	datain => \inst10|inst~2_combout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst1~regout\);

-- Location: LCFF_X27_Y9_N13
\inst10|inst2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst10|inst1~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2~regout\);

-- Location: LCFF_X27_Y9_N29
\inst10|inst3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst10|inst2~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3~regout\);

-- Location: LCFF_X27_Y9_N15
\inst10|inst4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst10|inst3~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4~regout\);

-- Location: LCFF_X27_Y9_N9
\inst10|inst5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst10|inst4~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5~regout\);

-- Location: LCFF_X27_Y9_N19
\inst10|inst6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	sdata => \inst10|inst5~regout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst6~regout\);

-- Location: LCCOMB_X27_Y9_N0
\inst10|inst7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst7~feeder_combout\ = \inst10|inst6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst6~regout\,
	combout => \inst10|inst7~feeder_combout\);

-- Location: LCFF_X27_Y9_N1
\inst10|inst7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	datain => \inst10|inst7~feeder_combout\,
	aclr => \ALT_INV_ResetCounter~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst7~regout\);

-- Location: LCCOMB_X27_Y9_N2
\inst10|inst~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst~3_combout\ = \inst10|inst~1_combout\ $ (\inst10|inst7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst~1_combout\,
	datad => \inst10|inst7~regout\,
	combout => \inst10|inst~3_combout\);

-- Location: LCCOMB_X27_Y9_N28
\inst10|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst~0_combout\ = (!\INIT~combout\) # (!\ResetCounter~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetCounter~combout\,
	datab => \INIT~combout\,
	combout => \inst10|inst~0_combout\);

-- Location: LCFF_X27_Y9_N3
\inst10|inst~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|salida_media~clkctrl_outclk\,
	datain => \inst10|inst~3_combout\,
	aclr => \inst10|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst~_emulated_regout\);

-- Location: LCCOMB_X27_Y9_N30
\inst10|inst~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst~2_combout\ = (\ResetCounter~combout\ & ((\inst10|inst~1_combout\ $ (\inst10|inst~_emulated_regout\)) # (!\INIT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst~1_combout\,
	datab => \ResetCounter~combout\,
	datac => \INIT~combout\,
	datad => \inst10|inst~_emulated_regout\,
	combout => \inst10|inst~2_combout\);

-- Location: LCCOMB_X27_Y9_N12
\inst5|$00000|auto_generated|result_node[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[7]~0_combout\ = (\Selector~combout\ & ((\inst10|inst~2_combout\))) # (!\Selector~combout\ & (\inst|inst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datab => \Selector~combout\,
	datad => \inst10|inst~2_combout\,
	combout => \inst5|$00000|auto_generated|result_node[7]~0_combout\);

-- Location: LCCOMB_X27_Y9_N4
\inst5|$00000|auto_generated|result_node[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[6]~1_combout\ = (\Selector~combout\ & (\inst10|inst1~regout\)) # (!\Selector~combout\ & ((\inst|inst8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst1~regout\,
	datac => \inst|inst8~regout\,
	datad => \Selector~combout\,
	combout => \inst5|$00000|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X27_Y9_N24
\inst5|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[5]~2_combout\ = (\Selector~combout\ & (\inst10|inst2~regout\)) # (!\Selector~combout\ & ((\inst|inst9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2~regout\,
	datac => \inst|inst9~regout\,
	datad => \Selector~combout\,
	combout => \inst5|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X27_Y9_N20
\inst5|$00000|auto_generated|result_node[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[4]~3_combout\ = (\Selector~combout\ & (\inst10|inst3~regout\)) # (!\Selector~combout\ & ((\inst|inst10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst3~regout\,
	datac => \inst|inst10~regout\,
	datad => \Selector~combout\,
	combout => \inst5|$00000|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X27_Y9_N14
\inst5|$00000|auto_generated|result_node[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[3]~4_combout\ = (\Selector~combout\ & ((\inst10|inst4~regout\))) # (!\Selector~combout\ & (\inst|inst11~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11~regout\,
	datac => \inst10|inst4~regout\,
	datad => \Selector~combout\,
	combout => \inst5|$00000|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X27_Y9_N8
\inst5|$00000|auto_generated|result_node[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[2]~5_combout\ = (\Selector~combout\ & ((\inst10|inst5~regout\))) # (!\Selector~combout\ & (\inst|inst12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst12~regout\,
	datac => \inst10|inst5~regout\,
	datad => \Selector~combout\,
	combout => \inst5|$00000|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X27_Y9_N6
\inst5|$00000|auto_generated|result_node[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[1]~6_combout\ = (\Selector~combout\ & ((\inst10|inst6~regout\))) # (!\Selector~combout\ & (\inst|inst13~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector~combout\,
	datab => \inst|inst13~regout\,
	datad => \inst10|inst6~regout\,
	combout => \inst5|$00000|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X27_Y9_N26
\inst5|$00000|auto_generated|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[0]~7_combout\ = (\Selector~combout\ & (\inst10|inst7~regout\)) # (!\Selector~combout\ & ((\inst|inst14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7~regout\,
	datac => \inst|inst14~regout\,
	datad => \Selector~combout\,
	combout => \inst5|$00000|auto_generated|result_node[0]~7_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED5~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED5);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED6~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED6);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED7~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED7);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED8~I\ : cycloneii_io
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
	datain => \inst5|$00000|auto_generated|result_node[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED8);
END structure;


