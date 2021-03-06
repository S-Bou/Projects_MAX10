-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/06/2021 18:39:12"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AntiRebotes IS
    PORT (
	L9 : OUT std_logic;
	CLK : IN std_logic;
	Reset_KEY1 : IN std_logic;
	Pulse_KEY0 : IN std_logic;
	L8 : OUT std_logic;
	L7 : OUT std_logic;
	L6 : OUT std_logic;
	OUT_SIN : OUT std_logic
	);
END AntiRebotes;

-- Design Ports Information
-- L9	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L8	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L7	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L6	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SIN	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_KEY1	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pulse_KEY0	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AntiRebotes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_L9 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset_KEY1 : std_logic;
SIGNAL ww_Pulse_KEY0 : std_logic;
SIGNAL ww_L8 : std_logic;
SIGNAL ww_L7 : std_logic;
SIGNAL ww_L6 : std_logic;
SIGNAL ww_OUT_SIN : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset_KEY1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \L9~output_o\ : std_logic;
SIGNAL \L8~output_o\ : std_logic;
SIGNAL \L7~output_o\ : std_logic;
SIGNAL \L6~output_o\ : std_logic;
SIGNAL \OUT_SIN~output_o\ : std_logic;
SIGNAL \Reset_KEY1~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Pulse_KEY0~input_o\ : std_logic;
SIGNAL \inst|inst~feeder_combout\ : std_logic;
SIGNAL \Reset_KEY1~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst666|reg_fstate.Q0~0_combout\ : std_logic;
SIGNAL \inst666|fstate.Q2~q\ : std_logic;
SIGNAL \inst666|Led_8~0_combout\ : std_logic;
SIGNAL \inst666|fstate.Q3~q\ : std_logic;
SIGNAL \inst666|Led_7~0_combout\ : std_logic;
SIGNAL \inst666|fstate.Q4~q\ : std_logic;
SIGNAL \inst666|reg_fstate.Q0~1_combout\ : std_logic;
SIGNAL \inst666|fstate.Q0~q\ : std_logic;
SIGNAL \inst666|reg_fstate.Q1~0_combout\ : std_logic;
SIGNAL \inst666|fstate.Q1~q\ : std_logic;
SIGNAL \inst666|Led_9~0_combout\ : std_logic;
SIGNAL \inst666|Led_6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

L9 <= ww_L9;
ww_CLK <= CLK;
ww_Reset_KEY1 <= Reset_KEY1;
ww_Pulse_KEY0 <= Pulse_KEY0;
L8 <= ww_L8;
L7 <= ww_L7;
L6 <= ww_L6;
OUT_SIN <= ww_OUT_SIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset_KEY1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset_KEY1~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y39_N30
\L9~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst666|Led_9~0_combout\,
	devoe => ww_devoe,
	o => \L9~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\L8~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst666|Led_8~0_combout\,
	devoe => ww_devoe,
	o => \L8~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\L7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst666|Led_7~0_combout\,
	devoe => ww_devoe,
	o => \L7~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\L6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst666|Led_6~0_combout\,
	devoe => ww_devoe,
	o => \L6~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\OUT_SIN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \OUT_SIN~output_o\);

-- Location: IOIBUF_X0_Y18_N22
\Reset_KEY1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_KEY1,
	o => \Reset_KEY1~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y39_N8
\Pulse_KEY0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pulse_KEY0,
	o => \Pulse_KEY0~input_o\);

-- Location: LCCOMB_X24_Y38_N30
\inst|inst~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~feeder_combout\ = \Pulse_KEY0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_KEY0~input_o\,
	combout => \inst|inst~feeder_combout\);

-- Location: CLKCTRL_G4
\Reset_KEY1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_KEY1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_KEY1~inputclkctrl_outclk\);

-- Location: FF_X24_Y38_N31
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst~feeder_combout\,
	clrn => \Reset_KEY1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: FF_X24_Y38_N23
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst~q\,
	clrn => \Reset_KEY1~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X24_Y38_N24
\inst666|reg_fstate.Q0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst666|reg_fstate.Q0~0_combout\ = (\Reset_KEY1~input_o\) # (\inst|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datad => \inst|inst1~q\,
	combout => \inst666|reg_fstate.Q0~0_combout\);

-- Location: FF_X24_Y38_N25
\inst666|fstate.Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst666|Led_9~0_combout\,
	sload => VCC,
	ena => \inst666|reg_fstate.Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst666|fstate.Q2~q\);

-- Location: LCCOMB_X24_Y38_N26
\inst666|Led_8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst666|Led_8~0_combout\ = (!\Reset_KEY1~input_o\ & \inst666|fstate.Q2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datac => \inst666|fstate.Q2~q\,
	combout => \inst666|Led_8~0_combout\);

-- Location: FF_X24_Y38_N27
\inst666|fstate.Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst666|Led_8~0_combout\,
	ena => \inst666|reg_fstate.Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst666|fstate.Q3~q\);

-- Location: LCCOMB_X24_Y38_N20
\inst666|Led_7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst666|Led_7~0_combout\ = (!\Reset_KEY1~input_o\ & \inst666|fstate.Q3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datac => \inst666|fstate.Q3~q\,
	combout => \inst666|Led_7~0_combout\);

-- Location: FF_X24_Y38_N21
\inst666|fstate.Q4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst666|Led_7~0_combout\,
	ena => \inst666|reg_fstate.Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst666|fstate.Q4~q\);

-- Location: LCCOMB_X24_Y38_N28
\inst666|reg_fstate.Q0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst666|reg_fstate.Q0~1_combout\ = (!\Reset_KEY1~input_o\ & !\inst666|fstate.Q4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datad => \inst666|fstate.Q4~q\,
	combout => \inst666|reg_fstate.Q0~1_combout\);

-- Location: FF_X24_Y38_N29
\inst666|fstate.Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst666|reg_fstate.Q0~1_combout\,
	ena => \inst666|reg_fstate.Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst666|fstate.Q0~q\);

-- Location: LCCOMB_X24_Y38_N12
\inst666|reg_fstate.Q1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst666|reg_fstate.Q1~0_combout\ = (!\Reset_KEY1~input_o\ & !\inst666|fstate.Q0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datad => \inst666|fstate.Q0~q\,
	combout => \inst666|reg_fstate.Q1~0_combout\);

-- Location: FF_X24_Y38_N13
\inst666|fstate.Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst666|reg_fstate.Q1~0_combout\,
	ena => \inst666|reg_fstate.Q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst666|fstate.Q1~q\);

-- Location: LCCOMB_X24_Y38_N22
\inst666|Led_9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst666|Led_9~0_combout\ = (!\Reset_KEY1~input_o\ & \inst666|fstate.Q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datad => \inst666|fstate.Q1~q\,
	combout => \inst666|Led_9~0_combout\);

-- Location: LCCOMB_X24_Y38_N18
\inst666|Led_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst666|Led_6~0_combout\ = (!\Reset_KEY1~input_o\ & \inst666|fstate.Q4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datad => \inst666|fstate.Q4~q\,
	combout => \inst666|Led_6~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_L9 <= \L9~output_o\;

ww_L8 <= \L8~output_o\;

ww_L7 <= \L7~output_o\;

ww_L6 <= \L6~output_o\;

ww_OUT_SIN <= \OUT_SIN~output_o\;
END structure;


