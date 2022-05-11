//altlvds_tx CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" COMMON_RX_TX_PLL="OFF" CORECLOCK_DIVIDE_BY=1 DESERIALIZATION_FACTOR=10 DEVICE_FAMILY="Cyclone II" DIFFERENTIAL_DRIVE=0 ENABLE_CLK_LATENCY="OFF" IMPLEMENT_IN_LES="OFF" INCLOCK_BOOST=0 INCLOCK_DATA_ALIGNMENT="EDGE_ALIGNED" INCLOCK_PERIOD=0 INCLOCK_PHASE_SHIFT=0 MULTI_CLOCK="OFF" NUMBER_OF_CHANNELS=4 OUTPUT_DATA_RATE=251748252 PLL_COMPENSATION_MODE="AUTO" PLL_SELF_RESET_ON_LOSS_LOCK="OFF" PREEMPHASIS_SETTING=0 REGISTERED_INPUT="OFF" USE_EXTERNAL_PLL="ON" USE_NO_PHASE_SHIFT="ON" VOD_SETTING=0 tx_data_reset tx_in tx_inclock tx_out tx_syncclock CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 13.0 cbx_altaccumulate 2013:06:12:18:03:43:SJ cbx_altclkbuf 2013:06:12:18:03:43:SJ cbx_altddio_in 2013:06:12:18:03:43:SJ cbx_altddio_out 2013:06:12:18:03:43:SJ cbx_altiobuf_bidir 2013:06:12:18:03:43:SJ cbx_altiobuf_in 2013:06:12:18:03:43:SJ cbx_altiobuf_out 2013:06:12:18:03:43:SJ cbx_altlvds_tx 2013:06:12:18:03:43:SJ cbx_altpll 2013:06:12:18:03:43:SJ cbx_altsyncram 2013:06:12:18:03:43:SJ cbx_arriav 2013:06:12:18:03:43:SJ cbx_cyclone 2013:06:12:18:03:43:SJ cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_lpm_counter 2013:06:12:18:03:43:SJ cbx_lpm_decode 2013:06:12:18:03:43:SJ cbx_lpm_mux 2013:06:12:18:03:43:SJ cbx_lpm_shiftreg 2013:06:12:18:03:43:SJ cbx_maxii 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_stratixiii 2013:06:12:18:03:43:SJ cbx_stratixv 2013:06:12:18:03:43:SJ cbx_util_mgl 2013:06:12:18:03:43:SJ  VERSION_END
//CBXI_INSTANCE_NAME="top_hdmi_hdmi_serializer_serializer_altlvds_tx_ALTLVDS_TX_component"
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2013 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.




//altddio_out CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone II" WIDTH=4 aclr datain_h datain_l dataout outclock
//VERSION_BEGIN 13.0 cbx_altddio_out 2013:06:12:18:03:43:SJ cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_maxii 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_stratixiii 2013:06:12:18:03:43:SJ cbx_stratixv 2013:06:12:18:03:43:SJ cbx_util_mgl 2013:06:12:18:03:43:SJ  VERSION_END

//synthesis_resources = cycloneii_io 4 lut 4 reg 8 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"ANALYZE_METASTABILITY=OFF;ADV_NETLIST_OPT_ALLOWED=\"NEVER_ALLOW\";ALLOW_SYNCH_CTRL_USAGE=OFF;suppress_da_rule_internal=\"C104,C106\""} *)
module  altlvds_tx_inst_ddio_out
	( 
	aclr,
	datain_h,
	datain_l,
	dataout,
	outclock) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   [3:0]  datain_h;
	input   [3:0]  datain_l;
	output   [3:0]  dataout;
	input   outclock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [3:0]   wire_ddio_outa_datain;
	wire  [3:0]   wire_ddio_outa_padio;
	wire  [3:0]   wire_muxa_combout;
	wire  [3:0]   wire_muxa_datab;
	wire  [3:0]   wire_muxa_datac;
	(* ALTERA_ATTRIBUTE = {"DDIO_OUTPUT_REGISTER=HIGH;PRESERVE_REGISTER=ON"} *)
	reg	[3:0]	output_cell_H;
	(* ALTERA_ATTRIBUTE = {"DDIO_OUTPUT_REGISTER=LOW;PRESERVE_REGISTER=ON"} *)
	reg	[3:0]	output_cell_L;

	cycloneii_io   ddio_outa_0
	( 
	.combout(),
	.datain(wire_ddio_outa_datain[0:0]),
	.differentialout(),
	.linkout(),
	.oe(1'b1),
	.padio(wire_ddio_outa_padio[0:0]),
	.regout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.areset(1'b0),
	.differentialin(1'b0),
	.inclk(1'b0),
	.inclkena(1'b1),
	.linkin(1'b0),
	.outclk(1'b0),
	.outclkena(1'b1),
	.sreset(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devoe(1'b0),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ddio_outa_0.operation_mode = "output",
		ddio_outa_0.lpm_type = "cycloneii_io";
	cycloneii_io   ddio_outa_1
	( 
	.combout(),
	.datain(wire_ddio_outa_datain[1:1]),
	.differentialout(),
	.linkout(),
	.oe(1'b1),
	.padio(wire_ddio_outa_padio[1:1]),
	.regout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.areset(1'b0),
	.differentialin(1'b0),
	.inclk(1'b0),
	.inclkena(1'b1),
	.linkin(1'b0),
	.outclk(1'b0),
	.outclkena(1'b1),
	.sreset(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devoe(1'b0),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ddio_outa_1.operation_mode = "output",
		ddio_outa_1.lpm_type = "cycloneii_io";
	cycloneii_io   ddio_outa_2
	( 
	.combout(),
	.datain(wire_ddio_outa_datain[2:2]),
	.differentialout(),
	.linkout(),
	.oe(1'b1),
	.padio(wire_ddio_outa_padio[2:2]),
	.regout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.areset(1'b0),
	.differentialin(1'b0),
	.inclk(1'b0),
	.inclkena(1'b1),
	.linkin(1'b0),
	.outclk(1'b0),
	.outclkena(1'b1),
	.sreset(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devoe(1'b0),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ddio_outa_2.operation_mode = "output",
		ddio_outa_2.lpm_type = "cycloneii_io";
	cycloneii_io   ddio_outa_3
	( 
	.combout(),
	.datain(wire_ddio_outa_datain[3:3]),
	.differentialout(),
	.linkout(),
	.oe(1'b1),
	.padio(wire_ddio_outa_padio[3:3]),
	.regout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.areset(1'b0),
	.differentialin(1'b0),
	.inclk(1'b0),
	.inclkena(1'b1),
	.linkin(1'b0),
	.outclk(1'b0),
	.outclkena(1'b1),
	.sreset(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devoe(1'b0),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ddio_outa_3.operation_mode = "output",
		ddio_outa_3.lpm_type = "cycloneii_io";
	assign
		wire_ddio_outa_datain = (~ wire_muxa_combout);
	cycloneii_lcell_comb   muxa_0
	( 
	.combout(wire_muxa_combout[0:0]),
	.cout(),
	.dataa(outclock),
	.datab(wire_muxa_datab[0:0]),
	.datac(wire_muxa_datac[0:0]),
	.cin(1'b0),
	.datad(1'b0)
	);
	defparam
		muxa_0.lut_mask = 16'h1B1B,
		muxa_0.sum_lutc_input = "datac",
		muxa_0.lpm_type = "cycloneii_lcell_comb";
	cycloneii_lcell_comb   muxa_1
	( 
	.combout(wire_muxa_combout[1:1]),
	.cout(),
	.dataa(outclock),
	.datab(wire_muxa_datab[1:1]),
	.datac(wire_muxa_datac[1:1]),
	.cin(1'b0),
	.datad(1'b0)
	);
	defparam
		muxa_1.lut_mask = 16'h1B1B,
		muxa_1.sum_lutc_input = "datac",
		muxa_1.lpm_type = "cycloneii_lcell_comb";
	cycloneii_lcell_comb   muxa_2
	( 
	.combout(wire_muxa_combout[2:2]),
	.cout(),
	.dataa(outclock),
	.datab(wire_muxa_datab[2:2]),
	.datac(wire_muxa_datac[2:2]),
	.cin(1'b0),
	.datad(1'b0)
	);
	defparam
		muxa_2.lut_mask = 16'h1B1B,
		muxa_2.sum_lutc_input = "datac",
		muxa_2.lpm_type = "cycloneii_lcell_comb";
	cycloneii_lcell_comb   muxa_3
	( 
	.combout(wire_muxa_combout[3:3]),
	.cout(),
	.dataa(outclock),
	.datab(wire_muxa_datab[3:3]),
	.datac(wire_muxa_datac[3:3]),
	.cin(1'b0),
	.datad(1'b0)
	);
	defparam
		muxa_3.lut_mask = 16'h1B1B,
		muxa_3.sum_lutc_input = "datac",
		muxa_3.lpm_type = "cycloneii_lcell_comb";
	assign
		wire_muxa_datab = output_cell_L,
		wire_muxa_datac = output_cell_H;
	// synopsys translate_off
	initial
		output_cell_H = 0;
	// synopsys translate_on
	always @ ( posedge outclock or  posedge aclr)
		if (aclr == 1'b1) output_cell_H <= 4'b0;
		else  output_cell_H <= datain_h;
	// synopsys translate_off
	initial
		output_cell_L = 0;
	// synopsys translate_on
	always @ ( posedge outclock or  posedge aclr)
		if (aclr == 1'b1) output_cell_L <= 4'b0;
		else  output_cell_L <= datain_l;
	assign
		dataout = wire_ddio_outa_padio;
endmodule //altlvds_tx_inst_ddio_out


//lpm_compare CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone II" LPM_WIDTH=3 aeb dataa datab
//VERSION_BEGIN 13.0 cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_tx_inst_cmpr
	( 
	aeb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   aeb;
	input   [2:0]  dataa;
	input   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [2:0]  dataa;
	tri0   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]  aeb_result_wire;
	wire  [0:0]  aneb_result_wire;
	wire  [7:0]  data_wire;
	wire  eq_wire;

	assign
		aeb = eq_wire,
		aeb_result_wire = (~ aneb_result_wire),
		aneb_result_wire = (data_wire[0] | data_wire[1]),
		data_wire = {datab[2], dataa[2], datab[1], dataa[1], datab[0], dataa[0], (data_wire[6] ^ data_wire[7]), ((data_wire[2] ^ data_wire[3]) | (data_wire[4] ^ data_wire[5]))},
		eq_wire = aeb_result_wire;
endmodule //altlvds_tx_inst_cmpr


//lpm_counter CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone II" lpm_modulus=5 lpm_width=3 aclr clock q updown
//VERSION_BEGIN 13.0 cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_lpm_counter 2013:06:12:18:03:43:SJ cbx_lpm_decode 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ  VERSION_END


//lpm_compare CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone II" LPM_WIDTH=3 ONE_INPUT_IS_CONSTANT="YES" aeb dataa datab
//VERSION_BEGIN 13.0 cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_tx_inst_cmpr1
	( 
	aeb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   aeb;
	input   [2:0]  dataa;
	input   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [2:0]  dataa;
	tri0   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]  aeb_result_wire;
	wire  [0:0]  aneb_result_wire;
	wire  [7:0]  data_wire;
	wire  eq_wire;

	assign
		aeb = eq_wire,
		aeb_result_wire = (~ aneb_result_wire),
		aneb_result_wire = (data_wire[0] | data_wire[1]),
		data_wire = {datab[2], dataa[2], datab[1], dataa[1], datab[0], dataa[0], (data_wire[6] ^ data_wire[7]), ((data_wire[2] ^ data_wire[3]) | (data_wire[4] ^ data_wire[5]))},
		eq_wire = aeb_result_wire;
endmodule //altlvds_tx_inst_cmpr1

//synthesis_resources = lut 3 reg 3 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_tx_inst_cntr
	( 
	aclr,
	clock,
	q,
	updown) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	output   [2:0]  q;
	input   updown;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   updown;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]   wire_counter_comb_bita_0combout;
	wire  [0:0]   wire_counter_comb_bita_1combout;
	wire  [0:0]   wire_counter_comb_bita_2combout;
	wire  [0:0]   wire_counter_comb_bita_0cout;
	wire  [0:0]   wire_counter_comb_bita_1cout;
	wire  [0:0]   wire_counter_comb_bita_2cout;
	wire  [2:0]   wire_counter_reg_bit20a_regout;
	wire  [2:0]   wire_counter_reg_bit20a_sdata;
	wire  wire_cmpr21_aeb;
	wire  aclr_actual;
	wire clk_en;
	wire cnt_en;
	wire  compare_result;
	wire  cout_actual;
	wire [2:0]  data;
	wire  external_cin;
	wire  [2:0]  modulus_bus;
	wire  modulus_trigger;
	wire  [2:0]  s_val;
	wire  [2:0]  safe_q;
	wire sclr;
	wire sload;
	wire sset;
	wire  time_to_clear;
	wire  updown_dir;

	cycloneii_lcell_comb   counter_comb_bita_0
	( 
	.cin(external_cin),
	.combout(wire_counter_comb_bita_0combout[0:0]),
	.cout(wire_counter_comb_bita_0cout[0:0]),
	.dataa(wire_counter_reg_bit20a_regout[0:0]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_0.lut_mask = 16'h5A90,
		counter_comb_bita_0.sum_lutc_input = "cin",
		counter_comb_bita_0.lpm_type = "cycloneii_lcell_comb";
	cycloneii_lcell_comb   counter_comb_bita_1
	( 
	.cin(wire_counter_comb_bita_0cout[0:0]),
	.combout(wire_counter_comb_bita_1combout[0:0]),
	.cout(wire_counter_comb_bita_1cout[0:0]),
	.dataa(wire_counter_reg_bit20a_regout[1:1]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_1.lut_mask = 16'h5A90,
		counter_comb_bita_1.sum_lutc_input = "cin",
		counter_comb_bita_1.lpm_type = "cycloneii_lcell_comb";
	cycloneii_lcell_comb   counter_comb_bita_2
	( 
	.cin(wire_counter_comb_bita_1cout[0:0]),
	.combout(wire_counter_comb_bita_2combout[0:0]),
	.cout(wire_counter_comb_bita_2cout[0:0]),
	.dataa(wire_counter_reg_bit20a_regout[2:2]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_2.lut_mask = 16'h5A90,
		counter_comb_bita_2.sum_lutc_input = "cin",
		counter_comb_bita_2.lpm_type = "cycloneii_lcell_comb";
	cycloneii_lcell_ff   counter_reg_bit20a_0
	( 
	.aclr(aclr_actual),
	.clk(clock),
	.datain(wire_counter_comb_bita_0combout[0:0]),
	.ena((clk_en & (((sclr | sset) | sload) | cnt_en))),
	.regout(wire_counter_reg_bit20a_regout[0:0]),
	.sdata(wire_counter_reg_bit20a_sdata[0:0]),
	.sload((((sclr | sset) | sload) | modulus_trigger)),
	.sclr(1'b0)
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	cycloneii_lcell_ff   counter_reg_bit20a_1
	( 
	.aclr(aclr_actual),
	.clk(clock),
	.datain(wire_counter_comb_bita_1combout[0:0]),
	.ena((clk_en & (((sclr | sset) | sload) | cnt_en))),
	.regout(wire_counter_reg_bit20a_regout[1:1]),
	.sdata(wire_counter_reg_bit20a_sdata[1:1]),
	.sload((((sclr | sset) | sload) | modulus_trigger)),
	.sclr(1'b0)
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	cycloneii_lcell_ff   counter_reg_bit20a_2
	( 
	.aclr(aclr_actual),
	.clk(clock),
	.datain(wire_counter_comb_bita_2combout[0:0]),
	.ena((clk_en & (((sclr | sset) | sload) | cnt_en))),
	.regout(wire_counter_reg_bit20a_regout[2:2]),
	.sdata(wire_counter_reg_bit20a_sdata[2:2]),
	.sload((((sclr | sset) | sload) | modulus_trigger)),
	.sclr(1'b0)
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	assign
		wire_counter_reg_bit20a_sdata = ({3{(~ sclr)}} & (({3{sset}} & s_val) | ({3{(~ sset)}} & (({3{sload}} & data) | (({3{(~ sload)}} & modulus_bus) & {3{(~ updown_dir)}})))));
	altlvds_tx_inst_cmpr1   cmpr21
	( 
	.aeb(wire_cmpr21_aeb),
	.dataa(safe_q),
	.datab(modulus_bus));
	assign
		aclr_actual = aclr,
		clk_en = 1'b1,
		cnt_en = 1'b1,
		compare_result = wire_cmpr21_aeb,
		cout_actual = (wire_counter_comb_bita_2cout[0:0] | (time_to_clear & updown_dir)),
		data = {3{1'b0}},
		external_cin = 1'b1,
		modulus_bus = 3'b100,
		modulus_trigger = cout_actual,
		q = safe_q,
		s_val = {3{1'b1}},
		safe_q = wire_counter_reg_bit20a_regout,
		sclr = 1'b0,
		sload = 1'b0,
		sset = 1'b0,
		time_to_clear = compare_result,
		updown_dir = updown;
endmodule //altlvds_tx_inst_cntr


//lpm_shiftreg CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" LPM_DIRECTION="RIGHT" LPM_WIDTH=5 aclr clock data load shiftin shiftout
//VERSION_BEGIN 13.0 cbx_lpm_shiftreg 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END

//synthesis_resources = reg 5 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_tx_inst_shift_reg
	( 
	aclr,
	clock,
	data,
	load,
	shiftin,
	shiftout) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	input   [4:0]  data;
	input   load;
	input   shiftin;
	output   shiftout;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri0   [4:0]  data;
	tri0   load;
	tri1   shiftin;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[4:0]	shift_reg;
	wire  [4:0]  shift_node;

	// synopsys translate_off
	initial
		shift_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) shift_reg <= 5'b0;
		else
			if (load == 1'b1) shift_reg <= data;
			else  shift_reg <= shift_node;
	assign
		shift_node = {shiftin, shift_reg[4:1]},
		shiftout = shift_reg[0];
endmodule //altlvds_tx_inst_shift_reg

//synthesis_resources = cycloneii_io 4 lut 7 reg 71 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altlvds_tx_inst_lvds_tx
	( 
	tx_data_reset,
	tx_in,
	tx_inclock,
	tx_out,
	tx_syncclock) /* synthesis synthesis_clearbox=1 */;
	input   tx_data_reset;
	input   [39:0]  tx_in;
	input   tx_inclock;
	output   [3:0]  tx_out;
	input   tx_syncclock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   tx_data_reset;
	tri0   tx_syncclock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [3:0]   wire_ddio_out_dataout;
	reg	dffe11;
	reg	[2:0]	dffe3a;
	reg	[2:0]	dffe4a;
	reg	[2:0]	dffe5a;
	reg	[2:0]	dffe6a;
	reg	[2:0]	dffe7a;
	reg	[2:0]	dffe8a;
	reg	sync_dffe1a;
	wire  wire_cmpr10_aeb;
	wire  wire_cmpr9_aeb;
	wire  [2:0]   wire_cntr2_q;
	wire  wire_shift_reg12_shiftout;
	wire  wire_shift_reg13_shiftout;
	wire  wire_shift_reg14_shiftout;
	wire  wire_shift_reg15_shiftout;
	wire  wire_shift_reg16_shiftout;
	wire  wire_shift_reg17_shiftout;
	wire  wire_shift_reg18_shiftout;
	wire  wire_shift_reg19_shiftout;
	wire  fast_clock;
	wire  [3:0]  h_input;
	wire  [3:0]  l_input;
	wire  load_signal;
	wire  slow_clock;
	wire  [39:0]  tx_in_wire;
	wire  w_reset;

	altlvds_tx_inst_ddio_out   ddio_out
	( 
	.aclr(w_reset),
	.datain_h(l_input),
	.datain_l(h_input),
	.dataout(wire_ddio_out_dataout),
	.outclock(fast_clock));
	// synopsys translate_off
	initial
		dffe11 = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		  dffe11 <= ((wire_cmpr9_aeb & sync_dffe1a) | (wire_cmpr10_aeb & (~ sync_dffe1a)));
	// synopsys translate_off
	initial
		dffe3a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b1)   dffe3a <= wire_cntr2_q;
	// synopsys translate_off
	initial
		dffe4a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b0)   dffe4a <= wire_cntr2_q;
	// synopsys translate_off
	initial
		dffe5a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b1)   dffe5a <= dffe3a;
	// synopsys translate_off
	initial
		dffe6a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b0)   dffe6a <= dffe4a;
	// synopsys translate_off
	initial
		dffe7a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b0)   dffe7a <= dffe5a;
	// synopsys translate_off
	initial
		dffe8a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b1)   dffe8a <= dffe6a;
	// synopsys translate_off
	initial
		sync_dffe1a = 0;
	// synopsys translate_on
	always @ ( posedge slow_clock or  posedge w_reset)
		if (w_reset == 1'b1) sync_dffe1a <= 1'b0;
		else  sync_dffe1a <= (~ sync_dffe1a);
	altlvds_tx_inst_cmpr   cmpr10
	( 
	.aeb(wire_cmpr10_aeb),
	.dataa(dffe4a),
	.datab(dffe8a));
	altlvds_tx_inst_cmpr   cmpr9
	( 
	.aeb(wire_cmpr9_aeb),
	.dataa(dffe3a),
	.datab(dffe7a));
	altlvds_tx_inst_cntr   cntr2
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.q(wire_cntr2_q),
	.updown(sync_dffe1a));
	altlvds_tx_inst_shift_reg   shift_reg12
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[1], tx_in_wire[3], tx_in_wire[5], tx_in_wire[7], tx_in_wire[9]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg12_shiftout));
	altlvds_tx_inst_shift_reg   shift_reg13
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[0], tx_in_wire[2], tx_in_wire[4], tx_in_wire[6], tx_in_wire[8]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg13_shiftout));
	altlvds_tx_inst_shift_reg   shift_reg14
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[11], tx_in_wire[13], tx_in_wire[15], tx_in_wire[17], tx_in_wire[19]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg14_shiftout));
	altlvds_tx_inst_shift_reg   shift_reg15
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[10], tx_in_wire[12], tx_in_wire[14], tx_in_wire[16], tx_in_wire[18]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg15_shiftout));
	altlvds_tx_inst_shift_reg   shift_reg16
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[21], tx_in_wire[23], tx_in_wire[25], tx_in_wire[27], tx_in_wire[29]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg16_shiftout));
	altlvds_tx_inst_shift_reg   shift_reg17
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[20], tx_in_wire[22], tx_in_wire[24], tx_in_wire[26], tx_in_wire[28]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg17_shiftout));
	altlvds_tx_inst_shift_reg   shift_reg18
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[31], tx_in_wire[33], tx_in_wire[35], tx_in_wire[37], tx_in_wire[39]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg18_shiftout));
	altlvds_tx_inst_shift_reg   shift_reg19
	( 
	.aclr(w_reset),
	.clock(fast_clock),
	.data({tx_in_wire[30], tx_in_wire[32], tx_in_wire[34], tx_in_wire[36], tx_in_wire[38]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg19_shiftout));
	assign
		fast_clock = tx_inclock,
		h_input = {wire_shift_reg19_shiftout, wire_shift_reg17_shiftout, wire_shift_reg15_shiftout, wire_shift_reg13_shiftout},
		l_input = {wire_shift_reg18_shiftout, wire_shift_reg16_shiftout, wire_shift_reg14_shiftout, wire_shift_reg12_shiftout},
		load_signal = dffe11,
		slow_clock = tx_syncclock,
		tx_in_wire = tx_in,
		tx_out = wire_ddio_out_dataout,
		w_reset = tx_data_reset;
endmodule //altlvds_tx_inst_lvds_tx
//VALID FILE
