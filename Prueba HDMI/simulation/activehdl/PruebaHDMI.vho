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

-- DATE "05/05/2022 10:05:35"

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

ENTITY 	PruebaHDMI IS
    PORT (
	CLK25MHz : OUT std_logic;
	CLK : IN std_logic;
	data2Red : OUT std_logic;
	BTN : IN std_logic;
	data1Green : OUT std_logic;
	data0Blue : OUT std_logic;
	NOT_CLK25MH : OUT std_logic;
	NOT_data2Red : OUT std_logic;
	NOT_data1Green : OUT std_logic;
	NOT_data0Blue : OUT std_logic
	);
END PruebaHDMI;

-- Design Ports Information
-- CLK25MHz	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data2Red	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data1Green	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data0Blue	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NOT_CLK25MH	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NOT_data2Red	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NOT_data1Green	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NOT_data0Blue	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BTN	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PruebaHDMI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK25MHz : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_data2Red : std_logic;
SIGNAL ww_BTN : std_logic;
SIGNAL ww_data1Green : std_logic;
SIGNAL ww_data0Blue : std_logic;
SIGNAL ww_NOT_CLK25MH : std_logic;
SIGNAL ww_NOT_data2Red : std_logic;
SIGNAL ww_NOT_data1Green : std_logic;
SIGNAL ww_NOT_data0Blue : std_logic;
SIGNAL \inst|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \inst|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \BTN~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \inst|altpll_component|_clk0\ : std_logic;
SIGNAL \inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|contadorColor[1]~0_combout\ : std_logic;
SIGNAL \inst2|d0Blue~0_combout\ : std_logic;
SIGNAL \inst2|d2Red~0_combout\ : std_logic;
SIGNAL \inst2|redData2~feeder_combout\ : std_logic;
SIGNAL \inst2|redData2~regout\ : std_logic;
SIGNAL \inst2|greenData1~feeder_combout\ : std_logic;
SIGNAL \inst2|greenData1~regout\ : std_logic;
SIGNAL \inst2|blueData0~feeder_combout\ : std_logic;
SIGNAL \inst2|blueData0~regout\ : std_logic;
SIGNAL \inst2|d2Red\ : std_logic_vector(0 TO 9);
SIGNAL \inst2|contadorColor\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|ALT_INV_blueData0~regout\ : std_logic;
SIGNAL \inst2|ALT_INV_greenData1~regout\ : std_logic;
SIGNAL \inst2|ALT_INV_redData2~regout\ : std_logic;

BEGIN

CLK25MHz <= ww_CLK25MHz;
ww_CLK <= CLK;
data2Red <= ww_data2Red;
ww_BTN <= BTN;
data1Green <= ww_data1Green;
data0Blue <= ww_data0Blue;
NOT_CLK25MH <= ww_NOT_CLK25MH;
NOT_data2Red <= ww_NOT_data2Red;
NOT_data1Green <= ww_NOT_data1Green;
NOT_data0Blue <= ww_NOT_data0Blue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|pll_INCLK_bus\ <= (gnd & \CLK~combout\);

\inst|altpll_component|_clk0\ <= \inst|altpll_component|pll_CLK_bus\(0);
\inst|altpll_component|pll~CLK1\ <= \inst|altpll_component|pll_CLK_bus\(1);
\inst|altpll_component|pll~CLK2\ <= \inst|altpll_component|pll_CLK_bus\(2);

\inst|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|altpll_component|_clk0\);
\inst2|ALT_INV_blueData0~regout\ <= NOT \inst2|blueData0~regout\;
\inst2|ALT_INV_greenData1~regout\ <= NOT \inst2|greenData1~regout\;
\inst2|ALT_INV_redData2~regout\ <= NOT \inst2|redData2~regout\;

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN~I\ : cycloneii_io
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
	padio => ww_BTN,
	combout => \BTN~combout\);

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

-- Location: PLL_1
\inst|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "odd",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 5,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 15,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 6014,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|pll_INCLK_bus\,
	clk => \inst|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\inst|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y12_N28
\inst2|contadorColor[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|contadorColor[1]~0_combout\ = \inst2|contadorColor\(1) $ (\inst2|contadorColor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contadorColor\(1),
	datad => \inst2|contadorColor\(0),
	combout => \inst2|contadorColor[1]~0_combout\);

-- Location: LCFF_X2_Y12_N29
\inst2|contadorColor[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \BTN~combout\,
	datain => \inst2|contadorColor[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contadorColor\(1));

-- Location: LCCOMB_X2_Y12_N22
\inst2|d0Blue~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|d0Blue~0_combout\ = (!\inst2|contadorColor\(0) & !\inst2|contadorColor\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contadorColor\(0),
	datad => \inst2|contadorColor\(1),
	combout => \inst2|d0Blue~0_combout\);

-- Location: LCFF_X2_Y12_N23
\inst2|contadorColor[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \BTN~combout\,
	datain => \inst2|d0Blue~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|contadorColor\(0));

-- Location: LCCOMB_X2_Y12_N30
\inst2|d2Red~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|d2Red~0_combout\ = (\inst2|contadorColor\(1) & ((\inst2|contadorColor\(0)) # (\inst2|d2Red\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contadorColor\(0),
	datac => \inst2|d2Red\(9),
	datad => \inst2|contadorColor\(1),
	combout => \inst2|d2Red~0_combout\);

-- Location: LCFF_X2_Y12_N31
\inst2|d2Red[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \BTN~combout\,
	datain => \inst2|d2Red~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|d2Red\(9));

-- Location: LCCOMB_X2_Y12_N20
\inst2|redData2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|redData2~feeder_combout\ = \inst2|d2Red\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|d2Red\(9),
	combout => \inst2|redData2~feeder_combout\);

-- Location: LCFF_X2_Y12_N21
\inst2|redData2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|redData2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|redData2~regout\);

-- Location: LCCOMB_X2_Y12_N26
\inst2|greenData1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|greenData1~feeder_combout\ = \inst2|contadorColor\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|contadorColor\(1),
	combout => \inst2|greenData1~feeder_combout\);

-- Location: LCFF_X2_Y12_N27
\inst2|greenData1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|greenData1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|greenData1~regout\);

-- Location: LCCOMB_X2_Y12_N16
\inst2|blueData0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|blueData0~feeder_combout\ = \inst2|contadorColor\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|contadorColor\(0),
	combout => \inst2|blueData0~feeder_combout\);

-- Location: LCFF_X2_Y12_N17
\inst2|blueData0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|blueData0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|blueData0~regout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CLK25MHz~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK25MHz);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data2Red~I\ : cycloneii_io
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
	datain => \inst2|redData2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data2Red);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data1Green~I\ : cycloneii_io
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
	datain => \inst2|greenData1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data1Green);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data0Blue~I\ : cycloneii_io
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
	datain => \inst2|blueData0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data0Blue);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NOT_CLK25MH~I\ : cycloneii_io
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
	padio => ww_NOT_CLK25MH);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NOT_data2Red~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_redData2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NOT_data2Red);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NOT_data1Green~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_greenData1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NOT_data1Green);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NOT_data0Blue~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_blueData0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NOT_data0Blue);
END structure;


