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

-- DATE "05/16/2022 18:11:48"

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

ENTITY 	Practica4 IS
    PORT (
	clk50Mhz : IN std_logic;
	leds : OUT std_logic_vector(7 DOWNTO 0)
	);
END Practica4;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[2]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[4]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[5]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[6]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[7]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk50Mhz	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50Mhz : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reloj1|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50Mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj1|Add0~2_combout\ : std_logic;
SIGNAL \Reloj1|Add0~4_combout\ : std_logic;
SIGNAL \Reloj1|Add0~12_combout\ : std_logic;
SIGNAL \Reloj1|Add0~30_combout\ : std_logic;
SIGNAL \Reloj1|Add0~34_combout\ : std_logic;
SIGNAL \Reloj1|Add0~47\ : std_logic;
SIGNAL \Reloj1|Add0~48_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~2_combout\ : std_logic;
SIGNAL \Reloj1|contador~0_combout\ : std_logic;
SIGNAL \Reloj1|contador~11_combout\ : std_logic;
SIGNAL \clk50Mhz~combout\ : std_logic;
SIGNAL \clk50Mhz~clkctrl_outclk\ : std_logic;
SIGNAL \Reloj1|Add0~0_combout\ : std_logic;
SIGNAL \Reloj1|Add0~1\ : std_logic;
SIGNAL \Reloj1|Add0~3\ : std_logic;
SIGNAL \Reloj1|Add0~5\ : std_logic;
SIGNAL \Reloj1|Add0~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~7\ : std_logic;
SIGNAL \Reloj1|Add0~8_combout\ : std_logic;
SIGNAL \Reloj1|Add0~9\ : std_logic;
SIGNAL \Reloj1|Add0~10_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~11\ : std_logic;
SIGNAL \Reloj1|Add0~13\ : std_logic;
SIGNAL \Reloj1|Add0~14_combout\ : std_logic;
SIGNAL \Reloj1|Add0~15\ : std_logic;
SIGNAL \Reloj1|Add0~16_combout\ : std_logic;
SIGNAL \Reloj1|Add0~17\ : std_logic;
SIGNAL \Reloj1|Add0~18_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~5_combout\ : std_logic;
SIGNAL \Reloj1|Add0~19\ : std_logic;
SIGNAL \Reloj1|Add0~20_combout\ : std_logic;
SIGNAL \Reloj1|Add0~21\ : std_logic;
SIGNAL \Reloj1|Add0~22_combout\ : std_logic;
SIGNAL \Reloj1|contador~10_combout\ : std_logic;
SIGNAL \Reloj1|Add0~23\ : std_logic;
SIGNAL \Reloj1|Add0~24_combout\ : std_logic;
SIGNAL \Reloj1|contador~9_combout\ : std_logic;
SIGNAL \Reloj1|Add0~25\ : std_logic;
SIGNAL \Reloj1|Add0~26_combout\ : std_logic;
SIGNAL \Reloj1|contador~8_combout\ : std_logic;
SIGNAL \Reloj1|Add0~27\ : std_logic;
SIGNAL \Reloj1|Add0~28_combout\ : std_logic;
SIGNAL \Reloj1|contador~7_combout\ : std_logic;
SIGNAL \Reloj1|Add0~29\ : std_logic;
SIGNAL \Reloj1|Add0~31\ : std_logic;
SIGNAL \Reloj1|Add0~32_combout\ : std_logic;
SIGNAL \Reloj1|contador~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~33\ : std_logic;
SIGNAL \Reloj1|Add0~35\ : std_logic;
SIGNAL \Reloj1|Add0~36_combout\ : std_logic;
SIGNAL \Reloj1|contador~5_combout\ : std_logic;
SIGNAL \Reloj1|Add0~37\ : std_logic;
SIGNAL \Reloj1|Add0~38_combout\ : std_logic;
SIGNAL \Reloj1|contador~4_combout\ : std_logic;
SIGNAL \Reloj1|Add0~39\ : std_logic;
SIGNAL \Reloj1|Add0~40_combout\ : std_logic;
SIGNAL \Reloj1|contador~3_combout\ : std_logic;
SIGNAL \Reloj1|Add0~41\ : std_logic;
SIGNAL \Reloj1|Add0~42_combout\ : std_logic;
SIGNAL \Reloj1|contador~2_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~1_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~3_combout\ : std_logic;
SIGNAL \Reloj1|Add0~43\ : std_logic;
SIGNAL \Reloj1|Add0~45\ : std_logic;
SIGNAL \Reloj1|Add0~46_combout\ : std_logic;
SIGNAL \Reloj1|Add0~44_combout\ : std_logic;
SIGNAL \Reloj1|contador~1_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~0_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~4_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~7_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~0_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~regout\ : std_logic;
SIGNAL \Reloj1|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \numeros[0]~21_combout\ : std_logic;
SIGNAL \numeros[1]~7_combout\ : std_logic;
SIGNAL \numeros[1]~8\ : std_logic;
SIGNAL \numeros[2]~9_combout\ : std_logic;
SIGNAL \numeros[2]~10\ : std_logic;
SIGNAL \numeros[3]~11_combout\ : std_logic;
SIGNAL \numeros[3]~12\ : std_logic;
SIGNAL \numeros[4]~13_combout\ : std_logic;
SIGNAL \numeros[4]~14\ : std_logic;
SIGNAL \numeros[5]~15_combout\ : std_logic;
SIGNAL \numeros[5]~16\ : std_logic;
SIGNAL \numeros[6]~17_combout\ : std_logic;
SIGNAL \numeros[6]~18\ : std_logic;
SIGNAL \numeros[7]~19_combout\ : std_logic;
SIGNAL numeros : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reloj1|contador\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clk50Mhz <= clk50Mhz;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj1|salida_media~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reloj1|salida_media~regout\);

\clk50Mhz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk50Mhz~combout\);

-- Location: LCCOMB_X1_Y12_N10
\Reloj1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~2_combout\ = (\Reloj1|contador\(1) & (!\Reloj1|Add0~1\)) # (!\Reloj1|contador\(1) & ((\Reloj1|Add0~1\) # (GND)))
-- \Reloj1|Add0~3\ = CARRY((!\Reloj1|Add0~1\) # (!\Reloj1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(1),
	datad => VCC,
	cin => \Reloj1|Add0~1\,
	combout => \Reloj1|Add0~2_combout\,
	cout => \Reloj1|Add0~3\);

-- Location: LCCOMB_X1_Y12_N12
\Reloj1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~4_combout\ = (\Reloj1|contador\(2) & (\Reloj1|Add0~3\ $ (GND))) # (!\Reloj1|contador\(2) & (!\Reloj1|Add0~3\ & VCC))
-- \Reloj1|Add0~5\ = CARRY((\Reloj1|contador\(2) & !\Reloj1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(2),
	datad => VCC,
	cin => \Reloj1|Add0~3\,
	combout => \Reloj1|Add0~4_combout\,
	cout => \Reloj1|Add0~5\);

-- Location: LCCOMB_X1_Y12_N20
\Reloj1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~12_combout\ = (\Reloj1|contador\(6) & (\Reloj1|Add0~11\ $ (GND))) # (!\Reloj1|contador\(6) & (!\Reloj1|Add0~11\ & VCC))
-- \Reloj1|Add0~13\ = CARRY((\Reloj1|contador\(6) & !\Reloj1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(6),
	datad => VCC,
	cin => \Reloj1|Add0~11\,
	combout => \Reloj1|Add0~12_combout\,
	cout => \Reloj1|Add0~13\);

-- Location: LCCOMB_X1_Y11_N6
\Reloj1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~30_combout\ = (\Reloj1|contador\(15) & (!\Reloj1|Add0~29\)) # (!\Reloj1|contador\(15) & ((\Reloj1|Add0~29\) # (GND)))
-- \Reloj1|Add0~31\ = CARRY((!\Reloj1|Add0~29\) # (!\Reloj1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(15),
	datad => VCC,
	cin => \Reloj1|Add0~29\,
	combout => \Reloj1|Add0~30_combout\,
	cout => \Reloj1|Add0~31\);

-- Location: LCCOMB_X1_Y11_N10
\Reloj1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~34_combout\ = (\Reloj1|contador\(17) & (!\Reloj1|Add0~33\)) # (!\Reloj1|contador\(17) & ((\Reloj1|Add0~33\) # (GND)))
-- \Reloj1|Add0~35\ = CARRY((!\Reloj1|Add0~33\) # (!\Reloj1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(17),
	datad => VCC,
	cin => \Reloj1|Add0~33\,
	combout => \Reloj1|Add0~34_combout\,
	cout => \Reloj1|Add0~35\);

-- Location: LCCOMB_X1_Y11_N22
\Reloj1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~46_combout\ = (\Reloj1|contador\(23) & (!\Reloj1|Add0~45\)) # (!\Reloj1|contador\(23) & ((\Reloj1|Add0~45\) # (GND)))
-- \Reloj1|Add0~47\ = CARRY((!\Reloj1|Add0~45\) # (!\Reloj1|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(23),
	datad => VCC,
	cin => \Reloj1|Add0~45\,
	combout => \Reloj1|Add0~46_combout\,
	cout => \Reloj1|Add0~47\);

-- Location: LCCOMB_X1_Y11_N24
\Reloj1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~48_combout\ = \Reloj1|Add0~47\ $ (!\Reloj1|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Reloj1|contador\(24),
	cin => \Reloj1|Add0~47\,
	combout => \Reloj1|Add0~48_combout\);

-- Location: LCFF_X1_Y11_N31
\Reloj1|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(24));

-- Location: LCFF_X1_Y11_N11
\Reloj1|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(17));

-- Location: LCFF_X1_Y11_N7
\Reloj1|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(15));

-- Location: LCCOMB_X2_Y11_N16
\Reloj1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~2_combout\ = (\Reloj1|contador\(14) & (!\Reloj1|contador\(15) & (\Reloj1|contador\(16) & !\Reloj1|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(14),
	datab => \Reloj1|contador\(15),
	datac => \Reloj1|contador\(16),
	datad => \Reloj1|contador\(17),
	combout => \Reloj1|Equal0~2_combout\);

-- Location: LCFF_X1_Y12_N7
\Reloj1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(6));

-- Location: LCFF_X1_Y12_N11
\Reloj1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(1));

-- Location: LCFF_X1_Y12_N13
\Reloj1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(2));

-- Location: LCCOMB_X1_Y11_N30
\Reloj1|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~0_combout\ = (\Reloj1|Add0~48_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~48_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~0_combout\);

-- Location: LCCOMB_X1_Y12_N6
\Reloj1|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~11_combout\ = (\Reloj1|Add0~12_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~12_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~11_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk50Mhz~I\ : cycloneii_io
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
	padio => ww_clk50Mhz,
	combout => \clk50Mhz~combout\);

-- Location: CLKCTRL_G2
\clk50Mhz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50Mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50Mhz~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y12_N8
\Reloj1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~0_combout\ = \Reloj1|contador\(0) $ (VCC)
-- \Reloj1|Add0~1\ = CARRY(\Reloj1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(0),
	datad => VCC,
	combout => \Reloj1|Add0~0_combout\,
	cout => \Reloj1|Add0~1\);

-- Location: LCFF_X1_Y12_N9
\Reloj1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(0));

-- Location: LCCOMB_X1_Y12_N14
\Reloj1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~6_combout\ = (\Reloj1|contador\(3) & (!\Reloj1|Add0~5\)) # (!\Reloj1|contador\(3) & ((\Reloj1|Add0~5\) # (GND)))
-- \Reloj1|Add0~7\ = CARRY((!\Reloj1|Add0~5\) # (!\Reloj1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(3),
	datad => VCC,
	cin => \Reloj1|Add0~5\,
	combout => \Reloj1|Add0~6_combout\,
	cout => \Reloj1|Add0~7\);

-- Location: LCFF_X1_Y12_N15
\Reloj1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(3));

-- Location: LCCOMB_X1_Y12_N16
\Reloj1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~8_combout\ = (\Reloj1|contador\(4) & (\Reloj1|Add0~7\ $ (GND))) # (!\Reloj1|contador\(4) & (!\Reloj1|Add0~7\ & VCC))
-- \Reloj1|Add0~9\ = CARRY((\Reloj1|contador\(4) & !\Reloj1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(4),
	datad => VCC,
	cin => \Reloj1|Add0~7\,
	combout => \Reloj1|Add0~8_combout\,
	cout => \Reloj1|Add0~9\);

-- Location: LCFF_X1_Y12_N17
\Reloj1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(4));

-- Location: LCCOMB_X1_Y12_N18
\Reloj1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~10_combout\ = (\Reloj1|contador\(5) & (!\Reloj1|Add0~9\)) # (!\Reloj1|contador\(5) & ((\Reloj1|Add0~9\) # (GND)))
-- \Reloj1|Add0~11\ = CARRY((!\Reloj1|Add0~9\) # (!\Reloj1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(5),
	datad => VCC,
	cin => \Reloj1|Add0~9\,
	combout => \Reloj1|Add0~10_combout\,
	cout => \Reloj1|Add0~11\);

-- Location: LCFF_X1_Y12_N19
\Reloj1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(5));

-- Location: LCCOMB_X1_Y12_N2
\Reloj1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~6_combout\ = (\Reloj1|contador\(2) & (\Reloj1|contador\(3) & (\Reloj1|contador\(4) & \Reloj1|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(2),
	datab => \Reloj1|contador\(3),
	datac => \Reloj1|contador\(4),
	datad => \Reloj1|contador\(5),
	combout => \Reloj1|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y12_N22
\Reloj1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~14_combout\ = (\Reloj1|contador\(7) & (!\Reloj1|Add0~13\)) # (!\Reloj1|contador\(7) & ((\Reloj1|Add0~13\) # (GND)))
-- \Reloj1|Add0~15\ = CARRY((!\Reloj1|Add0~13\) # (!\Reloj1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(7),
	datad => VCC,
	cin => \Reloj1|Add0~13\,
	combout => \Reloj1|Add0~14_combout\,
	cout => \Reloj1|Add0~15\);

-- Location: LCFF_X1_Y12_N23
\Reloj1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(7));

-- Location: LCCOMB_X1_Y12_N24
\Reloj1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~16_combout\ = (\Reloj1|contador\(8) & (\Reloj1|Add0~15\ $ (GND))) # (!\Reloj1|contador\(8) & (!\Reloj1|Add0~15\ & VCC))
-- \Reloj1|Add0~17\ = CARRY((\Reloj1|contador\(8) & !\Reloj1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(8),
	datad => VCC,
	cin => \Reloj1|Add0~15\,
	combout => \Reloj1|Add0~16_combout\,
	cout => \Reloj1|Add0~17\);

-- Location: LCFF_X1_Y12_N25
\Reloj1|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(8));

-- Location: LCCOMB_X1_Y12_N26
\Reloj1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~18_combout\ = (\Reloj1|contador\(9) & (!\Reloj1|Add0~17\)) # (!\Reloj1|contador\(9) & ((\Reloj1|Add0~17\) # (GND)))
-- \Reloj1|Add0~19\ = CARRY((!\Reloj1|Add0~17\) # (!\Reloj1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(9),
	datad => VCC,
	cin => \Reloj1|Add0~17\,
	combout => \Reloj1|Add0~18_combout\,
	cout => \Reloj1|Add0~19\);

-- Location: LCFF_X1_Y12_N27
\Reloj1|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(9));

-- Location: LCCOMB_X1_Y12_N0
\Reloj1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~5_combout\ = (!\Reloj1|contador\(6) & (!\Reloj1|contador\(7) & (!\Reloj1|contador\(8) & !\Reloj1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(6),
	datab => \Reloj1|contador\(7),
	datac => \Reloj1|contador\(8),
	datad => \Reloj1|contador\(9),
	combout => \Reloj1|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y12_N28
\Reloj1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~20_combout\ = (\Reloj1|contador\(10) & (\Reloj1|Add0~19\ $ (GND))) # (!\Reloj1|contador\(10) & (!\Reloj1|Add0~19\ & VCC))
-- \Reloj1|Add0~21\ = CARRY((\Reloj1|contador\(10) & !\Reloj1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(10),
	datad => VCC,
	cin => \Reloj1|Add0~19\,
	combout => \Reloj1|Add0~20_combout\,
	cout => \Reloj1|Add0~21\);

-- Location: LCFF_X1_Y12_N29
\Reloj1|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(10));

-- Location: LCCOMB_X1_Y12_N30
\Reloj1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~22_combout\ = (\Reloj1|contador\(11) & (!\Reloj1|Add0~21\)) # (!\Reloj1|contador\(11) & ((\Reloj1|Add0~21\) # (GND)))
-- \Reloj1|Add0~23\ = CARRY((!\Reloj1|Add0~21\) # (!\Reloj1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(11),
	datad => VCC,
	cin => \Reloj1|Add0~21\,
	combout => \Reloj1|Add0~22_combout\,
	cout => \Reloj1|Add0~23\);

-- Location: LCCOMB_X1_Y12_N4
\Reloj1|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~10_combout\ = (\Reloj1|Add0~22_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|Add0~22_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~10_combout\);

-- Location: LCFF_X1_Y12_N5
\Reloj1|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(11));

-- Location: LCCOMB_X1_Y11_N0
\Reloj1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~24_combout\ = (\Reloj1|contador\(12) & (\Reloj1|Add0~23\ $ (GND))) # (!\Reloj1|contador\(12) & (!\Reloj1|Add0~23\ & VCC))
-- \Reloj1|Add0~25\ = CARRY((\Reloj1|contador\(12) & !\Reloj1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(12),
	datad => VCC,
	cin => \Reloj1|Add0~23\,
	combout => \Reloj1|Add0~24_combout\,
	cout => \Reloj1|Add0~25\);

-- Location: LCCOMB_X2_Y11_N20
\Reloj1|contador~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~9_combout\ = (\Reloj1|Add0~24_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~24_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~9_combout\);

-- Location: LCFF_X2_Y11_N21
\Reloj1|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(12));

-- Location: LCCOMB_X1_Y11_N2
\Reloj1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~26_combout\ = (\Reloj1|contador\(13) & (!\Reloj1|Add0~25\)) # (!\Reloj1|contador\(13) & ((\Reloj1|Add0~25\) # (GND)))
-- \Reloj1|Add0~27\ = CARRY((!\Reloj1|Add0~25\) # (!\Reloj1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(13),
	datad => VCC,
	cin => \Reloj1|Add0~25\,
	combout => \Reloj1|Add0~26_combout\,
	cout => \Reloj1|Add0~27\);

-- Location: LCCOMB_X2_Y11_N30
\Reloj1|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~8_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~26_combout\,
	combout => \Reloj1|contador~8_combout\);

-- Location: LCFF_X2_Y11_N31
\Reloj1|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(13));

-- Location: LCCOMB_X1_Y11_N4
\Reloj1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~28_combout\ = (\Reloj1|contador\(14) & (\Reloj1|Add0~27\ $ (GND))) # (!\Reloj1|contador\(14) & (!\Reloj1|Add0~27\ & VCC))
-- \Reloj1|Add0~29\ = CARRY((\Reloj1|contador\(14) & !\Reloj1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(14),
	datad => VCC,
	cin => \Reloj1|Add0~27\,
	combout => \Reloj1|Add0~28_combout\,
	cout => \Reloj1|Add0~29\);

-- Location: LCCOMB_X2_Y11_N10
\Reloj1|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~7_combout\ = (\Reloj1|Add0~28_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~28_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~7_combout\);

-- Location: LCFF_X2_Y11_N11
\Reloj1|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(14));

-- Location: LCCOMB_X1_Y11_N8
\Reloj1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~32_combout\ = (\Reloj1|contador\(16) & (\Reloj1|Add0~31\ $ (GND))) # (!\Reloj1|contador\(16) & (!\Reloj1|Add0~31\ & VCC))
-- \Reloj1|Add0~33\ = CARRY((\Reloj1|contador\(16) & !\Reloj1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(16),
	datad => VCC,
	cin => \Reloj1|Add0~31\,
	combout => \Reloj1|Add0~32_combout\,
	cout => \Reloj1|Add0~33\);

-- Location: LCCOMB_X2_Y11_N24
\Reloj1|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~6_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~32_combout\,
	combout => \Reloj1|contador~6_combout\);

-- Location: LCFF_X2_Y11_N25
\Reloj1|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(16));

-- Location: LCCOMB_X1_Y11_N12
\Reloj1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~36_combout\ = (\Reloj1|contador\(18) & (\Reloj1|Add0~35\ $ (GND))) # (!\Reloj1|contador\(18) & (!\Reloj1|Add0~35\ & VCC))
-- \Reloj1|Add0~37\ = CARRY((\Reloj1|contador\(18) & !\Reloj1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(18),
	datad => VCC,
	cin => \Reloj1|Add0~35\,
	combout => \Reloj1|Add0~36_combout\,
	cout => \Reloj1|Add0~37\);

-- Location: LCCOMB_X2_Y11_N12
\Reloj1|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~5_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~36_combout\,
	combout => \Reloj1|contador~5_combout\);

-- Location: LCFF_X2_Y11_N13
\Reloj1|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(18));

-- Location: LCCOMB_X1_Y11_N14
\Reloj1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~38_combout\ = (\Reloj1|contador\(19) & (!\Reloj1|Add0~37\)) # (!\Reloj1|contador\(19) & ((\Reloj1|Add0~37\) # (GND)))
-- \Reloj1|Add0~39\ = CARRY((!\Reloj1|Add0~37\) # (!\Reloj1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(19),
	datad => VCC,
	cin => \Reloj1|Add0~37\,
	combout => \Reloj1|Add0~38_combout\,
	cout => \Reloj1|Add0~39\);

-- Location: LCCOMB_X1_Y11_N28
\Reloj1|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~4_combout\ = (\Reloj1|Add0~38_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~38_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~4_combout\);

-- Location: LCFF_X1_Y11_N29
\Reloj1|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(19));

-- Location: LCCOMB_X1_Y11_N16
\Reloj1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~40_combout\ = (\Reloj1|contador\(20) & (\Reloj1|Add0~39\ $ (GND))) # (!\Reloj1|contador\(20) & (!\Reloj1|Add0~39\ & VCC))
-- \Reloj1|Add0~41\ = CARRY((\Reloj1|contador\(20) & !\Reloj1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(20),
	datad => VCC,
	cin => \Reloj1|Add0~39\,
	combout => \Reloj1|Add0~40_combout\,
	cout => \Reloj1|Add0~41\);

-- Location: LCCOMB_X2_Y11_N18
\Reloj1|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~3_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~40_combout\,
	combout => \Reloj1|contador~3_combout\);

-- Location: LCFF_X2_Y11_N19
\Reloj1|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(20));

-- Location: LCCOMB_X1_Y11_N18
\Reloj1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~42_combout\ = (\Reloj1|contador\(21) & (!\Reloj1|Add0~41\)) # (!\Reloj1|contador\(21) & ((\Reloj1|Add0~41\) # (GND)))
-- \Reloj1|Add0~43\ = CARRY((!\Reloj1|Add0~41\) # (!\Reloj1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(21),
	datad => VCC,
	cin => \Reloj1|Add0~41\,
	combout => \Reloj1|Add0~42_combout\,
	cout => \Reloj1|Add0~43\);

-- Location: LCCOMB_X2_Y11_N8
\Reloj1|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~2_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~42_combout\,
	combout => \Reloj1|contador~2_combout\);

-- Location: LCFF_X2_Y11_N9
\Reloj1|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(21));

-- Location: LCCOMB_X2_Y11_N26
\Reloj1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~1_combout\ = (\Reloj1|contador\(18) & (\Reloj1|contador\(20) & (\Reloj1|contador\(21) & \Reloj1|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(18),
	datab => \Reloj1|contador\(20),
	datac => \Reloj1|contador\(21),
	datad => \Reloj1|contador\(19),
	combout => \Reloj1|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y11_N14
\Reloj1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~3_combout\ = (\Reloj1|contador\(12) & (\Reloj1|contador\(13) & (\Reloj1|contador\(11) & !\Reloj1|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(12),
	datab => \Reloj1|contador\(13),
	datac => \Reloj1|contador\(11),
	datad => \Reloj1|contador\(10),
	combout => \Reloj1|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y11_N20
\Reloj1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~44_combout\ = (\Reloj1|contador\(22) & (\Reloj1|Add0~43\ $ (GND))) # (!\Reloj1|contador\(22) & (!\Reloj1|Add0~43\ & VCC))
-- \Reloj1|Add0~45\ = CARRY((\Reloj1|contador\(22) & !\Reloj1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(22),
	datad => VCC,
	cin => \Reloj1|Add0~43\,
	combout => \Reloj1|Add0~44_combout\,
	cout => \Reloj1|Add0~45\);

-- Location: LCFF_X1_Y11_N23
\Reloj1|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(23));

-- Location: LCCOMB_X2_Y11_N4
\Reloj1|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~1_combout\ = (\Reloj1|Add0~44_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~44_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~1_combout\);

-- Location: LCFF_X2_Y11_N5
\Reloj1|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(22));

-- Location: LCCOMB_X2_Y11_N22
\Reloj1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~0_combout\ = (\Reloj1|contador\(24) & (!\Reloj1|contador\(23) & (\Reloj1|contador\(22) & \Reloj1|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(24),
	datab => \Reloj1|contador\(23),
	datac => \Reloj1|contador\(22),
	datad => \Reloj1|contador\(0),
	combout => \Reloj1|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y11_N28
\Reloj1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~4_combout\ = (\Reloj1|Equal0~2_combout\ & (\Reloj1|Equal0~1_combout\ & (\Reloj1|Equal0~3_combout\ & \Reloj1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~2_combout\,
	datab => \Reloj1|Equal0~1_combout\,
	datac => \Reloj1|Equal0~3_combout\,
	datad => \Reloj1|Equal0~0_combout\,
	combout => \Reloj1|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y11_N6
\Reloj1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~7_combout\ = (\Reloj1|contador\(1) & (\Reloj1|Equal0~6_combout\ & (\Reloj1|Equal0~5_combout\ & \Reloj1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(1),
	datab => \Reloj1|Equal0~6_combout\,
	datac => \Reloj1|Equal0~5_combout\,
	datad => \Reloj1|Equal0~4_combout\,
	combout => \Reloj1|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y11_N26
\Reloj1|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|salida_media~0_combout\ = \Reloj1|salida_media~regout\ $ (\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|salida_media~regout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|salida_media~0_combout\);

-- Location: LCFF_X1_Y11_N27
\Reloj1|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50Mhz~clkctrl_outclk\,
	datain => \Reloj1|salida_media~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|salida_media~regout\);

-- Location: CLKCTRL_G3
\Reloj1|salida_media~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj1|salida_media~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj1|salida_media~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y5_N30
\numeros[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[0]~21_combout\ = !numeros(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => numeros(0),
	combout => \numeros[0]~21_combout\);

-- Location: LCFF_X1_Y5_N31
\numeros[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(0));

-- Location: LCCOMB_X1_Y5_N0
\numeros[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[1]~7_combout\ = (numeros(0) & (numeros(1) $ (VCC))) # (!numeros(0) & (numeros(1) & VCC))
-- \numeros[1]~8\ = CARRY((numeros(0) & numeros(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => numeros(0),
	datab => numeros(1),
	datad => VCC,
	combout => \numeros[1]~7_combout\,
	cout => \numeros[1]~8\);

-- Location: LCFF_X1_Y5_N1
\numeros[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(1));

-- Location: LCCOMB_X1_Y5_N2
\numeros[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[2]~9_combout\ = (numeros(2) & (!\numeros[1]~8\)) # (!numeros(2) & ((\numeros[1]~8\) # (GND)))
-- \numeros[2]~10\ = CARRY((!\numeros[1]~8\) # (!numeros(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => numeros(2),
	datad => VCC,
	cin => \numeros[1]~8\,
	combout => \numeros[2]~9_combout\,
	cout => \numeros[2]~10\);

-- Location: LCFF_X1_Y5_N3
\numeros[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(2));

-- Location: LCCOMB_X1_Y5_N4
\numeros[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[3]~11_combout\ = (numeros(3) & (\numeros[2]~10\ $ (GND))) # (!numeros(3) & (!\numeros[2]~10\ & VCC))
-- \numeros[3]~12\ = CARRY((numeros(3) & !\numeros[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => numeros(3),
	datad => VCC,
	cin => \numeros[2]~10\,
	combout => \numeros[3]~11_combout\,
	cout => \numeros[3]~12\);

-- Location: LCFF_X1_Y5_N5
\numeros[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(3));

-- Location: LCCOMB_X1_Y5_N6
\numeros[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[4]~13_combout\ = (numeros(4) & (!\numeros[3]~12\)) # (!numeros(4) & ((\numeros[3]~12\) # (GND)))
-- \numeros[4]~14\ = CARRY((!\numeros[3]~12\) # (!numeros(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => numeros(4),
	datad => VCC,
	cin => \numeros[3]~12\,
	combout => \numeros[4]~13_combout\,
	cout => \numeros[4]~14\);

-- Location: LCFF_X1_Y5_N7
\numeros[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(4));

-- Location: LCCOMB_X1_Y5_N8
\numeros[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[5]~15_combout\ = (numeros(5) & (\numeros[4]~14\ $ (GND))) # (!numeros(5) & (!\numeros[4]~14\ & VCC))
-- \numeros[5]~16\ = CARRY((numeros(5) & !\numeros[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => numeros(5),
	datad => VCC,
	cin => \numeros[4]~14\,
	combout => \numeros[5]~15_combout\,
	cout => \numeros[5]~16\);

-- Location: LCFF_X1_Y5_N9
\numeros[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(5));

-- Location: LCCOMB_X1_Y5_N10
\numeros[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[6]~17_combout\ = (numeros(6) & (!\numeros[5]~16\)) # (!numeros(6) & ((\numeros[5]~16\) # (GND)))
-- \numeros[6]~18\ = CARRY((!\numeros[5]~16\) # (!numeros(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => numeros(6),
	datad => VCC,
	cin => \numeros[5]~16\,
	combout => \numeros[6]~17_combout\,
	cout => \numeros[6]~18\);

-- Location: LCFF_X1_Y5_N11
\numeros[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(6));

-- Location: LCCOMB_X1_Y5_N12
\numeros[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \numeros[7]~19_combout\ = \numeros[6]~18\ $ (!numeros(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => numeros(7),
	cin => \numeros[6]~18\,
	combout => \numeros[7]~19_combout\);

-- Location: LCFF_X1_Y5_N13
\numeros[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \numeros[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => numeros(7));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[0]~I\ : cycloneii_io
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
	datain => numeros(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[1]~I\ : cycloneii_io
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
	datain => numeros(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(1));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[2]~I\ : cycloneii_io
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
	datain => numeros(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(2));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[3]~I\ : cycloneii_io
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
	datain => numeros(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(3));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[4]~I\ : cycloneii_io
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
	datain => numeros(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(4));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[5]~I\ : cycloneii_io
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
	datain => numeros(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(5));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[6]~I\ : cycloneii_io
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
	datain => numeros(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(6));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[7]~I\ : cycloneii_io
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
	datain => numeros(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(7));
END structure;


