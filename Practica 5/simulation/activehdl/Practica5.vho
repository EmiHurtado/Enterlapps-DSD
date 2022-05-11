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

-- DATE "05/11/2022 12:22:12"

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
	CLK : IN std_logic;
	ResetCLK : IN std_logic;
	ResetCounter : IN std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic;
	LED8 : OUT std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic
	);
END Practica5;

-- Design Ports Information
-- LED1	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED5	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED6	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED7	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED8	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ResetCounter	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ResetCLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ResetCLK : std_logic;
SIGNAL ww_ResetCounter : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \ResetCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~13_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~14_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~17_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~18_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~19_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~27_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~28_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~31_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~32_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~34_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~43_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~44_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~49_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~50_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~54_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~55_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~69_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[0]~74_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~77_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \ResetCLK~combout\ : std_logic;
SIGNAL \ResetCLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|contador~9_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|contador~7_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|contador~6_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|contador~5_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|contador~4_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|contador~11_combout\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|contador~8_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|contador~10_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|salida_media~0_combout\ : std_logic;
SIGNAL \inst1|salida_media~regout\ : std_logic;
SIGNAL \inst1|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \ResetCounter~combout\ : std_logic;
SIGNAL \inst|inst8~regout\ : std_logic;
SIGNAL \inst|inst9~regout\ : std_logic;
SIGNAL \inst|inst10~regout\ : std_logic;
SIGNAL \inst|inst11~regout\ : std_logic;
SIGNAL \inst|inst12~regout\ : std_logic;
SIGNAL \inst|inst13~regout\ : std_logic;
SIGNAL \inst|inst14~regout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~regout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~16_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~78_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~20_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~21_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~22_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~25_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~23_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~79_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~26_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~29_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~12_combout\ : std_logic;
SIGNAL \inst2|DECODER~0_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~80_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~33_combout\ : std_logic;
SIGNAL \inst2|comb~1_combout\ : std_logic;
SIGNAL \inst2|comb~0_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~36_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~15_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~35_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~37_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~24_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~38_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~39_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~40_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~41_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~81_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~42_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~45_combout\ : std_logic;
SIGNAL \inst2|comb~3_combout\ : std_logic;
SIGNAL \inst2|comb~2_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~46_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~47_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[4]~48_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~51_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[5]~52_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[4]~53_combout\ : std_logic;
SIGNAL \inst2|comb~5_combout\ : std_logic;
SIGNAL \inst2|comb~4_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~60_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~61_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~56_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~57_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~58_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~59_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~82_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[3]~62_combout\ : std_logic;
SIGNAL \inst2|comb~7_combout\ : std_logic;
SIGNAL \inst2|comb~6_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[2]~64_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[2]~63_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[2]~65_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[2]~66_combout\ : std_logic;
SIGNAL \inst2|comb~9_combout\ : std_logic;
SIGNAL \inst2|comb~8_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~30_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~70_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[6]~67_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[1]~68_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[1]~71_combout\ : std_logic;
SIGNAL \inst2|comb~11_combout\ : std_logic;
SIGNAL \inst2|comb~10_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[0]~75_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[0]~72_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[0]~73_combout\ : std_logic;
SIGNAL \inst2|DISPLAY[0]~76_combout\ : std_logic;
SIGNAL \inst2|comb~13_combout\ : std_logic;
SIGNAL \inst2|comb~12_combout\ : std_logic;
SIGNAL \inst1|contador\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst2|DISPLAY\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_ResetCLK~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ResetCounter~combout\ : std_logic;

BEGIN

LED1 <= ww_LED1;
ww_CLK <= CLK;
ww_ResetCLK <= ResetCLK;
ww_ResetCounter <= ResetCounter;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
LED6 <= ww_LED6;
LED7 <= ww_LED7;
LED8 <= ww_LED8;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ResetCLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ResetCLK~combout\);

\inst1|salida_media~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|salida_media~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_ResetCLK~clkctrl_outclk\ <= NOT \ResetCLK~clkctrl_outclk\;
\ALT_INV_ResetCounter~combout\ <= NOT \ResetCounter~combout\;

-- Location: LCCOMB_X26_Y4_N10
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

-- Location: LCCOMB_X26_Y4_N20
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|contador\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|contador\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|contador\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X26_Y3_N12
\inst1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|contador\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|contador\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|contador\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X26_Y3_N20
\inst1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|contador\(22) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|contador\(22) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|contador\(22) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: LCCOMB_X7_Y1_N12
\inst2|DISPLAY[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~13_combout\ = (\inst|inst~regout\ & (((\inst|inst9~regout\ & \inst|inst8~regout\)))) # (!\inst|inst~regout\ & (\inst|inst14~regout\ & ((\inst|inst9~regout\) # (!\inst|inst8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14~regout\,
	datab => \inst|inst9~regout\,
	datac => \inst|inst~regout\,
	datad => \inst|inst8~regout\,
	combout => \inst2|DISPLAY[6]~13_combout\);

-- Location: LCCOMB_X7_Y1_N30
\inst2|DISPLAY[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~14_combout\ = (\inst2|DISPLAY[3]~12_combout\ & (\inst|inst10~regout\ & \inst2|DISPLAY[6]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~12_combout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[6]~13_combout\,
	combout => \inst2|DISPLAY[6]~14_combout\);

-- Location: LCCOMB_X6_Y1_N6
\inst2|DISPLAY[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~17_combout\ = (\inst2|DISPLAY[6]~14_combout\) # ((\inst|inst14~regout\ & ((\inst2|DISPLAY[6]~77_combout\) # (\inst2|DECODER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~77_combout\,
	datab => \inst|inst14~regout\,
	datac => \inst2|DISPLAY[6]~14_combout\,
	datad => \inst2|DECODER~0_combout\,
	combout => \inst2|DISPLAY[6]~17_combout\);

-- Location: LCCOMB_X6_Y1_N4
\inst2|DISPLAY[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~18_combout\ = (\inst|inst~regout\ & !\inst|inst14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datad => \inst|inst14~regout\,
	combout => \inst2|DISPLAY[3]~18_combout\);

-- Location: LCCOMB_X5_Y1_N20
\inst2|DISPLAY[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~19_combout\ = (\inst|inst11~regout\ & (\inst|inst10~regout\)) # (!\inst|inst11~regout\ & ((!\inst|inst12~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10~regout\,
	datac => \inst|inst12~regout\,
	datad => \inst|inst11~regout\,
	combout => \inst2|DISPLAY[6]~19_combout\);

-- Location: LCCOMB_X8_Y1_N16
\inst2|DISPLAY[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~27_combout\ = (\inst|inst10~regout\ & ((\inst|inst9~regout\) # ((!\inst2|DISPLAY[3]~12_combout\) # (!\inst|inst14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~regout\,
	datab => \inst|inst14~regout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[3]~12_combout\,
	combout => \inst2|DISPLAY[6]~27_combout\);

-- Location: LCCOMB_X9_Y1_N12
\inst2|DISPLAY[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~28_combout\ = (\inst2|DISPLAY[6]~27_combout\) # ((!\inst|inst10~regout\ & ((\inst2|DECODER~0_combout\) # (!\inst2|DISPLAY[5]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DECODER~0_combout\,
	datab => \inst2|DISPLAY[6]~27_combout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[5]~79_combout\,
	combout => \inst2|DISPLAY[6]~28_combout\);

-- Location: LCCOMB_X9_Y1_N30
\inst2|DISPLAY[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~31_combout\ = (!\inst2|DISPLAY[6]~30_combout\ & (!\inst|inst11~regout\ & \inst|inst9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DISPLAY[6]~30_combout\,
	datac => \inst|inst11~regout\,
	datad => \inst|inst9~regout\,
	combout => \inst2|DISPLAY[6]~31_combout\);

-- Location: LCCOMB_X9_Y1_N24
\inst2|DISPLAY[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~32_combout\ = (\inst|inst10~regout\ & (((!\inst2|DISPLAY[6]~31_combout\)))) # (!\inst|inst10~regout\ & ((\inst2|DECODER~0_combout\) # ((!\inst2|DISPLAY[5]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DECODER~0_combout\,
	datab => \inst2|DISPLAY[6]~31_combout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[5]~79_combout\,
	combout => \inst2|DISPLAY[6]~32_combout\);

-- Location: LCCOMB_X8_Y1_N10
\inst2|DISPLAY[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~34_combout\ = (!\inst|inst13~regout\ & (!\inst|inst12~regout\ & !\inst|inst9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~regout\,
	datab => \inst|inst12~regout\,
	datac => \inst|inst9~regout\,
	combout => \inst2|DISPLAY[5]~34_combout\);

-- Location: LCCOMB_X7_Y1_N20
\inst2|DISPLAY[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~43_combout\ = (\inst2|DISPLAY[5]~24_combout\ & (\inst2|DISPLAY[5]~36_combout\ & ((\inst2|DISPLAY[3]~40_combout\) # (\inst2|DISPLAY[5]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~40_combout\,
	datab => \inst2|DISPLAY[5]~24_combout\,
	datac => \inst2|DISPLAY[5]~79_combout\,
	datad => \inst2|DISPLAY[5]~36_combout\,
	combout => \inst2|DISPLAY[5]~43_combout\);

-- Location: LCCOMB_X7_Y1_N6
\inst2|DISPLAY[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~44_combout\ = (\inst2|DISPLAY[5]~41_combout\) # ((\inst2|DISPLAY[5]~43_combout\) # ((\inst2|DISPLAY[3]~12_combout\ & \inst2|DISPLAY[5]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~12_combout\,
	datab => \inst2|DISPLAY[5]~41_combout\,
	datac => \inst2|DISPLAY[5]~43_combout\,
	datad => \inst2|DISPLAY[5]~24_combout\,
	combout => \inst2|DISPLAY[5]~44_combout\);

-- Location: LCCOMB_X8_Y1_N12
\inst2|DISPLAY[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~49_combout\ = (\inst|inst11~regout\ & ((\inst|inst13~regout\ & (\inst|inst12~regout\)) # (!\inst|inst13~regout\ & ((!\inst|inst14~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~regout\,
	datab => \inst|inst11~regout\,
	datac => \inst|inst12~regout\,
	datad => \inst|inst14~regout\,
	combout => \inst2|DISPLAY[5]~49_combout\);

-- Location: LCCOMB_X8_Y1_N6
\inst2|DISPLAY[5]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~50_combout\ = (\inst|inst10~regout\ & (\inst|inst9~regout\ & \inst2|DISPLAY[5]~49_combout\)) # (!\inst|inst10~regout\ & (!\inst|inst9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10~regout\,
	datab => \inst|inst9~regout\,
	datad => \inst2|DISPLAY[5]~49_combout\,
	combout => \inst2|DISPLAY[5]~50_combout\);

-- Location: LCCOMB_X5_Y1_N16
\inst2|DISPLAY[3]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~54_combout\ = (\inst2|DISPLAY[3]~18_combout\ & (\inst|inst8~regout\ & (!\inst|inst11~regout\ & \inst2|DISPLAY[3]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~18_combout\,
	datab => \inst|inst8~regout\,
	datac => \inst|inst11~regout\,
	datad => \inst2|DISPLAY[3]~40_combout\,
	combout => \inst2|DISPLAY[3]~54_combout\);

-- Location: LCCOMB_X8_Y1_N20
\inst2|DISPLAY[3]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~55_combout\ = (!\inst|inst11~regout\ & !\inst|inst12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst11~regout\,
	datad => \inst|inst12~regout\,
	combout => \inst2|DISPLAY[3]~55_combout\);

-- Location: LCCOMB_X8_Y1_N0
\inst2|DISPLAY[6]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~69_combout\ = (\inst|inst10~regout\ & (((\inst|inst14~regout\) # (!\inst2|DISPLAY[3]~12_combout\)) # (!\inst|inst9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~regout\,
	datab => \inst|inst14~regout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[3]~12_combout\,
	combout => \inst2|DISPLAY[6]~69_combout\);

-- Location: LCCOMB_X5_Y1_N12
\inst2|DISPLAY[0]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[0]~74_combout\ = (\inst|inst10~regout\) # ((\inst|inst14~regout\ & ((\inst|inst~regout\) # (!\inst|inst11~regout\))) # (!\inst|inst14~regout\ & ((\inst|inst11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datab => \inst|inst10~regout\,
	datac => \inst|inst14~regout\,
	datad => \inst|inst11~regout\,
	combout => \inst2|DISPLAY[0]~74_combout\);

-- Location: LCFF_X26_Y3_N21
\inst1|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~44_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(22));

-- Location: LCFF_X26_Y3_N13
\inst1|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~36_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(18));

-- Location: LCCOMB_X27_Y3_N12
\inst1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|contador\(16) & (\inst1|contador\(15) & (!\inst1|contador\(14) & !\inst1|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(16),
	datab => \inst1|contador\(15),
	datac => \inst1|contador\(14),
	datad => \inst1|contador\(13),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCFF_X26_Y4_N21
\inst1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~12_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(6));

-- Location: LCFF_X26_Y4_N11
\inst1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~2_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(1));

-- Location: LCCOMB_X6_Y1_N22
\inst2|DISPLAY[6]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~77_combout\ = (\inst|inst13~regout\ & (\inst2|DISPLAY[6]~16_combout\ & (!\inst|inst~regout\ & !\inst|inst8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~regout\,
	datab => \inst2|DISPLAY[6]~16_combout\,
	datac => \inst|inst~regout\,
	datad => \inst|inst8~regout\,
	combout => \inst2|DISPLAY[6]~77_combout\);

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

-- Location: LCCOMB_X26_Y4_N8
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

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\ResetCLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ResetCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ResetCLK~clkctrl_outclk\);

-- Location: LCFF_X26_Y4_N9
\inst1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~0_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(0));

-- Location: LCCOMB_X26_Y4_N12
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|contador\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|contador\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|contador\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X26_Y4_N14
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

-- Location: LCFF_X26_Y4_N15
\inst1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~6_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(3));

-- Location: LCCOMB_X26_Y4_N16
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|contador\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|contador\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|contador\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCFF_X26_Y4_N17
\inst1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~8_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(4));

-- Location: LCFF_X26_Y4_N13
\inst1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~4_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(2));

-- Location: LCCOMB_X26_Y4_N2
\inst1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (\inst1|contador\(1) & (\inst1|contador\(3) & (\inst1|contador\(4) & \inst1|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst1|contador\(3),
	datac => \inst1|contador\(4),
	datad => \inst1|contador\(2),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y4_N18
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|contador\(5) & (!\inst1|Add0~9\)) # (!\inst1|contador\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCFF_X26_Y4_N19
\inst1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~10_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(5));

-- Location: LCCOMB_X26_Y4_N22
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

-- Location: LCCOMB_X26_Y4_N4
\inst1|contador~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~9_combout\ = (\inst1|Add0~14_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~5_combout\)) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Add0~14_combout\,
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~9_combout\);

-- Location: LCFF_X26_Y4_N5
\inst1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~9_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(7));

-- Location: LCCOMB_X26_Y4_N24
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|contador\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|contador\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|contador\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCFF_X26_Y4_N25
\inst1|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~16_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(8));

-- Location: LCCOMB_X27_Y4_N16
\inst1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|contador\(6) & (\inst1|contador\(5) & (!\inst1|contador\(7) & !\inst1|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(6),
	datab => \inst1|contador\(5),
	datac => \inst1|contador\(7),
	datad => \inst1|contador\(8),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y4_N26
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|contador\(9) & (!\inst1|Add0~17\)) # (!\inst1|contador\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X26_Y4_N28
\inst1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|contador\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|contador\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|contador\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X26_Y4_N0
\inst1|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~7_combout\ = (\inst1|Add0~20_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~5_combout\)) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Add0~20_combout\,
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~7_combout\);

-- Location: LCFF_X26_Y4_N1
\inst1|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~7_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(10));

-- Location: LCCOMB_X26_Y4_N30
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

-- Location: LCFF_X26_Y4_N31
\inst1|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~22_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(11));

-- Location: LCCOMB_X26_Y3_N0
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

-- Location: LCCOMB_X27_Y3_N10
\inst1|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~6_combout\ = (\inst1|Add0~24_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~6_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~6_combout\,
	datac => \inst1|Add0~24_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~6_combout\);

-- Location: LCFF_X27_Y3_N11
\inst1|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~6_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(12));

-- Location: LCCOMB_X26_Y3_N2
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

-- Location: LCFF_X26_Y3_N3
\inst1|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~26_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(13));

-- Location: LCCOMB_X26_Y3_N4
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

-- Location: LCFF_X26_Y3_N5
\inst1|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~28_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(14));

-- Location: LCCOMB_X26_Y3_N6
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

-- Location: LCCOMB_X26_Y3_N26
\inst1|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~5_combout\ = (\inst1|Add0~30_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~5_combout\)) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Equal0~5_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|contador~5_combout\);

-- Location: LCFF_X26_Y3_N27
\inst1|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~5_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(15));

-- Location: LCCOMB_X26_Y3_N8
\inst1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|contador\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|contador\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|contador\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCFF_X26_Y3_N9
\inst1|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~32_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(16));

-- Location: LCCOMB_X26_Y3_N10
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

-- Location: LCCOMB_X26_Y3_N14
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

-- Location: LCCOMB_X26_Y3_N28
\inst1|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~4_combout\ = (\inst1|Add0~38_combout\ & (((!\inst1|Equal0~5_combout\) # (!\inst1|Equal0~4_combout\)) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~4_combout\);

-- Location: LCFF_X26_Y3_N29
\inst1|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~4_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(19));

-- Location: LCCOMB_X26_Y3_N16
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

-- Location: LCCOMB_X26_Y3_N30
\inst1|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~11_combout\ = (\inst1|Add0~40_combout\ & (((!\inst1|Equal0~5_combout\) # (!\inst1|Equal0~4_combout\)) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~40_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|contador~11_combout\);

-- Location: LCFF_X26_Y3_N31
\inst1|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~11_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(20));

-- Location: LCFF_X26_Y3_N11
\inst1|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~34_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(17));

-- Location: LCCOMB_X27_Y3_N18
\inst1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|contador\(18) & (\inst1|contador\(19) & (\inst1|contador\(20) & !\inst1|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(18),
	datab => \inst1|contador\(19),
	datac => \inst1|contador\(20),
	datad => \inst1|contador\(17),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y4_N6
\inst1|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~8_combout\ = (\inst1|Add0~18_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~5_combout\)) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|contador~8_combout\);

-- Location: LCFF_X26_Y4_N7
\inst1|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~8_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(9));

-- Location: LCCOMB_X27_Y3_N14
\inst1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|contador\(12) & (\inst1|contador\(10) & (\inst1|contador\(9) & !\inst1|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(12),
	datab => \inst1|contador\(10),
	datac => \inst1|contador\(9),
	datad => \inst1|contador\(11),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y3_N18
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

-- Location: LCFF_X26_Y3_N19
\inst1|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|Add0~42_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(21));

-- Location: LCCOMB_X26_Y3_N22
\inst1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = \inst1|contador\(23) $ (\inst1|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(23),
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\);

-- Location: LCCOMB_X26_Y3_N24
\inst1|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|contador~10_combout\ = (\inst1|Add0~46_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~5_combout\)) # (!\inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Equal0~5_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~46_combout\,
	combout => \inst1|contador~10_combout\);

-- Location: LCFF_X26_Y3_N25
\inst1|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|contador~10_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|contador\(23));

-- Location: LCCOMB_X27_Y3_N6
\inst1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|contador\(22) & (!\inst1|contador\(21) & (\inst1|contador\(0) & \inst1|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(22),
	datab => \inst1|contador\(21),
	datac => \inst1|contador\(0),
	datad => \inst1|contador\(23),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y3_N0
\inst1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~3_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y3_N24
\inst1|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salida_media~0_combout\ = \inst1|salida_media~regout\ $ (((\inst1|Equal0~5_combout\ & (\inst1|Equal0~6_combout\ & \inst1|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~6_combout\,
	datac => \inst1|salida_media~regout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|salida_media~0_combout\);

-- Location: LCFF_X27_Y3_N25
\inst1|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|salida_media~0_combout\,
	aclr => \ALT_INV_ResetCLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|salida_media~regout\);

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

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X6_Y1_N15
\inst|inst8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	sdata => \inst|inst~regout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst8~regout\);

-- Location: LCFF_X6_Y1_N29
\inst|inst9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	sdata => \inst|inst8~regout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9~regout\);

-- Location: LCFF_X6_Y1_N5
\inst|inst10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	sdata => \inst|inst9~regout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst10~regout\);

-- Location: LCFF_X6_Y1_N9
\inst|inst11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	sdata => \inst|inst10~regout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11~regout\);

-- Location: LCFF_X6_Y1_N21
\inst|inst12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	sdata => \inst|inst11~regout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst12~regout\);

-- Location: LCFF_X6_Y1_N25
\inst|inst13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	sdata => \inst|inst12~regout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13~regout\);

-- Location: LCFF_X6_Y1_N3
\inst|inst14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	sdata => \inst|inst13~regout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14~regout\);

-- Location: LCCOMB_X6_Y1_N16
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

-- Location: LCFF_X6_Y1_N17
\inst|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|salida_media~clkctrl_outclk\,
	datain => \inst|inst~0_combout\,
	aclr => \ALT_INV_ResetCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst~regout\);

-- Location: LCCOMB_X9_Y1_N20
\inst2|DISPLAY[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~16_combout\ = (!\inst|inst9~regout\ & (!\inst|inst11~regout\ & !\inst|inst10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~regout\,
	datab => \inst|inst11~regout\,
	datac => \inst|inst10~regout\,
	combout => \inst2|DISPLAY[6]~16_combout\);

-- Location: LCCOMB_X6_Y1_N18
\inst2|DISPLAY[6]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~78_combout\ = (!\inst|inst12~regout\ & (\inst2|DISPLAY[6]~16_combout\ & (!\inst|inst~regout\ & !\inst|inst8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~regout\,
	datab => \inst2|DISPLAY[6]~16_combout\,
	datac => \inst|inst~regout\,
	datad => \inst|inst8~regout\,
	combout => \inst2|DISPLAY[6]~78_combout\);

-- Location: LCCOMB_X6_Y1_N20
\inst2|DISPLAY[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~20_combout\ = (\inst2|DISPLAY[6]~19_combout\ & (\inst|inst9~regout\ & \inst|inst8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~19_combout\,
	datab => \inst|inst9~regout\,
	datad => \inst|inst8~regout\,
	combout => \inst2|DISPLAY[6]~20_combout\);

-- Location: LCCOMB_X6_Y1_N0
\inst2|DISPLAY[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~21_combout\ = (\inst2|DISPLAY[3]~18_combout\ & ((\inst2|DISPLAY[6]~20_combout\) # ((!\inst|inst12~regout\ & \inst2|DISPLAY[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~18_combout\,
	datab => \inst|inst12~regout\,
	datac => \inst2|DISPLAY[6]~20_combout\,
	datad => \inst2|DISPLAY[6]~16_combout\,
	combout => \inst2|DISPLAY[6]~21_combout\);

-- Location: LCCOMB_X6_Y1_N24
\inst2|DISPLAY[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~22_combout\ = (\inst2|DISPLAY[6]~17_combout\) # ((!\inst|inst13~regout\ & ((\inst2|DISPLAY[6]~78_combout\) # (\inst2|DISPLAY[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~17_combout\,
	datab => \inst2|DISPLAY[6]~78_combout\,
	datac => \inst|inst13~regout\,
	datad => \inst2|DISPLAY[6]~21_combout\,
	combout => \inst2|DISPLAY[6]~22_combout\);

-- Location: LCCOMB_X8_Y1_N26
\inst2|DISPLAY[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~25_combout\ = (\inst|inst13~regout\) # ((\inst|inst12~regout\) # (\inst|inst14~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~regout\,
	datab => \inst|inst12~regout\,
	datac => \inst|inst14~regout\,
	combout => \inst2|DISPLAY[6]~25_combout\);

-- Location: LCCOMB_X8_Y1_N28
\inst2|DISPLAY[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~23_combout\ = (\inst|inst13~regout\ & (\inst|inst12~regout\ & \inst|inst14~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~regout\,
	datab => \inst|inst12~regout\,
	datac => \inst|inst14~regout\,
	combout => \inst2|DISPLAY[3]~23_combout\);

-- Location: LCCOMB_X8_Y1_N14
\inst2|DISPLAY[5]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~79_combout\ = (!\inst|inst8~regout\ & (\inst2|DISPLAY[3]~23_combout\ & (\inst2|DISPLAY[6]~16_combout\ & !\inst|inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~regout\,
	datab => \inst2|DISPLAY[3]~23_combout\,
	datac => \inst2|DISPLAY[6]~16_combout\,
	datad => \inst|inst~regout\,
	combout => \inst2|DISPLAY[5]~79_combout\);

-- Location: LCCOMB_X9_Y1_N10
\inst2|DISPLAY[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~26_combout\ = ((\inst2|DISPLAY[6]~25_combout\ & ((\inst2|DECODER~0_combout\) # (!\inst2|DISPLAY[5]~79_combout\)))) # (!\inst2|DISPLAY[6]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DECODER~0_combout\,
	datab => \inst2|DISPLAY[6]~25_combout\,
	datac => \inst2|DISPLAY[6]~16_combout\,
	datad => \inst2|DISPLAY[5]~79_combout\,
	combout => \inst2|DISPLAY[6]~26_combout\);

-- Location: LCCOMB_X9_Y1_N14
\inst2|DISPLAY[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~29_combout\ = (\inst|inst8~regout\ & (((\inst|inst~regout\)))) # (!\inst|inst8~regout\ & ((\inst|inst~regout\ & ((\inst2|DISPLAY[6]~26_combout\))) # (!\inst|inst~regout\ & (\inst2|DISPLAY[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~28_combout\,
	datab => \inst|inst8~regout\,
	datac => \inst|inst~regout\,
	datad => \inst2|DISPLAY[6]~26_combout\,
	combout => \inst2|DISPLAY[6]~29_combout\);

-- Location: LCCOMB_X6_Y1_N8
\inst2|DISPLAY[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~12_combout\ = (\inst|inst13~regout\ & (\inst|inst11~regout\ & \inst|inst12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~regout\,
	datac => \inst|inst11~regout\,
	datad => \inst|inst12~regout\,
	combout => \inst2|DISPLAY[3]~12_combout\);

-- Location: LCCOMB_X6_Y1_N28
\inst2|DECODER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DECODER~0_combout\ = (\inst2|DISPLAY[3]~15_combout\ & (!\inst|inst10~regout\ & (!\inst|inst9~regout\ & \inst2|DISPLAY[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~15_combout\,
	datab => \inst|inst10~regout\,
	datac => \inst|inst9~regout\,
	datad => \inst2|DISPLAY[3]~12_combout\,
	combout => \inst2|DECODER~0_combout\);

-- Location: LCCOMB_X9_Y1_N0
\inst2|DISPLAY[5]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~80_combout\ = (!\inst2|DECODER~0_combout\ & (\inst2|DISPLAY[5]~79_combout\ & ((!\inst|inst10~regout\) # (!\inst|inst9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~regout\,
	datab => \inst|inst10~regout\,
	datac => \inst2|DECODER~0_combout\,
	datad => \inst2|DISPLAY[5]~79_combout\,
	combout => \inst2|DISPLAY[5]~80_combout\);

-- Location: LCCOMB_X9_Y1_N22
\inst2|DISPLAY[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~33_combout\ = (\inst2|DISPLAY[6]~29_combout\ & ((\inst2|DISPLAY[6]~32_combout\) # ((!\inst|inst8~regout\)))) # (!\inst2|DISPLAY[6]~29_combout\ & (((\inst|inst8~regout\ & !\inst2|DISPLAY[5]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~32_combout\,
	datab => \inst2|DISPLAY[6]~29_combout\,
	datac => \inst|inst8~regout\,
	datad => \inst2|DISPLAY[5]~80_combout\,
	combout => \inst2|DISPLAY[6]~33_combout\);

-- Location: LCCOMB_X9_Y1_N2
\inst2|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~1_combout\ = (\inst2|DISPLAY[6]~22_combout\ & \inst2|DISPLAY[6]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[6]~33_combout\,
	combout => \inst2|comb~1_combout\);

-- Location: LCCOMB_X9_Y1_N16
\inst2|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~0_combout\ = (\inst2|DISPLAY[6]~22_combout\ & !\inst2|DISPLAY[6]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[6]~33_combout\,
	combout => \inst2|comb~0_combout\);

-- Location: LCCOMB_X9_Y1_N6
\inst2|DISPLAY[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY\(6) = (!\inst2|comb~0_combout\ & ((\inst2|comb~1_combout\) # (\inst2|DISPLAY\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~1_combout\,
	datac => \inst2|comb~0_combout\,
	datad => \inst2|DISPLAY\(6),
	combout => \inst2|DISPLAY\(6));

-- Location: LCCOMB_X7_Y1_N2
\inst2|DISPLAY[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~36_combout\ = (!\inst|inst11~regout\ & ((\inst|inst12~regout\) # (!\inst|inst14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14~regout\,
	datab => \inst|inst12~regout\,
	datac => \inst|inst11~regout\,
	combout => \inst2|DISPLAY[5]~36_combout\);

-- Location: LCCOMB_X6_Y1_N14
\inst2|DISPLAY[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~15_combout\ = (!\inst|inst~regout\ & !\inst|inst8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datac => \inst|inst8~regout\,
	combout => \inst2|DISPLAY[3]~15_combout\);

-- Location: LCCOMB_X8_Y1_N24
\inst2|DISPLAY[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~35_combout\ = (\inst2|DISPLAY[5]~34_combout\) # ((\inst2|DISPLAY[3]~23_combout\ & (\inst2|DISPLAY[3]~15_combout\ & \inst2|DISPLAY[6]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[5]~34_combout\,
	datab => \inst2|DISPLAY[3]~23_combout\,
	datac => \inst2|DISPLAY[3]~15_combout\,
	datad => \inst2|DISPLAY[6]~16_combout\,
	combout => \inst2|DISPLAY[5]~35_combout\);

-- Location: LCCOMB_X7_Y1_N8
\inst2|DISPLAY[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~37_combout\ = (\inst2|DISPLAY[5]~35_combout\ & ((\inst|inst9~regout\) # ((\inst2|DISPLAY[5]~36_combout\ & !\inst|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~regout\,
	datab => \inst2|DISPLAY[5]~36_combout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[5]~35_combout\,
	combout => \inst2|DISPLAY[5]~37_combout\);

-- Location: LCCOMB_X7_Y1_N0
\inst2|DISPLAY[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~24_combout\ = (\inst|inst10~regout\ & \inst|inst9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst10~regout\,
	datad => \inst|inst9~regout\,
	combout => \inst2|DISPLAY[5]~24_combout\);

-- Location: LCCOMB_X8_Y1_N30
\inst2|DISPLAY[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~38_combout\ = (\inst2|DISPLAY[3]~23_combout\ & ((\inst|inst11~regout\) # ((\inst2|DISPLAY[6]~16_combout\ & \inst2|DISPLAY[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~16_combout\,
	datab => \inst2|DISPLAY[3]~23_combout\,
	datac => \inst2|DISPLAY[3]~15_combout\,
	datad => \inst|inst11~regout\,
	combout => \inst2|DISPLAY[5]~38_combout\);

-- Location: LCCOMB_X7_Y1_N22
\inst2|DISPLAY[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~39_combout\ = (\inst2|DISPLAY[5]~24_combout\ & (((\inst2|DISPLAY[5]~38_combout\)))) # (!\inst2|DISPLAY[5]~24_combout\ & (!\inst2|DECODER~0_combout\ & (\inst2|DISPLAY[5]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DECODER~0_combout\,
	datab => \inst2|DISPLAY[5]~24_combout\,
	datac => \inst2|DISPLAY[5]~79_combout\,
	datad => \inst2|DISPLAY[5]~38_combout\,
	combout => \inst2|DISPLAY[5]~39_combout\);

-- Location: LCCOMB_X5_Y1_N18
\inst2|DISPLAY[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~40_combout\ = (!\inst|inst12~regout\ & !\inst|inst13~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst12~regout\,
	datad => \inst|inst13~regout\,
	combout => \inst2|DISPLAY[3]~40_combout\);

-- Location: LCCOMB_X7_Y1_N28
\inst2|DISPLAY[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~41_combout\ = (!\inst|inst10~regout\ & (\inst2|DISPLAY[5]~36_combout\ & ((\inst2|DISPLAY[3]~40_combout\) # (\inst2|DISPLAY[5]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10~regout\,
	datab => \inst2|DISPLAY[3]~40_combout\,
	datac => \inst2|DISPLAY[5]~79_combout\,
	datad => \inst2|DISPLAY[5]~36_combout\,
	combout => \inst2|DISPLAY[5]~41_combout\);

-- Location: LCCOMB_X7_Y1_N10
\inst2|DISPLAY[5]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~81_combout\ = (\inst|inst9~regout\ & (((\inst|inst10~regout\ & \inst2|DISPLAY[5]~38_combout\)))) # (!\inst|inst9~regout\ & (\inst2|DISPLAY[5]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~regout\,
	datab => \inst2|DISPLAY[5]~41_combout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[5]~38_combout\,
	combout => \inst2|DISPLAY[5]~81_combout\);

-- Location: LCCOMB_X7_Y1_N18
\inst2|DISPLAY[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~42_combout\ = (\inst|inst8~regout\ & ((\inst2|DISPLAY[5]~39_combout\) # ((\inst|inst~regout\)))) # (!\inst|inst8~regout\ & (((!\inst|inst~regout\ & \inst2|DISPLAY[5]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~regout\,
	datab => \inst2|DISPLAY[5]~39_combout\,
	datac => \inst|inst~regout\,
	datad => \inst2|DISPLAY[5]~81_combout\,
	combout => \inst2|DISPLAY[5]~42_combout\);

-- Location: LCCOMB_X7_Y1_N24
\inst2|DISPLAY[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~45_combout\ = (\inst|inst~regout\ & ((\inst2|DISPLAY[5]~42_combout\ & (\inst2|DISPLAY[5]~44_combout\)) # (!\inst2|DISPLAY[5]~42_combout\ & ((\inst2|DISPLAY[5]~37_combout\))))) # (!\inst|inst~regout\ & (((\inst2|DISPLAY[5]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[5]~44_combout\,
	datab => \inst2|DISPLAY[5]~37_combout\,
	datac => \inst|inst~regout\,
	datad => \inst2|DISPLAY[5]~42_combout\,
	combout => \inst2|DISPLAY[5]~45_combout\);

-- Location: LCCOMB_X6_Y1_N30
\inst2|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~3_combout\ = (\inst2|DISPLAY[6]~22_combout\ & \inst2|DISPLAY[5]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[5]~45_combout\,
	combout => \inst2|comb~3_combout\);

-- Location: LCCOMB_X6_Y1_N12
\inst2|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~2_combout\ = (\inst2|DISPLAY[6]~22_combout\ & !\inst2|DISPLAY[5]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[5]~45_combout\,
	combout => \inst2|comb~2_combout\);

-- Location: LCCOMB_X6_Y1_N26
\inst2|DISPLAY[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY\(5) = (!\inst2|comb~2_combout\ & ((\inst2|comb~3_combout\) # (\inst2|DISPLAY\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~3_combout\,
	datac => \inst2|comb~2_combout\,
	datad => \inst2|DISPLAY\(5),
	combout => \inst2|DISPLAY\(5));

-- Location: LCCOMB_X8_Y1_N4
\inst2|DISPLAY[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~46_combout\ = (\inst|inst9~regout\) # ((!\inst|inst11~regout\ & ((\inst|inst12~regout\) # (!\inst|inst14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11~regout\,
	datab => \inst|inst12~regout\,
	datac => \inst|inst9~regout\,
	datad => \inst|inst14~regout\,
	combout => \inst2|DISPLAY[5]~46_combout\);

-- Location: LCCOMB_X8_Y1_N2
\inst2|DISPLAY[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~47_combout\ = (\inst|inst10~regout\ & (((\inst2|DISPLAY[5]~38_combout\)))) # (!\inst|inst10~regout\ & (\inst2|DISPLAY[5]~35_combout\ & (\inst2|DISPLAY[5]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[5]~35_combout\,
	datab => \inst2|DISPLAY[5]~46_combout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DISPLAY[5]~38_combout\,
	combout => \inst2|DISPLAY[5]~47_combout\);

-- Location: LCCOMB_X7_Y1_N14
\inst2|DISPLAY[4]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[4]~48_combout\ = (\inst|inst8~regout\ & (((\inst|inst~regout\)))) # (!\inst|inst8~regout\ & ((\inst|inst~regout\ & (\inst2|DISPLAY[5]~37_combout\)) # (!\inst|inst~regout\ & ((\inst2|DISPLAY[5]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~regout\,
	datab => \inst2|DISPLAY[5]~37_combout\,
	datac => \inst|inst~regout\,
	datad => \inst2|DISPLAY[5]~47_combout\,
	combout => \inst2|DISPLAY[4]~48_combout\);

-- Location: LCCOMB_X7_Y1_N4
\inst2|DISPLAY[5]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~51_combout\ = (\inst2|DISPLAY[5]~50_combout\ & ((\inst|inst10~regout\) # ((\inst2|DISPLAY[5]~79_combout\ & !\inst2|DECODER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[5]~50_combout\,
	datab => \inst2|DISPLAY[5]~79_combout\,
	datac => \inst|inst10~regout\,
	datad => \inst2|DECODER~0_combout\,
	combout => \inst2|DISPLAY[5]~51_combout\);

-- Location: LCCOMB_X7_Y1_N26
\inst2|DISPLAY[5]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[5]~52_combout\ = (\inst2|DISPLAY[5]~43_combout\) # ((\inst2|DISPLAY[5]~51_combout\) # ((\inst|inst9~regout\ & \inst2|DISPLAY[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[5]~43_combout\,
	datab => \inst|inst9~regout\,
	datac => \inst2|DISPLAY[5]~51_combout\,
	datad => \inst2|DISPLAY[5]~41_combout\,
	combout => \inst2|DISPLAY[5]~52_combout\);

-- Location: LCCOMB_X7_Y1_N16
\inst2|DISPLAY[4]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[4]~53_combout\ = (\inst|inst8~regout\ & ((\inst2|DISPLAY[4]~48_combout\ & ((\inst2|DISPLAY[5]~52_combout\))) # (!\inst2|DISPLAY[4]~48_combout\ & (\inst2|DISPLAY[5]~39_combout\)))) # (!\inst|inst8~regout\ & 
-- (((\inst2|DISPLAY[4]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~regout\,
	datab => \inst2|DISPLAY[5]~39_combout\,
	datac => \inst2|DISPLAY[4]~48_combout\,
	datad => \inst2|DISPLAY[5]~52_combout\,
	combout => \inst2|DISPLAY[4]~53_combout\);

-- Location: LCCOMB_X17_Y1_N14
\inst2|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~5_combout\ = (\inst2|DISPLAY[6]~22_combout\ & \inst2|DISPLAY[4]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[4]~53_combout\,
	combout => \inst2|comb~5_combout\);

-- Location: LCCOMB_X17_Y1_N16
\inst2|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~4_combout\ = (\inst2|DISPLAY[6]~22_combout\ & !\inst2|DISPLAY[4]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[4]~53_combout\,
	combout => \inst2|comb~4_combout\);

-- Location: LCCOMB_X18_Y1_N28
\inst2|DISPLAY[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY\(4) = (!\inst2|comb~4_combout\ & ((\inst2|comb~5_combout\) # (\inst2|DISPLAY\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~5_combout\,
	datab => \inst2|comb~4_combout\,
	datad => \inst2|DISPLAY\(4),
	combout => \inst2|DISPLAY\(4));

-- Location: LCCOMB_X5_Y1_N0
\inst2|DISPLAY[3]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~60_combout\ = (\inst|inst13~regout\ & (((\inst|inst14~regout\ & \inst|inst12~regout\)))) # (!\inst|inst13~regout\ & (\inst|inst~regout\ & (!\inst|inst14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datab => \inst|inst13~regout\,
	datac => \inst|inst14~regout\,
	datad => \inst|inst12~regout\,
	combout => \inst2|DISPLAY[3]~60_combout\);

-- Location: LCCOMB_X5_Y1_N30
\inst2|DISPLAY[3]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~61_combout\ = (\inst|inst11~regout\ & (\inst|inst8~regout\ & \inst2|DISPLAY[3]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst11~regout\,
	datac => \inst|inst8~regout\,
	datad => \inst2|DISPLAY[3]~60_combout\,
	combout => \inst2|DISPLAY[3]~61_combout\);

-- Location: LCCOMB_X8_Y1_N22
\inst2|DISPLAY[3]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~56_combout\ = (\inst|inst13~regout\ & (((\inst|inst14~regout\)))) # (!\inst|inst13~regout\ & (!\inst|inst14~regout\ & (\inst|inst8~regout\ $ (!\inst|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~regout\,
	datab => \inst|inst~regout\,
	datac => \inst|inst13~regout\,
	datad => \inst|inst14~regout\,
	combout => \inst2|DISPLAY[3]~56_combout\);

-- Location: LCCOMB_X8_Y1_N8
\inst2|DISPLAY[3]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~57_combout\ = (\inst2|DISPLAY[3]~56_combout\ & (((\inst2|DISPLAY[3]~15_combout\ & \inst2|DISPLAY[6]~16_combout\)) # (!\inst|inst13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~regout\,
	datab => \inst2|DISPLAY[3]~56_combout\,
	datac => \inst2|DISPLAY[3]~15_combout\,
	datad => \inst2|DISPLAY[6]~16_combout\,
	combout => \inst2|DISPLAY[3]~57_combout\);

-- Location: LCCOMB_X8_Y1_N18
\inst2|DISPLAY[3]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~58_combout\ = (\inst2|DISPLAY[3]~55_combout\ & ((\inst2|DISPLAY[3]~57_combout\) # ((\inst2|DISPLAY[3]~15_combout\ & \inst2|DISPLAY[3]~23_combout\)))) # (!\inst2|DISPLAY[3]~55_combout\ & (((\inst2|DISPLAY[3]~15_combout\ & 
-- \inst2|DISPLAY[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~55_combout\,
	datab => \inst2|DISPLAY[3]~57_combout\,
	datac => \inst2|DISPLAY[3]~15_combout\,
	datad => \inst2|DISPLAY[3]~23_combout\,
	combout => \inst2|DISPLAY[3]~58_combout\);

-- Location: LCCOMB_X5_Y1_N14
\inst2|DISPLAY[3]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~59_combout\ = (\inst|inst10~regout\ & (((\inst|inst9~regout\)))) # (!\inst|inst10~regout\ & ((\inst|inst9~regout\ & (\inst2|DISPLAY[3]~54_combout\)) # (!\inst|inst9~regout\ & ((\inst2|DISPLAY[3]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[3]~54_combout\,
	datab => \inst|inst10~regout\,
	datac => \inst2|DISPLAY[3]~58_combout\,
	datad => \inst|inst9~regout\,
	combout => \inst2|DISPLAY[3]~59_combout\);

-- Location: LCCOMB_X6_Y1_N2
\inst2|DISPLAY[3]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~82_combout\ = (!\inst|inst~regout\ & (!\inst|inst8~regout\ & (\inst|inst14~regout\ & \inst2|DISPLAY[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datab => \inst|inst8~regout\,
	datac => \inst|inst14~regout\,
	datad => \inst2|DISPLAY[3]~12_combout\,
	combout => \inst2|DISPLAY[3]~82_combout\);

-- Location: LCCOMB_X5_Y1_N24
\inst2|DISPLAY[3]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[3]~62_combout\ = (\inst|inst10~regout\ & ((\inst2|DISPLAY[3]~59_combout\ & (\inst2|DISPLAY[3]~61_combout\)) # (!\inst2|DISPLAY[3]~59_combout\ & ((\inst2|DISPLAY[3]~82_combout\))))) # (!\inst|inst10~regout\ & 
-- (((\inst2|DISPLAY[3]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10~regout\,
	datab => \inst2|DISPLAY[3]~61_combout\,
	datac => \inst2|DISPLAY[3]~59_combout\,
	datad => \inst2|DISPLAY[3]~82_combout\,
	combout => \inst2|DISPLAY[3]~62_combout\);

-- Location: LCCOMB_X17_Y1_N10
\inst2|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~7_combout\ = (\inst2|DISPLAY[6]~22_combout\ & \inst2|DISPLAY[3]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[3]~62_combout\,
	combout => \inst2|comb~7_combout\);

-- Location: LCCOMB_X17_Y1_N0
\inst2|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~6_combout\ = (\inst2|DISPLAY[6]~22_combout\ & !\inst2|DISPLAY[3]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[3]~62_combout\,
	combout => \inst2|comb~6_combout\);

-- Location: LCCOMB_X18_Y1_N26
\inst2|DISPLAY[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY\(3) = (!\inst2|comb~6_combout\ & ((\inst2|comb~7_combout\) # (\inst2|DISPLAY\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~7_combout\,
	datac => \inst2|comb~6_combout\,
	datad => \inst2|DISPLAY\(3),
	combout => \inst2|DISPLAY\(3));

-- Location: LCCOMB_X5_Y1_N28
\inst2|DISPLAY[2]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[2]~64_combout\ = (\inst|inst11~regout\ & ((\inst|inst12~regout\ $ (\inst|inst13~regout\)) # (!\inst|inst10~regout\))) # (!\inst|inst11~regout\ & (((\inst|inst12~regout\) # (\inst|inst13~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11~regout\,
	datab => \inst|inst10~regout\,
	datac => \inst|inst12~regout\,
	datad => \inst|inst13~regout\,
	combout => \inst2|DISPLAY[2]~64_combout\);

-- Location: LCCOMB_X5_Y1_N10
\inst2|DISPLAY[2]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[2]~63_combout\ = (\inst|inst9~regout\ & (\inst|inst8~regout\ $ (!\inst|inst10~regout\))) # (!\inst|inst9~regout\ & (\inst|inst8~regout\ & !\inst|inst10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9~regout\,
	datac => \inst|inst8~regout\,
	datad => \inst|inst10~regout\,
	combout => \inst2|DISPLAY[2]~63_combout\);

-- Location: LCCOMB_X5_Y1_N6
\inst2|DISPLAY[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[2]~65_combout\ = (\inst|inst~regout\ & ((\inst2|DISPLAY[2]~64_combout\) # (\inst|inst10~regout\ $ (\inst2|DISPLAY[2]~63_combout\)))) # (!\inst|inst~regout\ & (\inst|inst10~regout\ & ((\inst2|DISPLAY[2]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10~regout\,
	datab => \inst2|DISPLAY[2]~64_combout\,
	datac => \inst|inst~regout\,
	datad => \inst2|DISPLAY[2]~63_combout\,
	combout => \inst2|DISPLAY[2]~65_combout\);

-- Location: LCCOMB_X6_Y1_N10
\inst2|DISPLAY[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[2]~66_combout\ = (\inst|inst~regout\ & ((\inst|inst14~regout\) # ((\inst2|DISPLAY[2]~65_combout\)))) # (!\inst|inst~regout\ & (((!\inst2|DISPLAY[3]~12_combout\) # (!\inst2|DISPLAY[2]~65_combout\)) # (!\inst|inst14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datab => \inst|inst14~regout\,
	datac => \inst2|DISPLAY[2]~65_combout\,
	datad => \inst2|DISPLAY[3]~12_combout\,
	combout => \inst2|DISPLAY[2]~66_combout\);

-- Location: LCCOMB_X17_Y1_N26
\inst2|comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~9_combout\ = (\inst2|DISPLAY[6]~22_combout\ & \inst2|DISPLAY[2]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[2]~66_combout\,
	combout => \inst2|comb~9_combout\);

-- Location: LCCOMB_X17_Y1_N20
\inst2|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~8_combout\ = (\inst2|DISPLAY[6]~22_combout\ & !\inst2|DISPLAY[2]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[2]~66_combout\,
	combout => \inst2|comb~8_combout\);

-- Location: LCCOMB_X17_Y1_N12
\inst2|DISPLAY[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY\(2) = (!\inst2|comb~8_combout\ & ((\inst2|comb~9_combout\) # (\inst2|DISPLAY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~9_combout\,
	datac => \inst2|comb~8_combout\,
	datad => \inst2|DISPLAY\(2),
	combout => \inst2|DISPLAY\(2));

-- Location: LCCOMB_X9_Y1_N28
\inst2|DISPLAY[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~30_combout\ = (\inst2|DISPLAY[6]~25_combout\ & ((\inst2|DECODER~0_combout\) # (!\inst2|DISPLAY[5]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DISPLAY[6]~25_combout\,
	datac => \inst2|DECODER~0_combout\,
	datad => \inst2|DISPLAY[5]~79_combout\,
	combout => \inst2|DISPLAY[6]~30_combout\);

-- Location: LCCOMB_X9_Y1_N8
\inst2|DISPLAY[6]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~70_combout\ = (\inst2|DISPLAY[6]~69_combout\) # ((!\inst|inst10~regout\ & ((\inst|inst11~regout\) # (\inst2|DISPLAY[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~69_combout\,
	datab => \inst|inst10~regout\,
	datac => \inst|inst11~regout\,
	datad => \inst2|DISPLAY[6]~30_combout\,
	combout => \inst2|DISPLAY[6]~70_combout\);

-- Location: LCCOMB_X9_Y1_N4
\inst2|DISPLAY[6]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[6]~67_combout\ = (\inst|inst10~regout\) # ((\inst2|DECODER~0_combout\) # (!\inst2|DISPLAY[5]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst10~regout\,
	datac => \inst2|DECODER~0_combout\,
	datad => \inst2|DISPLAY[5]~79_combout\,
	combout => \inst2|DISPLAY[6]~67_combout\);

-- Location: LCCOMB_X9_Y1_N26
\inst2|DISPLAY[1]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[1]~68_combout\ = (\inst|inst~regout\ & (\inst|inst8~regout\)) # (!\inst|inst~regout\ & ((\inst|inst8~regout\ & ((!\inst2|DISPLAY[5]~80_combout\))) # (!\inst|inst8~regout\ & (\inst2|DISPLAY[6]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datab => \inst|inst8~regout\,
	datac => \inst2|DISPLAY[6]~67_combout\,
	datad => \inst2|DISPLAY[5]~80_combout\,
	combout => \inst2|DISPLAY[1]~68_combout\);

-- Location: LCCOMB_X9_Y1_N18
\inst2|DISPLAY[1]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[1]~71_combout\ = (\inst|inst~regout\ & ((\inst2|DISPLAY[1]~68_combout\ & ((\inst2|DISPLAY[6]~70_combout\))) # (!\inst2|DISPLAY[1]~68_combout\ & (\inst2|DISPLAY[6]~26_combout\)))) # (!\inst|inst~regout\ & (((\inst2|DISPLAY[1]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~26_combout\,
	datab => \inst2|DISPLAY[6]~70_combout\,
	datac => \inst|inst~regout\,
	datad => \inst2|DISPLAY[1]~68_combout\,
	combout => \inst2|DISPLAY[1]~71_combout\);

-- Location: LCCOMB_X17_Y1_N22
\inst2|comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~11_combout\ = (\inst2|DISPLAY[6]~22_combout\ & \inst2|DISPLAY[1]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[1]~71_combout\,
	combout => \inst2|comb~11_combout\);

-- Location: LCCOMB_X17_Y1_N24
\inst2|comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~10_combout\ = (\inst2|DISPLAY[6]~22_combout\ & !\inst2|DISPLAY[1]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DISPLAY[6]~22_combout\,
	datad => \inst2|DISPLAY[1]~71_combout\,
	combout => \inst2|comb~10_combout\);

-- Location: LCCOMB_X17_Y1_N18
\inst2|DISPLAY[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY\(1) = (!\inst2|comb~10_combout\ & ((\inst2|comb~11_combout\) # (\inst2|DISPLAY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~11_combout\,
	datac => \inst2|comb~10_combout\,
	datad => \inst2|DISPLAY\(1),
	combout => \inst2|DISPLAY\(1));

-- Location: LCCOMB_X5_Y1_N26
\inst2|DISPLAY[0]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[0]~75_combout\ = (\inst|inst11~regout\ & ((\inst|inst~regout\ & (\inst|inst10~regout\ & !\inst|inst14~regout\)) # (!\inst|inst~regout\ & (!\inst|inst10~regout\ & \inst|inst14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~regout\,
	datab => \inst|inst10~regout\,
	datac => \inst|inst14~regout\,
	datad => \inst|inst11~regout\,
	combout => \inst2|DISPLAY[0]~75_combout\);

-- Location: LCCOMB_X5_Y1_N4
\inst2|DISPLAY[0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[0]~72_combout\ = (\inst|inst11~regout\ & (\inst|inst12~regout\ & \inst|inst13~regout\)) # (!\inst|inst11~regout\ & ((\inst|inst12~regout\) # (\inst|inst13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst11~regout\,
	datac => \inst|inst12~regout\,
	datad => \inst|inst13~regout\,
	combout => \inst2|DISPLAY[0]~72_combout\);

-- Location: LCCOMB_X5_Y1_N22
\inst2|DISPLAY[0]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[0]~73_combout\ = (\inst|inst9~regout\ & ((\inst|inst8~regout\) # (!\inst|inst10~regout\))) # (!\inst|inst9~regout\ & (\inst|inst8~regout\ & !\inst|inst10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9~regout\,
	datac => \inst|inst8~regout\,
	datad => \inst|inst10~regout\,
	combout => \inst2|DISPLAY[0]~73_combout\);

-- Location: LCCOMB_X5_Y1_N8
\inst2|DISPLAY[0]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY[0]~76_combout\ = (\inst2|DISPLAY[0]~74_combout\ & (((!\inst2|DISPLAY[0]~73_combout\) # (!\inst2|DISPLAY[0]~72_combout\)) # (!\inst2|DISPLAY[0]~75_combout\))) # (!\inst2|DISPLAY[0]~74_combout\ & ((\inst2|DISPLAY[0]~73_combout\) # 
-- (\inst2|DISPLAY[0]~75_combout\ $ (\inst2|DISPLAY[0]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[0]~74_combout\,
	datab => \inst2|DISPLAY[0]~75_combout\,
	datac => \inst2|DISPLAY[0]~72_combout\,
	datad => \inst2|DISPLAY[0]~73_combout\,
	combout => \inst2|DISPLAY[0]~76_combout\);

-- Location: LCCOMB_X17_Y1_N30
\inst2|comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~13_combout\ = (\inst2|DISPLAY[6]~22_combout\ & \inst2|DISPLAY[0]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~22_combout\,
	datac => \inst2|DISPLAY[0]~76_combout\,
	combout => \inst2|comb~13_combout\);

-- Location: LCCOMB_X17_Y1_N4
\inst2|comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|comb~12_combout\ = (\inst2|DISPLAY[6]~22_combout\ & !\inst2|DISPLAY[0]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DISPLAY[6]~22_combout\,
	datac => \inst2|DISPLAY[0]~76_combout\,
	combout => \inst2|comb~12_combout\);

-- Location: LCCOMB_X17_Y1_N28
\inst2|DISPLAY[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|DISPLAY\(0) = (!\inst2|comb~12_combout\ & ((\inst2|comb~13_combout\) # (\inst2|DISPLAY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~13_combout\,
	datac => \inst2|comb~12_combout\,
	datad => \inst2|DISPLAY\(0),
	combout => \inst2|DISPLAY\(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED5);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED6);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED7);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED8);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\a~I\ : cycloneii_io
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
	datain => \inst2|DISPLAY\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_a);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\b~I\ : cycloneii_io
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
	datain => \inst2|DISPLAY\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_b);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c~I\ : cycloneii_io
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
	datain => \inst2|DISPLAY\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d~I\ : cycloneii_io
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
	datain => \inst2|DISPLAY\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\e~I\ : cycloneii_io
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
	datain => \inst2|DISPLAY\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f~I\ : cycloneii_io
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
	datain => \inst2|DISPLAY\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g~I\ : cycloneii_io
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
	datain => \inst2|DISPLAY\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g);
END structure;


