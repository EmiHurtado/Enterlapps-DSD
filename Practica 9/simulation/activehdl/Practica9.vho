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

-- DATE "06/01/2022 10:58:20"

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

ENTITY 	MaquinaMealy IS
    PORT (
	reset : IN std_logic;
	clk_100MHz : IN std_logic;
	display : OUT std_logic_vector(6 DOWNTO 0);
	led_out : OUT std_logic
	);
END MaquinaMealy;

-- Design Ports Information
-- display[0]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[1]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[2]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[3]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[4]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[5]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[6]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_100MHz	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaMealy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk_100MHz : std_logic;
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_out : std_logic;
SIGNAL \Reloj1|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_100MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj1|Add0~2_combout\ : std_logic;
SIGNAL \Reloj1|Add0~12_combout\ : std_logic;
SIGNAL \Reloj1|Add0~36_combout\ : std_logic;
SIGNAL \Reloj1|Add0~44_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~2_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \pr_state.estado1~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \pr_state.estado1~regout\ : std_logic;
SIGNAL \pr_state.estado2~regout\ : std_logic;
SIGNAL \pr_state.estado3~feeder_combout\ : std_logic;
SIGNAL \pr_state.estado3~regout\ : std_logic;
SIGNAL \pr_state.estado4~feeder_combout\ : std_logic;
SIGNAL \pr_state.estado4~regout\ : std_logic;
SIGNAL \pr_state.estado5~feeder_combout\ : std_logic;
SIGNAL \pr_state.estado5~regout\ : std_logic;
SIGNAL \pr_state.estado6~regout\ : std_logic;
SIGNAL \pr_state.estado7~feeder_combout\ : std_logic;
SIGNAL \pr_state.estado7~regout\ : std_logic;
SIGNAL \pr_state.estado8~feeder_combout\ : std_logic;
SIGNAL \pr_state.estado8~regout\ : std_logic;
SIGNAL \pr_state.estado9~feeder_combout\ : std_logic;
SIGNAL \pr_state.estado9~regout\ : std_logic;
SIGNAL \pr_state.estado0~0_combout\ : std_logic;
SIGNAL \pr_state.estado0~regout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \display~4_combout\ : std_logic;
SIGNAL \display~5_combout\ : std_logic;
SIGNAL \clk_100MHz~combout\ : std_logic;
SIGNAL \clk_100MHz~clkctrl_outclk\ : std_logic;
SIGNAL \Reloj1|Add0~0_combout\ : std_logic;
SIGNAL \Reloj1|Add0~1\ : std_logic;
SIGNAL \Reloj1|Add0~3\ : std_logic;
SIGNAL \Reloj1|Add0~5\ : std_logic;
SIGNAL \Reloj1|Add0~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~7\ : std_logic;
SIGNAL \Reloj1|Add0~9\ : std_logic;
SIGNAL \Reloj1|Add0~10_combout\ : std_logic;
SIGNAL \Reloj1|Add0~11\ : std_logic;
SIGNAL \Reloj1|Add0~13\ : std_logic;
SIGNAL \Reloj1|Add0~14_combout\ : std_logic;
SIGNAL \Reloj1|contador~7_combout\ : std_logic;
SIGNAL \Reloj1|Add0~15\ : std_logic;
SIGNAL \Reloj1|Add0~16_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~5_combout\ : std_logic;
SIGNAL \Reloj1|Add0~8_combout\ : std_logic;
SIGNAL \Reloj1|Add0~4_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~17\ : std_logic;
SIGNAL \Reloj1|Add0~18_combout\ : std_logic;
SIGNAL \Reloj1|contador~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~19\ : std_logic;
SIGNAL \Reloj1|Add0~20_combout\ : std_logic;
SIGNAL \Reloj1|contador~5_combout\ : std_logic;
SIGNAL \Reloj1|Add0~21\ : std_logic;
SIGNAL \Reloj1|Add0~22_combout\ : std_logic;
SIGNAL \Reloj1|Add0~23\ : std_logic;
SIGNAL \Reloj1|Add0~24_combout\ : std_logic;
SIGNAL \Reloj1|contador~4_combout\ : std_logic;
SIGNAL \Reloj1|Add0~25\ : std_logic;
SIGNAL \Reloj1|Add0~26_combout\ : std_logic;
SIGNAL \Reloj1|Add0~27\ : std_logic;
SIGNAL \Reloj1|Add0~28_combout\ : std_logic;
SIGNAL \Reloj1|Add0~29\ : std_logic;
SIGNAL \Reloj1|Add0~30_combout\ : std_logic;
SIGNAL \Reloj1|contador~3_combout\ : std_logic;
SIGNAL \Reloj1|Add0~31\ : std_logic;
SIGNAL \Reloj1|Add0~32_combout\ : std_logic;
SIGNAL \Reloj1|Add0~33\ : std_logic;
SIGNAL \Reloj1|Add0~35\ : std_logic;
SIGNAL \Reloj1|Add0~37\ : std_logic;
SIGNAL \Reloj1|Add0~38_combout\ : std_logic;
SIGNAL \Reloj1|contador~2_combout\ : std_logic;
SIGNAL \Reloj1|Add0~39\ : std_logic;
SIGNAL \Reloj1|Add0~40_combout\ : std_logic;
SIGNAL \Reloj1|contador~1_combout\ : std_logic;
SIGNAL \Reloj1|Add0~34_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~1_combout\ : std_logic;
SIGNAL \Reloj1|Add0~41\ : std_logic;
SIGNAL \Reloj1|Add0~42_combout\ : std_logic;
SIGNAL \Reloj1|Add0~43\ : std_logic;
SIGNAL \Reloj1|Add0~45\ : std_logic;
SIGNAL \Reloj1|Add0~46_combout\ : std_logic;
SIGNAL \Reloj1|contador~0_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~0_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~3_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~4_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~0_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~regout\ : std_logic;
SIGNAL \Reloj1|contador\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \ALT_INV_display~5_combout\ : std_logic;
SIGNAL \ALT_INV_display~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.estado2~regout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk_100MHz <= clk_100MHz;
display <= ww_display;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj1|salida_media~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reloj1|salida_media~regout\);

\clk_100MHz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_100MHz~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\ALT_INV_display~5_combout\ <= NOT \display~5_combout\;
\ALT_INV_display~4_combout\ <= NOT \display~4_combout\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_pr_state.estado2~regout\ <= NOT \pr_state.estado2~regout\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;

-- Location: LCCOMB_X21_Y9_N10
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

-- Location: LCCOMB_X21_Y9_N20
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

-- Location: LCCOMB_X21_Y8_N12
\Reloj1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~36_combout\ = (\Reloj1|contador\(18) & (\Reloj1|Add0~35\ $ (GND))) # (!\Reloj1|contador\(18) & (!\Reloj1|Add0~35\ & VCC))
-- \Reloj1|Add0~37\ = CARRY((\Reloj1|contador\(18) & !\Reloj1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(18),
	datad => VCC,
	cin => \Reloj1|Add0~35\,
	combout => \Reloj1|Add0~36_combout\,
	cout => \Reloj1|Add0~37\);

-- Location: LCCOMB_X21_Y8_N20
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

-- Location: LCFF_X21_Y8_N21
\Reloj1|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(22));

-- Location: LCFF_X21_Y8_N13
\Reloj1|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(18));

-- Location: LCCOMB_X22_Y8_N6
\Reloj1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~2_combout\ = (!\Reloj1|contador\(16) & (!\Reloj1|contador\(14) & (\Reloj1|contador\(15) & !\Reloj1|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(16),
	datab => \Reloj1|contador\(14),
	datac => \Reloj1|contador\(15),
	datad => \Reloj1|contador\(13),
	combout => \Reloj1|Equal0~2_combout\);

-- Location: LCFF_X21_Y9_N21
\Reloj1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(6));

-- Location: LCFF_X21_Y9_N11
\Reloj1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(1));

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X27_Y5_N16
\pr_state.estado1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado1~0_combout\ = !\pr_state.estado0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pr_state.estado0~regout\,
	combout => \pr_state.estado1~0_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X27_Y5_N17
\pr_state.estado1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado1~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado1~regout\);

-- Location: LCFF_X27_Y5_N29
\pr_state.estado2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	sdata => \pr_state.estado1~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado2~regout\);

-- Location: LCCOMB_X27_Y5_N30
\pr_state.estado3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado3~feeder_combout\ = \pr_state.estado2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.estado2~regout\,
	combout => \pr_state.estado3~feeder_combout\);

-- Location: LCFF_X27_Y5_N31
\pr_state.estado3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado3~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado3~regout\);

-- Location: LCCOMB_X27_Y5_N0
\pr_state.estado4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado4~feeder_combout\ = \pr_state.estado3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.estado3~regout\,
	combout => \pr_state.estado4~feeder_combout\);

-- Location: LCFF_X27_Y5_N1
\pr_state.estado4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado4~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado4~regout\);

-- Location: LCCOMB_X27_Y5_N8
\pr_state.estado5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado5~feeder_combout\ = \pr_state.estado4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.estado4~regout\,
	combout => \pr_state.estado5~feeder_combout\);

-- Location: LCFF_X27_Y5_N9
\pr_state.estado5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado5~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado5~regout\);

-- Location: LCFF_X27_Y5_N11
\pr_state.estado6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	sdata => \pr_state.estado5~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado6~regout\);

-- Location: LCCOMB_X27_Y5_N26
\pr_state.estado7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado7~feeder_combout\ = \pr_state.estado6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.estado6~regout\,
	combout => \pr_state.estado7~feeder_combout\);

-- Location: LCFF_X27_Y5_N27
\pr_state.estado7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado7~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado7~regout\);

-- Location: LCCOMB_X27_Y5_N12
\pr_state.estado8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado8~feeder_combout\ = \pr_state.estado7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.estado7~regout\,
	combout => \pr_state.estado8~feeder_combout\);

-- Location: LCFF_X27_Y5_N13
\pr_state.estado8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado8~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado8~regout\);

-- Location: LCCOMB_X27_Y5_N18
\pr_state.estado9~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado9~feeder_combout\ = \pr_state.estado8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.estado8~regout\,
	combout => \pr_state.estado9~feeder_combout\);

-- Location: LCFF_X27_Y5_N19
\pr_state.estado9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado9~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado9~regout\);

-- Location: LCCOMB_X27_Y5_N20
\pr_state.estado0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pr_state.estado0~0_combout\ = !\pr_state.estado9~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr_state.estado9~regout\,
	combout => \pr_state.estado0~0_combout\);

-- Location: LCFF_X27_Y5_N21
\pr_state.estado0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	datain => \pr_state.estado0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pr_state.estado0~regout\);

-- Location: LCCOMB_X27_Y5_N22
WideOr3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ((\pr_state.estado7~regout\) # (\pr_state.estado1~regout\)) # (!\pr_state.estado0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.estado0~regout\,
	datac => \pr_state.estado7~regout\,
	datad => \pr_state.estado1~regout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X27_Y5_N4
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\pr_state.estado7~regout\) # ((\pr_state.estado1~regout\) # ((\pr_state.estado3~regout\) # (\pr_state.estado2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.estado7~regout\,
	datab => \pr_state.estado1~regout\,
	datac => \pr_state.estado3~regout\,
	datad => \pr_state.estado2~regout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y5_N14
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = ((\pr_state.estado6~regout\) # ((\pr_state.estado8~regout\) # (\pr_state.estado2~regout\))) # (!\pr_state.estado0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.estado0~regout\,
	datab => \pr_state.estado6~regout\,
	datac => \pr_state.estado8~regout\,
	datad => \pr_state.estado2~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y5_N6
WideOr0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\pr_state.estado4~regout\) # ((\pr_state.estado7~regout\) # (\pr_state.estado1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.estado4~regout\,
	datac => \pr_state.estado7~regout\,
	datad => \pr_state.estado1~regout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X27_Y5_N2
\display~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \display~4_combout\ = (\pr_state.estado6~regout\) # (\pr_state.estado5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_state.estado6~regout\,
	datad => \pr_state.estado5~regout\,
	combout => \display~4_combout\);

-- Location: LCCOMB_X27_Y5_N24
\display~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \display~5_combout\ = (\pr_state.estado4~regout\) # (\pr_state.estado1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pr_state.estado4~regout\,
	datad => \pr_state.estado1~regout\,
	combout => \display~5_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_100MHz~I\ : cycloneii_io
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
	padio => ww_clk_100MHz,
	combout => \clk_100MHz~combout\);

-- Location: CLKCTRL_G2
\clk_100MHz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_100MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_100MHz~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y9_N8
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

-- Location: LCFF_X21_Y9_N9
\Reloj1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(0));

-- Location: LCCOMB_X21_Y9_N12
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

-- Location: LCCOMB_X21_Y9_N14
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

-- Location: LCFF_X21_Y9_N15
\Reloj1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(3));

-- Location: LCCOMB_X21_Y9_N16
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

-- Location: LCCOMB_X21_Y9_N18
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

-- Location: LCFF_X21_Y9_N19
\Reloj1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(5));

-- Location: LCCOMB_X21_Y9_N22
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

-- Location: LCCOMB_X21_Y9_N4
\Reloj1|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~7_combout\ = (\Reloj1|Add0~14_combout\ & (((!\Reloj1|Equal0~4_combout\) # (!\Reloj1|Equal0~5_combout\)) # (!\Reloj1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~6_combout\,
	datab => \Reloj1|Add0~14_combout\,
	datac => \Reloj1|Equal0~5_combout\,
	datad => \Reloj1|Equal0~4_combout\,
	combout => \Reloj1|contador~7_combout\);

-- Location: LCFF_X21_Y9_N5
\Reloj1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(7));

-- Location: LCCOMB_X21_Y9_N24
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

-- Location: LCFF_X21_Y9_N25
\Reloj1|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(8));

-- Location: LCCOMB_X22_Y9_N16
\Reloj1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~5_combout\ = (\Reloj1|contador\(6) & (\Reloj1|contador\(5) & (!\Reloj1|contador\(7) & !\Reloj1|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(6),
	datab => \Reloj1|contador\(5),
	datac => \Reloj1|contador\(7),
	datad => \Reloj1|contador\(8),
	combout => \Reloj1|Equal0~5_combout\);

-- Location: LCFF_X21_Y9_N17
\Reloj1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(4));

-- Location: LCFF_X21_Y9_N13
\Reloj1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(2));

-- Location: LCCOMB_X21_Y9_N6
\Reloj1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~6_combout\ = (\Reloj1|contador\(1) & (\Reloj1|contador\(3) & (\Reloj1|contador\(4) & \Reloj1|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(1),
	datab => \Reloj1|contador\(3),
	datac => \Reloj1|contador\(4),
	datad => \Reloj1|contador\(2),
	combout => \Reloj1|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y9_N26
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

-- Location: LCCOMB_X21_Y9_N2
\Reloj1|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~6_combout\ = (\Reloj1|Add0~18_combout\ & (((!\Reloj1|Equal0~4_combout\) # (!\Reloj1|Equal0~5_combout\)) # (!\Reloj1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~6_combout\,
	datab => \Reloj1|Add0~18_combout\,
	datac => \Reloj1|Equal0~5_combout\,
	datad => \Reloj1|Equal0~4_combout\,
	combout => \Reloj1|contador~6_combout\);

-- Location: LCFF_X21_Y9_N3
\Reloj1|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(9));

-- Location: LCCOMB_X21_Y9_N28
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

-- Location: LCCOMB_X21_Y9_N0
\Reloj1|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~5_combout\ = (\Reloj1|Add0~20_combout\ & (((!\Reloj1|Equal0~4_combout\) # (!\Reloj1|Equal0~5_combout\)) # (!\Reloj1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~6_combout\,
	datab => \Reloj1|Add0~20_combout\,
	datac => \Reloj1|Equal0~5_combout\,
	datad => \Reloj1|Equal0~4_combout\,
	combout => \Reloj1|contador~5_combout\);

-- Location: LCFF_X21_Y9_N1
\Reloj1|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(10));

-- Location: LCCOMB_X21_Y9_N30
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

-- Location: LCFF_X21_Y9_N31
\Reloj1|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(11));

-- Location: LCCOMB_X21_Y8_N0
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

-- Location: LCCOMB_X22_Y8_N10
\Reloj1|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~4_combout\ = (\Reloj1|Add0~24_combout\ & (((!\Reloj1|Equal0~6_combout\) # (!\Reloj1|Equal0~4_combout\)) # (!\Reloj1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~5_combout\,
	datab => \Reloj1|Equal0~4_combout\,
	datac => \Reloj1|Add0~24_combout\,
	datad => \Reloj1|Equal0~6_combout\,
	combout => \Reloj1|contador~4_combout\);

-- Location: LCFF_X22_Y8_N11
\Reloj1|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(12));

-- Location: LCCOMB_X21_Y8_N2
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

-- Location: LCFF_X21_Y8_N3
\Reloj1|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(13));

-- Location: LCCOMB_X21_Y8_N4
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

-- Location: LCFF_X21_Y8_N5
\Reloj1|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(14));

-- Location: LCCOMB_X21_Y8_N6
\Reloj1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~30_combout\ = (\Reloj1|contador\(15) & (!\Reloj1|Add0~29\)) # (!\Reloj1|contador\(15) & ((\Reloj1|Add0~29\) # (GND)))
-- \Reloj1|Add0~31\ = CARRY((!\Reloj1|Add0~29\) # (!\Reloj1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(15),
	datad => VCC,
	cin => \Reloj1|Add0~29\,
	combout => \Reloj1|Add0~30_combout\,
	cout => \Reloj1|Add0~31\);

-- Location: LCCOMB_X21_Y8_N26
\Reloj1|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~3_combout\ = (\Reloj1|Add0~30_combout\ & (((!\Reloj1|Equal0~5_combout\) # (!\Reloj1|Equal0~6_combout\)) # (!\Reloj1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~4_combout\,
	datab => \Reloj1|Equal0~6_combout\,
	datac => \Reloj1|Equal0~5_combout\,
	datad => \Reloj1|Add0~30_combout\,
	combout => \Reloj1|contador~3_combout\);

-- Location: LCFF_X21_Y8_N27
\Reloj1|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(15));

-- Location: LCCOMB_X21_Y8_N8
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

-- Location: LCFF_X21_Y8_N9
\Reloj1|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(16));

-- Location: LCCOMB_X21_Y8_N10
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

-- Location: LCCOMB_X21_Y8_N14
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

-- Location: LCCOMB_X21_Y8_N28
\Reloj1|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~2_combout\ = (\Reloj1|Add0~38_combout\ & (((!\Reloj1|Equal0~6_combout\) # (!\Reloj1|Equal0~5_combout\)) # (!\Reloj1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~4_combout\,
	datab => \Reloj1|Equal0~5_combout\,
	datac => \Reloj1|Add0~38_combout\,
	datad => \Reloj1|Equal0~6_combout\,
	combout => \Reloj1|contador~2_combout\);

-- Location: LCFF_X21_Y8_N29
\Reloj1|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(19));

-- Location: LCCOMB_X21_Y8_N16
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

-- Location: LCCOMB_X21_Y8_N30
\Reloj1|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~1_combout\ = (\Reloj1|Add0~40_combout\ & (((!\Reloj1|Equal0~6_combout\) # (!\Reloj1|Equal0~5_combout\)) # (!\Reloj1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~4_combout\,
	datab => \Reloj1|Equal0~5_combout\,
	datac => \Reloj1|Add0~40_combout\,
	datad => \Reloj1|Equal0~6_combout\,
	combout => \Reloj1|contador~1_combout\);

-- Location: LCFF_X21_Y8_N31
\Reloj1|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(20));

-- Location: LCFF_X21_Y8_N11
\Reloj1|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(17));

-- Location: LCCOMB_X22_Y8_N22
\Reloj1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~1_combout\ = (!\Reloj1|contador\(18) & (\Reloj1|contador\(19) & (\Reloj1|contador\(20) & !\Reloj1|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(18),
	datab => \Reloj1|contador\(19),
	datac => \Reloj1|contador\(20),
	datad => \Reloj1|contador\(17),
	combout => \Reloj1|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y8_N18
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

-- Location: LCFF_X21_Y8_N19
\Reloj1|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(21));

-- Location: LCCOMB_X21_Y8_N22
\Reloj1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~46_combout\ = \Reloj1|contador\(23) $ (\Reloj1|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(23),
	cin => \Reloj1|Add0~45\,
	combout => \Reloj1|Add0~46_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Reloj1|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|contador~0_combout\ = (\Reloj1|Add0~46_combout\ & (((!\Reloj1|Equal0~5_combout\) # (!\Reloj1|Equal0~6_combout\)) # (!\Reloj1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~4_combout\,
	datab => \Reloj1|Equal0~6_combout\,
	datac => \Reloj1|Equal0~5_combout\,
	datad => \Reloj1|Add0~46_combout\,
	combout => \Reloj1|contador~0_combout\);

-- Location: LCFF_X21_Y8_N25
\Reloj1|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|contador\(23));

-- Location: LCCOMB_X22_Y8_N8
\Reloj1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~0_combout\ = (!\Reloj1|contador\(22) & (\Reloj1|contador\(23) & (!\Reloj1|contador\(21) & \Reloj1|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(22),
	datab => \Reloj1|contador\(23),
	datac => \Reloj1|contador\(21),
	datad => \Reloj1|contador\(0),
	combout => \Reloj1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y8_N2
\Reloj1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~3_combout\ = (\Reloj1|contador\(12) & (\Reloj1|contador\(10) & (!\Reloj1|contador\(11) & \Reloj1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(12),
	datab => \Reloj1|contador\(10),
	datac => \Reloj1|contador\(11),
	datad => \Reloj1|contador\(9),
	combout => \Reloj1|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y8_N4
\Reloj1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~4_combout\ = (\Reloj1|Equal0~2_combout\ & (\Reloj1|Equal0~1_combout\ & (\Reloj1|Equal0~0_combout\ & \Reloj1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~2_combout\,
	datab => \Reloj1|Equal0~1_combout\,
	datac => \Reloj1|Equal0~0_combout\,
	datad => \Reloj1|Equal0~3_combout\,
	combout => \Reloj1|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y8_N16
\Reloj1|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj1|salida_media~0_combout\ = \Reloj1|salida_media~regout\ $ (((\Reloj1|Equal0~5_combout\ & (\Reloj1|Equal0~4_combout\ & \Reloj1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~5_combout\,
	datab => \Reloj1|Equal0~4_combout\,
	datac => \Reloj1|salida_media~regout\,
	datad => \Reloj1|Equal0~6_combout\,
	combout => \Reloj1|salida_media~0_combout\);

-- Location: LCFF_X22_Y8_N17
\Reloj1|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100MHz~clkctrl_outclk\,
	datain => \Reloj1|salida_media~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj1|salida_media~regout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(0));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(1));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[2]~I\ : cycloneii_io
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
	datain => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(2));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(3));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_pr_state.estado2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(4));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_display~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_display~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(6));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out~I\ : cycloneii_io
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
	datain => \Reloj1|salida_media~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out);
END structure;


