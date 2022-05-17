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

-- DATE "05/16/2022 18:15:14"

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

ENTITY 	Registros IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	CARGA : IN std_logic;
	OPCIONES : IN std_logic_vector(2 DOWNTO 0);
	ENTRADA : IN std_logic_vector(7 DOWNTO 0);
	SALIDA : OUT std_logic_vector(7 DOWNTO 0);
	LEDS : OUT std_logic_vector(2 DOWNTO 0)
	);
END Registros;

-- Design Ports Information
-- SALIDA[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SALIDA[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SALIDA[2]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SALIDA[3]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SALIDA[4]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SALIDA[5]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SALIDA[6]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SALIDA[7]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[0]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[2]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OPCIONES[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPCIONES[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPCIONES[0]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[7]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CARGA	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[0]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[1]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[2]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[3]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[4]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[5]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRADA[6]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Registros IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CARGA : std_logic;
SIGNAL ww_OPCIONES : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ENTRADA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SALIDA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDS : std_logic_vector(2 DOWNTO 0);
SIGNAL \Reloj|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj|Add0~6_combout\ : std_logic;
SIGNAL \Reloj|Add0~18_combout\ : std_logic;
SIGNAL \Reloj|Add0~38_combout\ : std_logic;
SIGNAL \Reloj|Add0~49\ : std_logic;
SIGNAL \Reloj|Add0~50_combout\ : std_logic;
SIGNAL \Reloj|Equal0~1_combout\ : std_logic;
SIGNAL \Reloj|Equal0~5_combout\ : std_logic;
SIGNAL \Reloj|contador~0_combout\ : std_logic;
SIGNAL \Reloj|contador~5_combout\ : std_logic;
SIGNAL \Mux|Mux7~3_combout\ : std_logic;
SIGNAL \Reloj|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \CARGA~combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \Reg3|REGISTRO~7_combout\ : std_logic;
SIGNAL \Reg3|contador[1]~3_combout\ : std_logic;
SIGNAL \Reg3|contador[3]~1_combout\ : std_logic;
SIGNAL \Reg3|contador[2]~2_combout\ : std_logic;
SIGNAL \Reg3|contador~0_combout\ : std_logic;
SIGNAL \Reg3|contador~4_combout\ : std_logic;
SIGNAL \Reg3|Equal0~0_combout\ : std_logic;
SIGNAL \Reg3|REGISTRO[4]~1_combout\ : std_logic;
SIGNAL \Reg3|REGISTRO~6_combout\ : std_logic;
SIGNAL \Reg3|REGISTRO~5_combout\ : std_logic;
SIGNAL \Reg3|REGISTRO~4_combout\ : std_logic;
SIGNAL \Reg3|REGISTRO~3_combout\ : std_logic;
SIGNAL \Reg3|REGISTRO~2_combout\ : std_logic;
SIGNAL \Reg3|REGISTRO~0_combout\ : std_logic;
SIGNAL \Mux|Mux7~0_combout\ : std_logic;
SIGNAL \Reg6|REGISTRO~0_combout\ : std_logic;
SIGNAL \Reg6|REGISTRO[5]~feeder_combout\ : std_logic;
SIGNAL \Reg6|REGISTRO[3]~feeder_combout\ : std_logic;
SIGNAL \Reg6|REGISTRO[2]~feeder_combout\ : std_logic;
SIGNAL \Reg6|REGISTRO[1]~feeder_combout\ : std_logic;
SIGNAL \Reg6|REGISTRO[0]~feeder_combout\ : std_logic;
SIGNAL \Mux|Mux7~4_combout\ : std_logic;
SIGNAL \Reg4|REGISTRO[5]~feeder_combout\ : std_logic;
SIGNAL \Reg4|REGISTRO[4]~feeder_combout\ : std_logic;
SIGNAL \Reg4|REGISTRO[3]~feeder_combout\ : std_logic;
SIGNAL \Mux|Mux7~1_combout\ : std_logic;
SIGNAL \Mux|Mux7~2_combout\ : std_logic;
SIGNAL \Mux|Mux6~0_combout\ : std_logic;
SIGNAL \Mux|Mux6~1_combout\ : std_logic;
SIGNAL \Mux|Mux5~0_combout\ : std_logic;
SIGNAL \Mux|Mux4~0_combout\ : std_logic;
SIGNAL \Mux|Mux3~0_combout\ : std_logic;
SIGNAL \Mux|Mux2~0_combout\ : std_logic;
SIGNAL \Mux|Mux1~0_combout\ : std_logic;
SIGNAL \Mux|Mux0~0_combout\ : std_logic;
SIGNAL \Reg7|REGISTRO~0_combout\ : std_logic;
SIGNAL \Reg7|REGISTRO[1]~feeder_combout\ : std_logic;
SIGNAL \Reg7|REGISTRO[2]~feeder_combout\ : std_logic;
SIGNAL \Reg7|REGISTRO[3]~feeder_combout\ : std_logic;
SIGNAL \Mux|Mux0~1_combout\ : std_logic;
SIGNAL \Mux|Mux0~2_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \Reloj|Add0~1\ : std_logic;
SIGNAL \Reloj|Add0~2_combout\ : std_logic;
SIGNAL \Reloj|Add0~3\ : std_logic;
SIGNAL \Reloj|Add0~5\ : std_logic;
SIGNAL \Reloj|Add0~7\ : std_logic;
SIGNAL \Reloj|Add0~8_combout\ : std_logic;
SIGNAL \Reloj|Add0~9\ : std_logic;
SIGNAL \Reloj|Add0~11\ : std_logic;
SIGNAL \Reloj|Add0~12_combout\ : std_logic;
SIGNAL \Reloj|Add0~13\ : std_logic;
SIGNAL \Reloj|Add0~14_combout\ : std_logic;
SIGNAL \Reloj|contador~11_combout\ : std_logic;
SIGNAL \Reloj|Add0~15\ : std_logic;
SIGNAL \Reloj|Add0~16_combout\ : std_logic;
SIGNAL \Reloj|Add0~17\ : std_logic;
SIGNAL \Reloj|Add0~19\ : std_logic;
SIGNAL \Reloj|Add0~20_combout\ : std_logic;
SIGNAL \Reloj|Add0~21\ : std_logic;
SIGNAL \Reloj|Add0~22_combout\ : std_logic;
SIGNAL \Reloj|Add0~23\ : std_logic;
SIGNAL \Reloj|Add0~24_combout\ : std_logic;
SIGNAL \Reloj|contador~10_combout\ : std_logic;
SIGNAL \Reloj|Add0~25\ : std_logic;
SIGNAL \Reloj|Add0~27\ : std_logic;
SIGNAL \Reloj|Add0~29\ : std_logic;
SIGNAL \Reloj|Add0~30_combout\ : std_logic;
SIGNAL \Reloj|contador~7_combout\ : std_logic;
SIGNAL \Reloj|Add0~31\ : std_logic;
SIGNAL \Reloj|Add0~33\ : std_logic;
SIGNAL \Reloj|Add0~34_combout\ : std_logic;
SIGNAL \Reloj|contador~6_combout\ : std_logic;
SIGNAL \Reloj|Add0~35\ : std_logic;
SIGNAL \Reloj|Add0~36_combout\ : std_logic;
SIGNAL \Reloj|Add0~32_combout\ : std_logic;
SIGNAL \Reloj|Equal0~2_combout\ : std_logic;
SIGNAL \Reloj|Add0~28_combout\ : std_logic;
SIGNAL \Reloj|contador~8_combout\ : std_logic;
SIGNAL \Reloj|Add0~26_combout\ : std_logic;
SIGNAL \Reloj|contador~9_combout\ : std_logic;
SIGNAL \Reloj|Equal0~3_combout\ : std_logic;
SIGNAL \Reloj|Add0~37\ : std_logic;
SIGNAL \Reloj|Add0~39\ : std_logic;
SIGNAL \Reloj|Add0~40_combout\ : std_logic;
SIGNAL \Reloj|contador~4_combout\ : std_logic;
SIGNAL \Reloj|Add0~41\ : std_logic;
SIGNAL \Reloj|Add0~42_combout\ : std_logic;
SIGNAL \Reloj|contador~3_combout\ : std_logic;
SIGNAL \Reloj|Add0~43\ : std_logic;
SIGNAL \Reloj|Add0~44_combout\ : std_logic;
SIGNAL \Reloj|contador~2_combout\ : std_logic;
SIGNAL \Reloj|Add0~45\ : std_logic;
SIGNAL \Reloj|Add0~46_combout\ : std_logic;
SIGNAL \Reloj|contador~1_combout\ : std_logic;
SIGNAL \Reloj|Add0~47\ : std_logic;
SIGNAL \Reloj|Add0~48_combout\ : std_logic;
SIGNAL \Reloj|Add0~0_combout\ : std_logic;
SIGNAL \Reloj|Equal0~0_combout\ : std_logic;
SIGNAL \Reloj|Equal0~4_combout\ : std_logic;
SIGNAL \Reloj|Add0~4_combout\ : std_logic;
SIGNAL \Reloj|Equal0~7_combout\ : std_logic;
SIGNAL \Reloj|Add0~10_combout\ : std_logic;
SIGNAL \Reloj|Equal0~6_combout\ : std_logic;
SIGNAL \Reloj|Equal0~8_combout\ : std_logic;
SIGNAL \Reloj|salida_media~0_combout\ : std_logic;
SIGNAL \Reloj|salida_media~regout\ : std_logic;
SIGNAL \Reloj|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Reg2|REGISTRO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg3|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reg3|REGISTRO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg4|REGISTRO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg5|REGISTRO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg6|REGISTRO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg7|REGISTRO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OPCIONES~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ENTRADA~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reloj|ALT_INV_salida_media~regout\ : std_logic;
SIGNAL \ALT_INV_RESET~combout\ : std_logic;
SIGNAL \ALT_INV_CARGA~combout\ : std_logic;
SIGNAL \ALT_INV_ENTRADA~combout\ : std_logic_vector(7 DOWNTO 7);

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_CARGA <= CARGA;
ww_OPCIONES <= OPCIONES;
ww_ENTRADA <= ENTRADA;
SALIDA <= ww_SALIDA;
LEDS <= ww_LEDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj|salida_media~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reloj|salida_media~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\Reloj|ALT_INV_salida_media~regout\ <= NOT \Reloj|salida_media~regout\;
\ALT_INV_RESET~combout\ <= NOT \RESET~combout\;
\ALT_INV_CARGA~combout\ <= NOT \CARGA~combout\;
\ALT_INV_ENTRADA~combout\(7) <= NOT \ENTRADA~combout\(7);

-- Location: LCCOMB_X15_Y13_N12
\Reloj|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~6_combout\ = (\Reloj|contador\(3) & (!\Reloj|Add0~5\)) # (!\Reloj|contador\(3) & ((\Reloj|Add0~5\) # (GND)))
-- \Reloj|Add0~7\ = CARRY((!\Reloj|Add0~5\) # (!\Reloj|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(3),
	datad => VCC,
	cin => \Reloj|Add0~5\,
	combout => \Reloj|Add0~6_combout\,
	cout => \Reloj|Add0~7\);

-- Location: LCCOMB_X15_Y13_N24
\Reloj|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~18_combout\ = (\Reloj|contador\(9) & (!\Reloj|Add0~17\)) # (!\Reloj|contador\(9) & ((\Reloj|Add0~17\) # (GND)))
-- \Reloj|Add0~19\ = CARRY((!\Reloj|Add0~17\) # (!\Reloj|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(9),
	datad => VCC,
	cin => \Reloj|Add0~17\,
	combout => \Reloj|Add0~18_combout\,
	cout => \Reloj|Add0~19\);

-- Location: LCCOMB_X15_Y12_N12
\Reloj|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~38_combout\ = (\Reloj|contador\(19) & (!\Reloj|Add0~37\)) # (!\Reloj|contador\(19) & ((\Reloj|Add0~37\) # (GND)))
-- \Reloj|Add0~39\ = CARRY((!\Reloj|Add0~37\) # (!\Reloj|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(19),
	datad => VCC,
	cin => \Reloj|Add0~37\,
	combout => \Reloj|Add0~38_combout\,
	cout => \Reloj|Add0~39\);

-- Location: LCCOMB_X15_Y12_N22
\Reloj|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~48_combout\ = (\Reloj|contador\(24) & (\Reloj|Add0~47\ $ (GND))) # (!\Reloj|contador\(24) & (!\Reloj|Add0~47\ & VCC))
-- \Reloj|Add0~49\ = CARRY((\Reloj|contador\(24) & !\Reloj|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(24),
	datad => VCC,
	cin => \Reloj|Add0~47\,
	combout => \Reloj|Add0~48_combout\,
	cout => \Reloj|Add0~49\);

-- Location: LCCOMB_X15_Y12_N24
\Reloj|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~50_combout\ = \Reloj|Add0~49\ $ (\Reloj|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Reloj|contador\(25),
	cin => \Reloj|Add0~49\,
	combout => \Reloj|Add0~50_combout\);

-- Location: LCFF_X8_Y12_N7
\Reg5|REGISTRO[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(0),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(0));

-- Location: LCFF_X15_Y12_N27
\Reloj|contador[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~0_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(25));

-- Location: LCFF_X14_Y12_N13
\Reloj|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~5_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(19));

-- Location: LCCOMB_X14_Y12_N10
\Reloj|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~1_combout\ = (\Reloj|contador\(19) & (\Reloj|contador\(22) & (\Reloj|contador\(20) & \Reloj|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(19),
	datab => \Reloj|contador\(22),
	datac => \Reloj|contador\(20),
	datad => \Reloj|contador\(21),
	combout => \Reloj|Equal0~1_combout\);

-- Location: LCFF_X15_Y13_N25
\Reloj|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~18_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(9));

-- Location: LCCOMB_X15_Y13_N0
\Reloj|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~5_combout\ = (!\Reloj|contador\(7) & (!\Reloj|contador\(10) & (!\Reloj|contador\(9) & !\Reloj|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(7),
	datab => \Reloj|contador\(10),
	datac => \Reloj|contador\(9),
	datad => \Reloj|contador\(8),
	combout => \Reloj|Equal0~5_combout\);

-- Location: LCFF_X15_Y13_N13
\Reloj|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~6_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(3));

-- Location: LCCOMB_X15_Y12_N26
\Reloj|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~0_combout\ = (\Reloj|Add0~50_combout\ & !\Reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|Add0~50_combout\,
	datad => \Reloj|Equal0~8_combout\,
	combout => \Reloj|contador~0_combout\);

-- Location: LCCOMB_X14_Y12_N12
\Reloj|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~5_combout\ = (\Reloj|Add0~38_combout\ & !\Reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|Add0~38_combout\,
	datad => \Reloj|Equal0~8_combout\,
	combout => \Reloj|contador~5_combout\);

-- Location: LCCOMB_X8_Y12_N6
\Mux|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux7~3_combout\ = (\OPCIONES~combout\(2) & (((\Reg5|REGISTRO\(0)) # (\OPCIONES~combout\(0))))) # (!\OPCIONES~combout\(2) & (\Reg2|REGISTRO\(7) & ((!\OPCIONES~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \Reg2|REGISTRO\(7),
	datac => \Reg5|REGISTRO\(0),
	datad => \OPCIONES~combout\(0),
	combout => \Mux|Mux7~3_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[0]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(0),
	combout => \ENTRADA~combout\(0));

-- Location: CLKCTRL_G3
\Reloj|salida_media~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj|salida_media~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj|salida_media~clkctrl_outclk\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CARGA~I\ : cycloneii_io
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
	padio => ww_CARGA,
	combout => \CARGA~combout\);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[2]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(2),
	combout => \ENTRADA~combout\(2));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[5]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(5),
	combout => \ENTRADA~combout\(5));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[7]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(7),
	combout => \ENTRADA~combout\(7));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
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
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: LCFF_X8_Y12_N3
\Reg5|REGISTRO[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(7),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(7));

-- Location: LCCOMB_X10_Y12_N6
\Reg3|REGISTRO~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO~7_combout\ = (\CARGA~combout\ & (\ENTRADA~combout\(6))) # (!\CARGA~combout\ & ((\Reg5|REGISTRO\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA~combout\(6),
	datac => \Reg5|REGISTRO\(7),
	datad => \CARGA~combout\,
	combout => \Reg3|REGISTRO~7_combout\);

-- Location: LCCOMB_X9_Y12_N14
\Reg3|contador[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|contador[1]~3_combout\ = \Reg3|contador\(1) $ (((\Reg3|contador\(0) & (\RESET~combout\ & !\CARGA~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3|contador\(0),
	datab => \RESET~combout\,
	datac => \Reg3|contador\(1),
	datad => \CARGA~combout\,
	combout => \Reg3|contador[1]~3_combout\);

-- Location: LCFF_X9_Y12_N15
\Reg3|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|contador[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|contador\(1));

-- Location: LCCOMB_X9_Y12_N8
\Reg3|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|contador[3]~1_combout\ = (\RESET~combout\ & !\CARGA~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~combout\,
	datad => \CARGA~combout\,
	combout => \Reg3|contador[3]~1_combout\);

-- Location: LCCOMB_X9_Y12_N20
\Reg3|contador[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|contador[2]~2_combout\ = \Reg3|contador\(2) $ (((\Reg3|contador\(0) & (\Reg3|contador\(1) & \Reg3|contador[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3|contador\(0),
	datab => \Reg3|contador\(1),
	datac => \Reg3|contador\(2),
	datad => \Reg3|contador[3]~1_combout\,
	combout => \Reg3|contador[2]~2_combout\);

-- Location: LCFF_X9_Y12_N21
\Reg3|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|contador[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|contador\(2));

-- Location: LCCOMB_X9_Y12_N30
\Reg3|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|contador~0_combout\ = (\Reg3|contador\(0) & (\Reg3|contador\(3) $ (((\Reg3|contador\(1) & \Reg3|contador\(2)))))) # (!\Reg3|contador\(0) & (\Reg3|contador\(3) & ((\Reg3|contador\(1)) # (\Reg3|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3|contador\(0),
	datab => \Reg3|contador\(1),
	datac => \Reg3|contador\(3),
	datad => \Reg3|contador\(2),
	combout => \Reg3|contador~0_combout\);

-- Location: LCFF_X9_Y12_N31
\Reg3|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|contador~0_combout\,
	ena => \Reg3|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|contador\(3));

-- Location: LCCOMB_X9_Y12_N0
\Reg3|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|contador~4_combout\ = (!\Reg3|contador\(0) & ((\Reg3|contador\(2)) # ((\Reg3|contador\(1)) # (!\Reg3|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3|contador\(2),
	datab => \Reg3|contador\(1),
	datac => \Reg3|contador\(0),
	datad => \Reg3|contador\(3),
	combout => \Reg3|contador~4_combout\);

-- Location: LCFF_X9_Y12_N1
\Reg3|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|contador~4_combout\,
	ena => \Reg3|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|contador\(0));

-- Location: LCCOMB_X9_Y12_N26
\Reg3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|Equal0~0_combout\ = (!\Reg3|contador\(2) & (\Reg3|contador\(3) & (!\Reg3|contador\(1) & !\Reg3|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3|contador\(2),
	datab => \Reg3|contador\(3),
	datac => \Reg3|contador\(1),
	datad => \Reg3|contador\(0),
	combout => \Reg3|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y12_N24
\Reg3|REGISTRO[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO[4]~1_combout\ = (\CARGA~combout\) # (!\Reg3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CARGA~combout\,
	datad => \Reg3|Equal0~0_combout\,
	combout => \Reg3|REGISTRO[4]~1_combout\);

-- Location: LCFF_X10_Y12_N7
\Reg3|REGISTRO[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|REGISTRO~7_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|REGISTRO\(6));

-- Location: LCCOMB_X10_Y12_N0
\Reg3|REGISTRO~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO~6_combout\ = (\CARGA~combout\ & (\ENTRADA~combout\(5))) # (!\CARGA~combout\ & ((\Reg3|REGISTRO\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CARGA~combout\,
	datac => \ENTRADA~combout\(5),
	datad => \Reg3|REGISTRO\(6),
	combout => \Reg3|REGISTRO~6_combout\);

-- Location: LCFF_X10_Y12_N1
\Reg3|REGISTRO[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|REGISTRO~6_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|REGISTRO\(5));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[4]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(4),
	combout => \ENTRADA~combout\(4));

-- Location: LCCOMB_X10_Y12_N14
\Reg3|REGISTRO~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO~5_combout\ = (\CARGA~combout\ & ((\ENTRADA~combout\(4)))) # (!\CARGA~combout\ & (\Reg3|REGISTRO\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg3|REGISTRO\(5),
	datac => \ENTRADA~combout\(4),
	datad => \CARGA~combout\,
	combout => \Reg3|REGISTRO~5_combout\);

-- Location: LCFF_X10_Y12_N15
\Reg3|REGISTRO[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|REGISTRO~5_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|REGISTRO\(4));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[3]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(3),
	combout => \ENTRADA~combout\(3));

-- Location: LCCOMB_X10_Y12_N4
\Reg3|REGISTRO~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO~4_combout\ = (\CARGA~combout\ & ((\ENTRADA~combout\(3)))) # (!\CARGA~combout\ & (\Reg3|REGISTRO\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg3|REGISTRO\(4),
	datac => \ENTRADA~combout\(3),
	datad => \CARGA~combout\,
	combout => \Reg3|REGISTRO~4_combout\);

-- Location: LCFF_X10_Y12_N5
\Reg3|REGISTRO[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|REGISTRO~4_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|REGISTRO\(3));

-- Location: LCCOMB_X10_Y12_N26
\Reg3|REGISTRO~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO~3_combout\ = (\CARGA~combout\ & (\ENTRADA~combout\(2))) # (!\CARGA~combout\ & ((\Reg3|REGISTRO\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENTRADA~combout\(2),
	datac => \Reg3|REGISTRO\(3),
	datad => \CARGA~combout\,
	combout => \Reg3|REGISTRO~3_combout\);

-- Location: LCFF_X10_Y12_N27
\Reg3|REGISTRO[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|REGISTRO~3_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|REGISTRO\(2));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[1]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(1),
	combout => \ENTRADA~combout\(1));

-- Location: LCCOMB_X10_Y12_N8
\Reg3|REGISTRO~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO~2_combout\ = (\CARGA~combout\ & ((\ENTRADA~combout\(1)))) # (!\CARGA~combout\ & (\Reg3|REGISTRO\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg3|REGISTRO\(2),
	datac => \ENTRADA~combout\(1),
	datad => \CARGA~combout\,
	combout => \Reg3|REGISTRO~2_combout\);

-- Location: LCFF_X10_Y12_N9
\Reg3|REGISTRO[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|REGISTRO~2_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|REGISTRO\(1));

-- Location: LCCOMB_X8_Y12_N0
\Reg3|REGISTRO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg3|REGISTRO~0_combout\ = (\CARGA~combout\ & (\ENTRADA~combout\(0))) # (!\CARGA~combout\ & ((\Reg3|REGISTRO\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA~combout\(0),
	datac => \CARGA~combout\,
	datad => \Reg3|REGISTRO\(1),
	combout => \Reg3|REGISTRO~0_combout\);

-- Location: LCFF_X8_Y12_N1
\Reg3|REGISTRO[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg3|REGISTRO~0_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg3|REGISTRO\(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPCIONES[2]~I\ : cycloneii_io
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
	padio => ww_OPCIONES(2),
	combout => \OPCIONES~combout\(2));

-- Location: LCCOMB_X8_Y12_N10
\Mux|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux7~0_combout\ = (\Reg3|REGISTRO\(0) & !\OPCIONES~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg3|REGISTRO\(0),
	datad => \OPCIONES~combout\(2),
	combout => \Mux|Mux7~0_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPCIONES[1]~I\ : cycloneii_io
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
	padio => ww_OPCIONES(1),
	combout => \OPCIONES~combout\(1));

-- Location: LCCOMB_X9_Y12_N16
\Reg6|REGISTRO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg6|REGISTRO~0_combout\ = (\CARGA~combout\ & (\ENTRADA~combout\(7))) # (!\CARGA~combout\ & ((\Reg6|REGISTRO\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CARGA~combout\,
	datac => \ENTRADA~combout\(7),
	datad => \Reg6|REGISTRO\(0),
	combout => \Reg6|REGISTRO~0_combout\);

-- Location: LCFF_X9_Y12_N17
\Reg6|REGISTRO[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg6|REGISTRO~0_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(7));

-- Location: LCFF_X9_Y12_N19
\Reg6|REGISTRO[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg6|REGISTRO\(7),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(6));

-- Location: LCCOMB_X9_Y12_N4
\Reg6|REGISTRO[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg6|REGISTRO[5]~feeder_combout\ = \Reg6|REGISTRO\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg6|REGISTRO\(6),
	combout => \Reg6|REGISTRO[5]~feeder_combout\);

-- Location: LCFF_X9_Y12_N5
\Reg6|REGISTRO[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg6|REGISTRO[5]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(5));

-- Location: LCFF_X9_Y12_N3
\Reg6|REGISTRO[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg6|REGISTRO\(5),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(4));

-- Location: LCCOMB_X9_Y12_N12
\Reg6|REGISTRO[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg6|REGISTRO[3]~feeder_combout\ = \Reg6|REGISTRO\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg6|REGISTRO\(4),
	combout => \Reg6|REGISTRO[3]~feeder_combout\);

-- Location: LCFF_X9_Y12_N13
\Reg6|REGISTRO[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg6|REGISTRO[3]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(3));

-- Location: LCCOMB_X9_Y12_N10
\Reg6|REGISTRO[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg6|REGISTRO[2]~feeder_combout\ = \Reg6|REGISTRO\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg6|REGISTRO\(3),
	combout => \Reg6|REGISTRO[2]~feeder_combout\);

-- Location: LCFF_X9_Y12_N11
\Reg6|REGISTRO[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg6|REGISTRO[2]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(2));

-- Location: LCCOMB_X9_Y12_N22
\Reg6|REGISTRO[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg6|REGISTRO[1]~feeder_combout\ = \Reg6|REGISTRO\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg6|REGISTRO\(2),
	combout => \Reg6|REGISTRO[1]~feeder_combout\);

-- Location: LCFF_X9_Y12_N23
\Reg6|REGISTRO[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg6|REGISTRO[1]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(1));

-- Location: LCCOMB_X9_Y12_N28
\Reg6|REGISTRO[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg6|REGISTRO[0]~feeder_combout\ = \Reg6|REGISTRO\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg6|REGISTRO\(1),
	combout => \Reg6|REGISTRO[0]~feeder_combout\);

-- Location: LCFF_X9_Y12_N29
\Reg6|REGISTRO[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg6|REGISTRO[0]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg6|REGISTRO\(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPCIONES[0]~I\ : cycloneii_io
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
	padio => ww_OPCIONES(0),
	combout => \OPCIONES~combout\(0));

-- Location: LCCOMB_X8_Y12_N16
\Mux|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux7~4_combout\ = (\OPCIONES~combout\(1) & (((\OPCIONES~combout\(0))))) # (!\OPCIONES~combout\(1) & (\Mux|Mux7~3_combout\ & ((\Reg6|REGISTRO\(0)) # (!\OPCIONES~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|Mux7~3_combout\,
	datab => \OPCIONES~combout\(1),
	datac => \Reg6|REGISTRO\(0),
	datad => \OPCIONES~combout\(0),
	combout => \Mux|Mux7~4_combout\);

-- Location: LCFF_X10_Y12_N31
\Reg4|REGISTRO[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg5|REGISTRO\(7),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg4|REGISTRO\(6));

-- Location: LCCOMB_X10_Y12_N2
\Reg4|REGISTRO[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg4|REGISTRO[5]~feeder_combout\ = \Reg4|REGISTRO\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg4|REGISTRO\(6),
	combout => \Reg4|REGISTRO[5]~feeder_combout\);

-- Location: LCFF_X10_Y12_N3
\Reg4|REGISTRO[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg4|REGISTRO[5]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg4|REGISTRO\(5));

-- Location: LCCOMB_X10_Y12_N10
\Reg4|REGISTRO[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg4|REGISTRO[4]~feeder_combout\ = \Reg4|REGISTRO\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg4|REGISTRO\(5),
	combout => \Reg4|REGISTRO[4]~feeder_combout\);

-- Location: LCFF_X10_Y12_N11
\Reg4|REGISTRO[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg4|REGISTRO[4]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg4|REGISTRO\(4));

-- Location: LCCOMB_X10_Y12_N22
\Reg4|REGISTRO[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg4|REGISTRO[3]~feeder_combout\ = \Reg4|REGISTRO\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg4|REGISTRO\(4),
	combout => \Reg4|REGISTRO[3]~feeder_combout\);

-- Location: LCFF_X10_Y12_N23
\Reg4|REGISTRO[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg4|REGISTRO[3]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg4|REGISTRO\(3));

-- Location: LCFF_X8_Y12_N5
\Reg4|REGISTRO[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg4|REGISTRO\(3),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg4|REGISTRO\(2));

-- Location: LCFF_X8_Y12_N25
\Reg4|REGISTRO[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg4|REGISTRO\(2),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg4|REGISTRO\(1));

-- Location: LCFF_X8_Y12_N27
\Reg2|REGISTRO[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg4|REGISTRO\(1),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg2|REGISTRO\(7));

-- Location: LCCOMB_X8_Y12_N26
\Mux|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux7~1_combout\ = (\Reg2|REGISTRO\(7) & !\OPCIONES~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg2|REGISTRO\(7),
	datad => \OPCIONES~combout\(2),
	combout => \Mux|Mux7~1_combout\);

-- Location: LCCOMB_X8_Y12_N22
\Mux|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux7~2_combout\ = (\Mux|Mux7~4_combout\ & (((\Mux|Mux7~1_combout\) # (!\OPCIONES~combout\(1))))) # (!\Mux|Mux7~4_combout\ & (\Mux|Mux7~0_combout\ & ((\OPCIONES~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|Mux7~0_combout\,
	datab => \Mux|Mux7~4_combout\,
	datac => \Mux|Mux7~1_combout\,
	datad => \OPCIONES~combout\(1),
	combout => \Mux|Mux7~2_combout\);

-- Location: LCCOMB_X8_Y12_N24
\Mux|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux6~0_combout\ = (\OPCIONES~combout\(2) & (!\OPCIONES~combout\(1) & !\OPCIONES~combout\(0))) # (!\OPCIONES~combout\(2) & (\OPCIONES~combout\(1) & \OPCIONES~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \OPCIONES~combout\(1),
	datad => \OPCIONES~combout\(0),
	combout => \Mux|Mux6~0_combout\);

-- Location: LCFF_X10_Y12_N17
\Reg5|REGISTRO[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(1),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(1));

-- Location: LCCOMB_X10_Y12_N16
\Mux|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux6~1_combout\ = (\Mux|Mux6~0_combout\ & ((\OPCIONES~combout\(2) & (\Reg5|REGISTRO\(1))) # (!\OPCIONES~combout\(2) & ((\Reg4|REGISTRO\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \Mux|Mux6~0_combout\,
	datac => \Reg5|REGISTRO\(1),
	datad => \Reg4|REGISTRO\(1),
	combout => \Mux|Mux6~1_combout\);

-- Location: LCFF_X10_Y12_N19
\Reg5|REGISTRO[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(2),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(2));

-- Location: LCCOMB_X10_Y12_N18
\Mux|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux5~0_combout\ = (\Mux|Mux6~0_combout\ & ((\OPCIONES~combout\(2) & ((\Reg5|REGISTRO\(2)))) # (!\OPCIONES~combout\(2) & (\Reg4|REGISTRO\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg4|REGISTRO\(2),
	datab => \Mux|Mux6~0_combout\,
	datac => \Reg5|REGISTRO\(2),
	datad => \OPCIONES~combout\(2),
	combout => \Mux|Mux5~0_combout\);

-- Location: LCFF_X10_Y12_N29
\Reg5|REGISTRO[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(3),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(3));

-- Location: LCCOMB_X10_Y12_N28
\Mux|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux4~0_combout\ = (\Mux|Mux6~0_combout\ & ((\OPCIONES~combout\(2) & (\Reg5|REGISTRO\(3))) # (!\OPCIONES~combout\(2) & ((\Reg4|REGISTRO\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \Mux|Mux6~0_combout\,
	datac => \Reg5|REGISTRO\(3),
	datad => \Reg4|REGISTRO\(3),
	combout => \Mux|Mux4~0_combout\);

-- Location: LCFF_X10_Y12_N25
\Reg5|REGISTRO[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(4),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(4));

-- Location: LCCOMB_X10_Y12_N24
\Mux|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux3~0_combout\ = (\Mux|Mux6~0_combout\ & ((\OPCIONES~combout\(2) & ((\Reg5|REGISTRO\(4)))) # (!\OPCIONES~combout\(2) & (\Reg4|REGISTRO\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg4|REGISTRO\(4),
	datab => \Mux|Mux6~0_combout\,
	datac => \Reg5|REGISTRO\(4),
	datad => \OPCIONES~combout\(2),
	combout => \Mux|Mux3~0_combout\);

-- Location: LCFF_X10_Y12_N13
\Reg5|REGISTRO[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(5),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(5));

-- Location: LCCOMB_X10_Y12_N12
\Mux|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux2~0_combout\ = (\Mux|Mux6~0_combout\ & ((\OPCIONES~combout\(2) & (\Reg5|REGISTRO\(5))) # (!\OPCIONES~combout\(2) & ((\Reg4|REGISTRO\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \Mux|Mux6~0_combout\,
	datac => \Reg5|REGISTRO\(5),
	datad => \Reg4|REGISTRO\(5),
	combout => \Mux|Mux2~0_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRADA[6]~I\ : cycloneii_io
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
	padio => ww_ENTRADA(6),
	combout => \ENTRADA~combout\(6));

-- Location: LCFF_X10_Y12_N21
\Reg5|REGISTRO[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \ENTRADA~combout\(6),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg5|REGISTRO\(6));

-- Location: LCCOMB_X10_Y12_N20
\Mux|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux1~0_combout\ = (\Mux|Mux6~0_combout\ & ((\OPCIONES~combout\(2) & (\Reg5|REGISTRO\(6))) # (!\OPCIONES~combout\(2) & ((\Reg4|REGISTRO\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \Mux|Mux6~0_combout\,
	datac => \Reg5|REGISTRO\(6),
	datad => \Reg4|REGISTRO\(6),
	combout => \Mux|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y12_N2
\Mux|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux0~0_combout\ = (\Reg5|REGISTRO\(7) & ((\OPCIONES~combout\(0) & ((\OPCIONES~combout\(1)))) # (!\OPCIONES~combout\(0) & (\OPCIONES~combout\(2))))) # (!\Reg5|REGISTRO\(7) & (\OPCIONES~combout\(2) & (\OPCIONES~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \OPCIONES~combout\(1),
	datac => \Reg5|REGISTRO\(7),
	datad => \OPCIONES~combout\(0),
	combout => \Mux|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y12_N28
\Reg7|REGISTRO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg7|REGISTRO~0_combout\ = (\CARGA~combout\ & (\ENTRADA~combout\(7))) # (!\CARGA~combout\ & ((\Reg7|REGISTRO\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CARGA~combout\,
	datac => \ENTRADA~combout\(7),
	datad => \Reg7|REGISTRO\(7),
	combout => \Reg7|REGISTRO~0_combout\);

-- Location: LCFF_X8_Y12_N29
\Reg7|REGISTRO[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg7|REGISTRO~0_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(0));

-- Location: LCCOMB_X8_Y12_N18
\Reg7|REGISTRO[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg7|REGISTRO[1]~feeder_combout\ = \Reg7|REGISTRO\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg7|REGISTRO\(0),
	combout => \Reg7|REGISTRO[1]~feeder_combout\);

-- Location: LCFF_X8_Y12_N19
\Reg7|REGISTRO[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg7|REGISTRO[1]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(1));

-- Location: LCCOMB_X8_Y12_N12
\Reg7|REGISTRO[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg7|REGISTRO[2]~feeder_combout\ = \Reg7|REGISTRO\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg7|REGISTRO\(1),
	combout => \Reg7|REGISTRO[2]~feeder_combout\);

-- Location: LCFF_X8_Y12_N13
\Reg7|REGISTRO[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg7|REGISTRO[2]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(2));

-- Location: LCCOMB_X8_Y12_N20
\Reg7|REGISTRO[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reg7|REGISTRO[3]~feeder_combout\ = \Reg7|REGISTRO\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg7|REGISTRO\(2),
	combout => \Reg7|REGISTRO[3]~feeder_combout\);

-- Location: LCFF_X8_Y12_N21
\Reg7|REGISTRO[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	datain => \Reg7|REGISTRO[3]~feeder_combout\,
	aclr => \ALT_INV_RESET~combout\,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(3));

-- Location: LCFF_X8_Y12_N15
\Reg7|REGISTRO[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg7|REGISTRO\(3),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(4));

-- Location: LCFF_X8_Y12_N11
\Reg7|REGISTRO[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg7|REGISTRO\(4),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(5));

-- Location: LCFF_X8_Y12_N9
\Reg7|REGISTRO[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg7|REGISTRO\(5),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(6));

-- Location: LCFF_X8_Y12_N31
\Reg7|REGISTRO[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Reloj|salida_media~clkctrl_outclk\,
	sdata => \Reg7|REGISTRO\(6),
	aclr => \ALT_INV_RESET~combout\,
	sload => VCC,
	ena => \Reg3|REGISTRO[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reg7|REGISTRO\(7));

-- Location: LCCOMB_X8_Y12_N4
\Mux|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux0~1_combout\ = (\OPCIONES~combout\(1) & (\OPCIONES~combout\(2))) # (!\OPCIONES~combout\(1) & ((\OPCIONES~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCIONES~combout\(2),
	datab => \OPCIONES~combout\(1),
	datad => \OPCIONES~combout\(0),
	combout => \Mux|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y12_N30
\Mux|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux|Mux0~2_combout\ = (\Mux|Mux0~0_combout\ & (((\Reg7|REGISTRO\(7)) # (!\Mux|Mux0~1_combout\)))) # (!\Mux|Mux0~0_combout\ & (\Mux|Mux7~1_combout\ & ((\Mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|Mux7~1_combout\,
	datab => \Mux|Mux0~0_combout\,
	datac => \Reg7|REGISTRO\(7),
	datad => \Mux|Mux0~1_combout\,
	combout => \Mux|Mux0~2_combout\);

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

-- Location: LCCOMB_X15_Y13_N6
\Reloj|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~0_combout\ = \Reloj|contador\(0) $ (VCC)
-- \Reloj|Add0~1\ = CARRY(\Reloj|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(0),
	datad => VCC,
	combout => \Reloj|Add0~0_combout\,
	cout => \Reloj|Add0~1\);

-- Location: LCCOMB_X15_Y13_N8
\Reloj|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~2_combout\ = (\Reloj|contador\(1) & (!\Reloj|Add0~1\)) # (!\Reloj|contador\(1) & ((\Reloj|Add0~1\) # (GND)))
-- \Reloj|Add0~3\ = CARRY((!\Reloj|Add0~1\) # (!\Reloj|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(1),
	datad => VCC,
	cin => \Reloj|Add0~1\,
	combout => \Reloj|Add0~2_combout\,
	cout => \Reloj|Add0~3\);

-- Location: LCFF_X15_Y13_N9
\Reloj|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~2_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(1));

-- Location: LCCOMB_X15_Y13_N10
\Reloj|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~4_combout\ = (\Reloj|contador\(2) & (\Reloj|Add0~3\ $ (GND))) # (!\Reloj|contador\(2) & (!\Reloj|Add0~3\ & VCC))
-- \Reloj|Add0~5\ = CARRY((\Reloj|contador\(2) & !\Reloj|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(2),
	datad => VCC,
	cin => \Reloj|Add0~3\,
	combout => \Reloj|Add0~4_combout\,
	cout => \Reloj|Add0~5\);

-- Location: LCCOMB_X15_Y13_N14
\Reloj|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~8_combout\ = (\Reloj|contador\(4) & (\Reloj|Add0~7\ $ (GND))) # (!\Reloj|contador\(4) & (!\Reloj|Add0~7\ & VCC))
-- \Reloj|Add0~9\ = CARRY((\Reloj|contador\(4) & !\Reloj|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(4),
	datad => VCC,
	cin => \Reloj|Add0~7\,
	combout => \Reloj|Add0~8_combout\,
	cout => \Reloj|Add0~9\);

-- Location: LCFF_X15_Y13_N15
\Reloj|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~8_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(4));

-- Location: LCCOMB_X15_Y13_N16
\Reloj|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~10_combout\ = (\Reloj|contador\(5) & (!\Reloj|Add0~9\)) # (!\Reloj|contador\(5) & ((\Reloj|Add0~9\) # (GND)))
-- \Reloj|Add0~11\ = CARRY((!\Reloj|Add0~9\) # (!\Reloj|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(5),
	datad => VCC,
	cin => \Reloj|Add0~9\,
	combout => \Reloj|Add0~10_combout\,
	cout => \Reloj|Add0~11\);

-- Location: LCCOMB_X15_Y13_N18
\Reloj|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~12_combout\ = (\Reloj|contador\(6) & (\Reloj|Add0~11\ $ (GND))) # (!\Reloj|contador\(6) & (!\Reloj|Add0~11\ & VCC))
-- \Reloj|Add0~13\ = CARRY((\Reloj|contador\(6) & !\Reloj|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(6),
	datad => VCC,
	cin => \Reloj|Add0~11\,
	combout => \Reloj|Add0~12_combout\,
	cout => \Reloj|Add0~13\);

-- Location: LCFF_X15_Y13_N19
\Reloj|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~12_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(6));

-- Location: LCCOMB_X15_Y13_N20
\Reloj|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~14_combout\ = (\Reloj|contador\(7) & (!\Reloj|Add0~13\)) # (!\Reloj|contador\(7) & ((\Reloj|Add0~13\) # (GND)))
-- \Reloj|Add0~15\ = CARRY((!\Reloj|Add0~13\) # (!\Reloj|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(7),
	datad => VCC,
	cin => \Reloj|Add0~13\,
	combout => \Reloj|Add0~14_combout\,
	cout => \Reloj|Add0~15\);

-- Location: LCCOMB_X14_Y12_N16
\Reloj|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~11_combout\ = (!\Reloj|Equal0~8_combout\ & \Reloj|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|Equal0~8_combout\,
	datac => \Reloj|Add0~14_combout\,
	combout => \Reloj|contador~11_combout\);

-- Location: LCFF_X14_Y12_N17
\Reloj|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~11_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(7));

-- Location: LCCOMB_X15_Y13_N22
\Reloj|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~16_combout\ = (\Reloj|contador\(8) & (\Reloj|Add0~15\ $ (GND))) # (!\Reloj|contador\(8) & (!\Reloj|Add0~15\ & VCC))
-- \Reloj|Add0~17\ = CARRY((\Reloj|contador\(8) & !\Reloj|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(8),
	datad => VCC,
	cin => \Reloj|Add0~15\,
	combout => \Reloj|Add0~16_combout\,
	cout => \Reloj|Add0~17\);

-- Location: LCFF_X15_Y13_N23
\Reloj|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~16_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(8));

-- Location: LCCOMB_X15_Y13_N26
\Reloj|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~20_combout\ = (\Reloj|contador\(10) & (\Reloj|Add0~19\ $ (GND))) # (!\Reloj|contador\(10) & (!\Reloj|Add0~19\ & VCC))
-- \Reloj|Add0~21\ = CARRY((\Reloj|contador\(10) & !\Reloj|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(10),
	datad => VCC,
	cin => \Reloj|Add0~19\,
	combout => \Reloj|Add0~20_combout\,
	cout => \Reloj|Add0~21\);

-- Location: LCFF_X15_Y13_N27
\Reloj|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~20_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(10));

-- Location: LCCOMB_X15_Y13_N28
\Reloj|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~22_combout\ = (\Reloj|contador\(11) & (!\Reloj|Add0~21\)) # (!\Reloj|contador\(11) & ((\Reloj|Add0~21\) # (GND)))
-- \Reloj|Add0~23\ = CARRY((!\Reloj|Add0~21\) # (!\Reloj|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(11),
	datad => VCC,
	cin => \Reloj|Add0~21\,
	combout => \Reloj|Add0~22_combout\,
	cout => \Reloj|Add0~23\);

-- Location: LCFF_X15_Y13_N29
\Reloj|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~22_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(11));

-- Location: LCCOMB_X15_Y13_N30
\Reloj|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~24_combout\ = (\Reloj|contador\(12) & (\Reloj|Add0~23\ $ (GND))) # (!\Reloj|contador\(12) & (!\Reloj|Add0~23\ & VCC))
-- \Reloj|Add0~25\ = CARRY((\Reloj|contador\(12) & !\Reloj|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(12),
	datad => VCC,
	cin => \Reloj|Add0~23\,
	combout => \Reloj|Add0~24_combout\,
	cout => \Reloj|Add0~25\);

-- Location: LCCOMB_X14_Y12_N24
\Reloj|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~10_combout\ = (!\Reloj|Equal0~8_combout\ & \Reloj|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|Equal0~8_combout\,
	datac => \Reloj|Add0~24_combout\,
	combout => \Reloj|contador~10_combout\);

-- Location: LCFF_X14_Y12_N25
\Reloj|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~10_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(12));

-- Location: LCCOMB_X15_Y12_N0
\Reloj|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~26_combout\ = (\Reloj|contador\(13) & (!\Reloj|Add0~25\)) # (!\Reloj|contador\(13) & ((\Reloj|Add0~25\) # (GND)))
-- \Reloj|Add0~27\ = CARRY((!\Reloj|Add0~25\) # (!\Reloj|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(13),
	datad => VCC,
	cin => \Reloj|Add0~25\,
	combout => \Reloj|Add0~26_combout\,
	cout => \Reloj|Add0~27\);

-- Location: LCCOMB_X15_Y12_N2
\Reloj|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~28_combout\ = (\Reloj|contador\(14) & (\Reloj|Add0~27\ $ (GND))) # (!\Reloj|contador\(14) & (!\Reloj|Add0~27\ & VCC))
-- \Reloj|Add0~29\ = CARRY((\Reloj|contador\(14) & !\Reloj|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(14),
	datad => VCC,
	cin => \Reloj|Add0~27\,
	combout => \Reloj|Add0~28_combout\,
	cout => \Reloj|Add0~29\);

-- Location: LCCOMB_X15_Y12_N4
\Reloj|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~30_combout\ = (\Reloj|contador\(15) & (!\Reloj|Add0~29\)) # (!\Reloj|contador\(15) & ((\Reloj|Add0~29\) # (GND)))
-- \Reloj|Add0~31\ = CARRY((!\Reloj|Add0~29\) # (!\Reloj|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(15),
	datad => VCC,
	cin => \Reloj|Add0~29\,
	combout => \Reloj|Add0~30_combout\,
	cout => \Reloj|Add0~31\);

-- Location: LCCOMB_X14_Y12_N6
\Reloj|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~7_combout\ = (!\Reloj|Equal0~8_combout\ & \Reloj|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|Equal0~8_combout\,
	datad => \Reloj|Add0~30_combout\,
	combout => \Reloj|contador~7_combout\);

-- Location: LCFF_X14_Y12_N7
\Reloj|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~7_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(15));

-- Location: LCCOMB_X15_Y12_N6
\Reloj|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~32_combout\ = (\Reloj|contador\(16) & (\Reloj|Add0~31\ $ (GND))) # (!\Reloj|contador\(16) & (!\Reloj|Add0~31\ & VCC))
-- \Reloj|Add0~33\ = CARRY((\Reloj|contador\(16) & !\Reloj|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(16),
	datad => VCC,
	cin => \Reloj|Add0~31\,
	combout => \Reloj|Add0~32_combout\,
	cout => \Reloj|Add0~33\);

-- Location: LCCOMB_X15_Y12_N8
\Reloj|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~34_combout\ = (\Reloj|contador\(17) & (!\Reloj|Add0~33\)) # (!\Reloj|contador\(17) & ((\Reloj|Add0~33\) # (GND)))
-- \Reloj|Add0~35\ = CARRY((!\Reloj|Add0~33\) # (!\Reloj|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(17),
	datad => VCC,
	cin => \Reloj|Add0~33\,
	combout => \Reloj|Add0~34_combout\,
	cout => \Reloj|Add0~35\);

-- Location: LCCOMB_X14_Y12_N18
\Reloj|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~6_combout\ = (\Reloj|Add0~34_combout\ & !\Reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|Add0~34_combout\,
	datad => \Reloj|Equal0~8_combout\,
	combout => \Reloj|contador~6_combout\);

-- Location: LCFF_X14_Y12_N19
\Reloj|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~6_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(17));

-- Location: LCCOMB_X15_Y12_N10
\Reloj|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~36_combout\ = (\Reloj|contador\(18) & (\Reloj|Add0~35\ $ (GND))) # (!\Reloj|contador\(18) & (!\Reloj|Add0~35\ & VCC))
-- \Reloj|Add0~37\ = CARRY((\Reloj|contador\(18) & !\Reloj|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(18),
	datad => VCC,
	cin => \Reloj|Add0~35\,
	combout => \Reloj|Add0~36_combout\,
	cout => \Reloj|Add0~37\);

-- Location: LCFF_X15_Y12_N11
\Reloj|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~36_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(18));

-- Location: LCFF_X15_Y12_N7
\Reloj|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~32_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(16));

-- Location: LCCOMB_X14_Y12_N28
\Reloj|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~2_combout\ = (\Reloj|contador\(15) & (\Reloj|contador\(17) & (!\Reloj|contador\(18) & !\Reloj|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(15),
	datab => \Reloj|contador\(17),
	datac => \Reloj|contador\(18),
	datad => \Reloj|contador\(16),
	combout => \Reloj|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y12_N14
\Reloj|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~8_combout\ = (!\Reloj|Equal0~8_combout\ & \Reloj|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|Equal0~8_combout\,
	datad => \Reloj|Add0~28_combout\,
	combout => \Reloj|contador~8_combout\);

-- Location: LCFF_X14_Y12_N15
\Reloj|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~8_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(14));

-- Location: LCCOMB_X14_Y12_N30
\Reloj|contador~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~9_combout\ = (\Reloj|Add0~26_combout\ & !\Reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|Add0~26_combout\,
	datad => \Reloj|Equal0~8_combout\,
	combout => \Reloj|contador~9_combout\);

-- Location: LCFF_X14_Y12_N31
\Reloj|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~9_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(13));

-- Location: LCCOMB_X14_Y12_N4
\Reloj|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~3_combout\ = (\Reloj|contador\(12) & (\Reloj|contador\(14) & (!\Reloj|contador\(11) & \Reloj|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(12),
	datab => \Reloj|contador\(14),
	datac => \Reloj|contador\(11),
	datad => \Reloj|contador\(13),
	combout => \Reloj|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y12_N14
\Reloj|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~40_combout\ = (\Reloj|contador\(20) & (\Reloj|Add0~39\ $ (GND))) # (!\Reloj|contador\(20) & (!\Reloj|Add0~39\ & VCC))
-- \Reloj|Add0~41\ = CARRY((\Reloj|contador\(20) & !\Reloj|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(20),
	datad => VCC,
	cin => \Reloj|Add0~39\,
	combout => \Reloj|Add0~40_combout\,
	cout => \Reloj|Add0~41\);

-- Location: LCCOMB_X15_Y12_N30
\Reloj|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~4_combout\ = (\Reloj|Add0~40_combout\ & !\Reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|Add0~40_combout\,
	datad => \Reloj|Equal0~8_combout\,
	combout => \Reloj|contador~4_combout\);

-- Location: LCFF_X15_Y12_N31
\Reloj|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~4_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(20));

-- Location: LCCOMB_X15_Y12_N16
\Reloj|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~42_combout\ = (\Reloj|contador\(21) & (!\Reloj|Add0~41\)) # (!\Reloj|contador\(21) & ((\Reloj|Add0~41\) # (GND)))
-- \Reloj|Add0~43\ = CARRY((!\Reloj|Add0~41\) # (!\Reloj|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(21),
	datad => VCC,
	cin => \Reloj|Add0~41\,
	combout => \Reloj|Add0~42_combout\,
	cout => \Reloj|Add0~43\);

-- Location: LCCOMB_X15_Y12_N28
\Reloj|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~3_combout\ = (\Reloj|Add0~42_combout\ & !\Reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|Add0~42_combout\,
	datad => \Reloj|Equal0~8_combout\,
	combout => \Reloj|contador~3_combout\);

-- Location: LCFF_X15_Y12_N29
\Reloj|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~3_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(21));

-- Location: LCCOMB_X15_Y12_N18
\Reloj|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~44_combout\ = (\Reloj|contador\(22) & (\Reloj|Add0~43\ $ (GND))) # (!\Reloj|contador\(22) & (!\Reloj|Add0~43\ & VCC))
-- \Reloj|Add0~45\ = CARRY((\Reloj|contador\(22) & !\Reloj|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|contador\(22),
	datad => VCC,
	cin => \Reloj|Add0~43\,
	combout => \Reloj|Add0~44_combout\,
	cout => \Reloj|Add0~45\);

-- Location: LCCOMB_X14_Y12_N22
\Reloj|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~2_combout\ = (!\Reloj|Equal0~8_combout\ & \Reloj|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|Equal0~8_combout\,
	datad => \Reloj|Add0~44_combout\,
	combout => \Reloj|contador~2_combout\);

-- Location: LCFF_X14_Y12_N23
\Reloj|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~2_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(22));

-- Location: LCCOMB_X15_Y12_N20
\Reloj|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Add0~46_combout\ = (\Reloj|contador\(23) & (!\Reloj|Add0~45\)) # (!\Reloj|contador\(23) & ((\Reloj|Add0~45\) # (GND)))
-- \Reloj|Add0~47\ = CARRY((!\Reloj|Add0~45\) # (!\Reloj|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(23),
	datad => VCC,
	cin => \Reloj|Add0~45\,
	combout => \Reloj|Add0~46_combout\,
	cout => \Reloj|Add0~47\);

-- Location: LCCOMB_X14_Y12_N0
\Reloj|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|contador~1_combout\ = (!\Reloj|Equal0~8_combout\ & \Reloj|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj|Equal0~8_combout\,
	datad => \Reloj|Add0~46_combout\,
	combout => \Reloj|contador~1_combout\);

-- Location: LCFF_X14_Y12_N1
\Reloj|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|contador~1_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(23));

-- Location: LCFF_X15_Y12_N23
\Reloj|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~48_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(24));

-- Location: LCFF_X15_Y13_N7
\Reloj|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~0_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(0));

-- Location: LCCOMB_X14_Y12_N2
\Reloj|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~0_combout\ = (\Reloj|contador\(25) & (\Reloj|contador\(23) & (!\Reloj|contador\(24) & \Reloj|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(25),
	datab => \Reloj|contador\(23),
	datac => \Reloj|contador\(24),
	datad => \Reloj|contador\(0),
	combout => \Reloj|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y12_N8
\Reloj|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~4_combout\ = (\Reloj|Equal0~1_combout\ & (\Reloj|Equal0~2_combout\ & (\Reloj|Equal0~3_combout\ & \Reloj|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|Equal0~1_combout\,
	datab => \Reloj|Equal0~2_combout\,
	datac => \Reloj|Equal0~3_combout\,
	datad => \Reloj|Equal0~0_combout\,
	combout => \Reloj|Equal0~4_combout\);

-- Location: LCFF_X15_Y13_N11
\Reloj|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~4_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(2));

-- Location: LCCOMB_X15_Y13_N4
\Reloj|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~7_combout\ = (\Reloj|contador\(1) & \Reloj|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|contador\(1),
	datad => \Reloj|contador\(2),
	combout => \Reloj|Equal0~7_combout\);

-- Location: LCFF_X15_Y13_N17
\Reloj|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|Add0~10_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|contador\(5));

-- Location: LCCOMB_X15_Y13_N2
\Reloj|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~6_combout\ = (\Reloj|contador\(3) & (\Reloj|contador\(4) & (\Reloj|contador\(5) & \Reloj|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|contador\(3),
	datab => \Reloj|contador\(4),
	datac => \Reloj|contador\(5),
	datad => \Reloj|contador\(6),
	combout => \Reloj|Equal0~6_combout\);

-- Location: LCCOMB_X14_Y12_N26
\Reloj|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|Equal0~8_combout\ = (\Reloj|Equal0~5_combout\ & (\Reloj|Equal0~4_combout\ & (\Reloj|Equal0~7_combout\ & \Reloj|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj|Equal0~5_combout\,
	datab => \Reloj|Equal0~4_combout\,
	datac => \Reloj|Equal0~7_combout\,
	datad => \Reloj|Equal0~6_combout\,
	combout => \Reloj|Equal0~8_combout\);

-- Location: LCCOMB_X14_Y12_N20
\Reloj|salida_media~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reloj|salida_media~0_combout\ = \Reloj|salida_media~regout\ $ (\Reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj|salida_media~regout\,
	datad => \Reloj|Equal0~8_combout\,
	combout => \Reloj|salida_media~0_combout\);

-- Location: LCFF_X14_Y12_N21
\Reloj|salida_media\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Reloj|salida_media~0_combout\,
	aclr => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reloj|salida_media~regout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[0]~I\ : cycloneii_io
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
	datain => \Mux|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(0));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[1]~I\ : cycloneii_io
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
	datain => \Mux|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(1));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[2]~I\ : cycloneii_io
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
	datain => \Mux|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(2));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[3]~I\ : cycloneii_io
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
	datain => \Mux|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[4]~I\ : cycloneii_io
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
	datain => \Mux|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(4));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[5]~I\ : cycloneii_io
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
	datain => \Mux|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(5));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[6]~I\ : cycloneii_io
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
	datain => \Mux|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(6));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SALIDA[7]~I\ : cycloneii_io
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
	datain => \Mux|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SALIDA(7));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_ENTRADA~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_CARGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[2]~I\ : cycloneii_io
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
	datain => \Reloj|ALT_INV_salida_media~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(2));
END structure;


