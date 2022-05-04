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

-- DATE "05/04/2022 11:42:17"

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
	A : OUT std_logic;
	clk : IN std_logic;
	s_metales : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END Practica7;

-- Design Ports Information
-- A	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_metales	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_A : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s_metales : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \s_metales~combout\ : std_logic;
SIGNAL \inst2|salida~3_combout\ : std_logic;
SIGNAL \inst2|salida[0]~reg0_regout\ : std_logic;
SIGNAL \inst2|salida~2_combout\ : std_logic;
SIGNAL \inst2|salida[1]~reg0_regout\ : std_logic;
SIGNAL \inst2|salida~1_combout\ : std_logic;
SIGNAL \inst2|salida[2]~reg0_regout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|salida~0_combout\ : std_logic;
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
ww_clk <= clk;
ww_s_metales <= s_metales;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst1|ALT_INV_salidaVector~6_combout\ <= NOT \inst1|salidaVector~6_combout\;
\inst1|ALT_INV_salidaVector~5_combout\ <= NOT \inst1|salidaVector~5_combout\;
\inst1|ALT_INV_salidaVector~4_combout\ <= NOT \inst1|salidaVector~4_combout\;
\inst1|ALT_INV_salidaVector~3_combout\ <= NOT \inst1|salidaVector~3_combout\;
\inst1|ALT_INV_salidaVector~2_combout\ <= NOT \inst1|salidaVector~2_combout\;
\inst1|ALT_INV_salidaVector~1_combout\ <= NOT \inst1|salidaVector~1_combout\;
\inst1|ALT_INV_salidaVector~0_combout\ <= NOT \inst1|salidaVector~0_combout\;

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_metales~I\ : cycloneii_io
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
	padio => ww_s_metales,
	combout => \s_metales~combout\);

-- Location: LCCOMB_X9_Y1_N22
\inst2|salida~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|salida~3_combout\ = (!\inst2|salida[0]~reg0_regout\ & !\s_metales~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \s_metales~combout\,
	combout => \inst2|salida~3_combout\);

-- Location: LCFF_X9_Y1_N23
\inst2|salida[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|salida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|salida[0]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N4
\inst2|salida~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|salida~2_combout\ = (!\s_metales~combout\ & (\inst2|salida[1]~reg0_regout\ $ (\inst2|salida[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_metales~combout\,
	datac => \inst2|salida[1]~reg0_regout\,
	datad => \inst2|salida[0]~reg0_regout\,
	combout => \inst2|salida~2_combout\);

-- Location: LCFF_X9_Y1_N5
\inst2|salida[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|salida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|salida[1]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N30
\inst2|salida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|salida~1_combout\ = (!\s_metales~combout\ & (\inst2|salida[2]~reg0_regout\ $ (((\inst2|salida[0]~reg0_regout\ & \inst2|salida[1]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_metales~combout\,
	datab => \inst2|salida[0]~reg0_regout\,
	datac => \inst2|salida[2]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst2|salida~1_combout\);

-- Location: LCFF_X9_Y1_N31
\inst2|salida[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|salida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|salida[2]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N6
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|salida[3]~reg0_regout\ $ (((\inst2|salida[2]~reg0_regout\ & (\inst2|salida[1]~reg0_regout\ & \inst2|salida[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[1]~reg0_regout\,
	datad => \inst2|salida[0]~reg0_regout\,
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X9_Y1_N16
\inst2|salida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|salida~0_combout\ = (!\s_metales~combout\ & \inst2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_metales~combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|salida~0_combout\);

-- Location: LCFF_X9_Y1_N17
\inst2|salida[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|salida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|salida[3]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N24
\inst1|salidaVector~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~0_combout\ = (\inst2|salida[2]~reg0_regout\ & (((!\inst2|salida[0]~reg0_regout\)))) # (!\inst2|salida[2]~reg0_regout\ & (\inst2|salida[1]~reg0_regout\ $ (((\inst2|salida[0]~reg0_regout\) # (!\inst2|salida[3]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~0_combout\);

-- Location: LCCOMB_X9_Y1_N18
\inst1|salidaVector~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~1_combout\ = (\inst2|salida[0]~reg0_regout\ & (((!\inst2|salida[2]~reg0_regout\ & !\inst2|salida[1]~reg0_regout\)))) # (!\inst2|salida[0]~reg0_regout\ & ((\inst2|salida[3]~reg0_regout\ $ (!\inst2|salida[2]~reg0_regout\)) # 
-- (!\inst2|salida[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~1_combout\);

-- Location: LCCOMB_X9_Y1_N28
\inst1|salidaVector~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~2_combout\ = (\inst2|salida[1]~reg0_regout\ & (((!\inst2|salida[0]~reg0_regout\)))) # (!\inst2|salida[1]~reg0_regout\ & (((\inst2|salida[3]~reg0_regout\ & !\inst2|salida[0]~reg0_regout\)) # (!\inst2|salida[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~2_combout\);

-- Location: LCCOMB_X9_Y1_N10
\inst1|salidaVector~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~3_combout\ = (\inst2|salida[2]~reg0_regout\ & (!\inst2|salida[0]~reg0_regout\ & ((!\inst2|salida[1]~reg0_regout\) # (!\inst2|salida[3]~reg0_regout\)))) # (!\inst2|salida[2]~reg0_regout\ & (\inst2|salida[1]~reg0_regout\ $ 
-- (((\inst2|salida[0]~reg0_regout\) # (!\inst2|salida[3]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~3_combout\);

-- Location: LCCOMB_X9_Y1_N20
\inst1|salidaVector~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~4_combout\ = (!\inst2|salida[3]~reg0_regout\ & ((\inst2|salida[2]~reg0_regout\ & (!\inst2|salida[0]~reg0_regout\)) # (!\inst2|salida[2]~reg0_regout\ & ((!\inst2|salida[1]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~4_combout\);

-- Location: LCCOMB_X9_Y1_N26
\inst1|salidaVector~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~5_combout\ = (\inst2|salida[3]~reg0_regout\ & (!\inst2|salida[2]~reg0_regout\ & (\inst2|salida[0]~reg0_regout\ $ (\inst2|salida[1]~reg0_regout\)))) # (!\inst2|salida[3]~reg0_regout\ & ((\inst2|salida[1]~reg0_regout\ & 
-- ((!\inst2|salida[0]~reg0_regout\))) # (!\inst2|salida[1]~reg0_regout\ & (!\inst2|salida[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~5_combout\);

-- Location: LCCOMB_X9_Y1_N0
\inst1|salidaVector~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|salidaVector~6_combout\ = (\inst2|salida[0]~reg0_regout\) # ((\inst2|salida[2]~reg0_regout\ & ((!\inst2|salida[1]~reg0_regout\) # (!\inst2|salida[3]~reg0_regout\))) # (!\inst2|salida[2]~reg0_regout\ & ((\inst2|salida[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida[3]~reg0_regout\,
	datab => \inst2|salida[2]~reg0_regout\,
	datac => \inst2|salida[0]~reg0_regout\,
	datad => \inst2|salida[1]~reg0_regout\,
	combout => \inst1|salidaVector~6_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|ALT_INV_salidaVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|ALT_INV_salidaVector~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|ALT_INV_salidaVector~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|ALT_INV_salidaVector~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|ALT_INV_salidaVector~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|ALT_INV_salidaVector~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_salidaVector~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G);
END structure;


