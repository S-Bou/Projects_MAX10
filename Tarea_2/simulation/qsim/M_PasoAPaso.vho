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

-- DATE "03/06/2021 20:12:42"

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

ENTITY 	M_PasoAPaso IS
    PORT (
	CLK_OUTPUT : OUT std_logic;
	CLK_INPUT : IN std_logic;
	A : OUT std_logic;
	Reset : IN std_logic;
	Enable : IN std_logic;
	Up_Down : IN std_logic;
	Half_Full : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic
	);
END M_PasoAPaso;

-- Design Ports Information
-- CLK_OUTPUT	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Half_Full	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Up_Down	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_INPUT	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF M_PasoAPaso IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_OUTPUT : std_logic;
SIGNAL ww_CLK_INPUT : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Up_Down : std_logic;
SIGNAL ww_Half_Full : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|16~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|16~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|16~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|16~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_INPUT~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \CLK_OUTPUT~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \CLK_INPUT~input_o\ : std_logic;
SIGNAL \CLK_INPUT~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|2~combout\ : std_logic;
SIGNAL \inst|3~feeder_combout\ : std_logic;
SIGNAL \inst|3~q\ : std_logic;
SIGNAL \inst|4~0_combout\ : std_logic;
SIGNAL \inst|4~q\ : std_logic;
SIGNAL \inst|6~combout\ : std_logic;
SIGNAL \inst|5~q\ : std_logic;
SIGNAL \inst|5~clkctrl_outclk\ : std_logic;
SIGNAL \inst|13~combout\ : std_logic;
SIGNAL \inst|12~q\ : std_logic;
SIGNAL \inst|14~0_combout\ : std_logic;
SIGNAL \inst|14~q\ : std_logic;
SIGNAL \inst|19~combout\ : std_logic;
SIGNAL \inst|15~q\ : std_logic;
SIGNAL \inst|16~0_combout\ : std_logic;
SIGNAL \inst|16~feeder_combout\ : std_logic;
SIGNAL \inst|16~q\ : std_logic;
SIGNAL \inst|16~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|2~combout\ : std_logic;
SIGNAL \inst3|3~feeder_combout\ : std_logic;
SIGNAL \inst3|3~q\ : std_logic;
SIGNAL \inst3|4~0_combout\ : std_logic;
SIGNAL \inst3|4~q\ : std_logic;
SIGNAL \inst3|6~combout\ : std_logic;
SIGNAL \inst3|5~q\ : std_logic;
SIGNAL \inst3|5~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|13~combout\ : std_logic;
SIGNAL \inst3|12~q\ : std_logic;
SIGNAL \inst3|14~0_combout\ : std_logic;
SIGNAL \inst3|14~q\ : std_logic;
SIGNAL \inst3|19~combout\ : std_logic;
SIGNAL \inst3|15~q\ : std_logic;
SIGNAL \inst3|16~0_combout\ : std_logic;
SIGNAL \inst3|16~feeder_combout\ : std_logic;
SIGNAL \inst3|16~q\ : std_logic;
SIGNAL \inst3|16~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|2~combout\ : std_logic;
SIGNAL \inst4|3~feeder_combout\ : std_logic;
SIGNAL \inst4|3~q\ : std_logic;
SIGNAL \inst4|4~0_combout\ : std_logic;
SIGNAL \inst4|4~q\ : std_logic;
SIGNAL \inst4|6~combout\ : std_logic;
SIGNAL \inst4|5~q\ : std_logic;
SIGNAL \inst4|5~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|13~combout\ : std_logic;
SIGNAL \inst4|12~q\ : std_logic;
SIGNAL \inst4|14~0_combout\ : std_logic;
SIGNAL \inst4|14~q\ : std_logic;
SIGNAL \inst4|19~combout\ : std_logic;
SIGNAL \inst4|15~q\ : std_logic;
SIGNAL \inst4|16~0_combout\ : std_logic;
SIGNAL \inst4|16~feeder_combout\ : std_logic;
SIGNAL \inst4|16~q\ : std_logic;
SIGNAL \inst4|16~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|13~combout\ : std_logic;
SIGNAL \inst5|12~q\ : std_logic;
SIGNAL \inst5|14~0_combout\ : std_logic;
SIGNAL \inst5|14~q\ : std_logic;
SIGNAL \inst5|19~combout\ : std_logic;
SIGNAL \inst5|15~q\ : std_logic;
SIGNAL \inst5|16~0_combout\ : std_logic;
SIGNAL \inst5|16~feeder_combout\ : std_logic;
SIGNAL \inst5|16~q\ : std_logic;
SIGNAL \Half_Full~input_o\ : std_logic;
SIGNAL \inst5|16~clkctrl_outclk\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \inst1|process_1~0_combout\ : std_logic;
SIGNAL \Up_Down~input_o\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst1|fstate.Q4~q\ : std_logic;
SIGNAL \inst1|Selector2~2_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|Selector2~1_combout\ : std_logic;
SIGNAL \inst1|Selector2~3_combout\ : std_logic;
SIGNAL \inst1|fstate.Q3~q\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|fstate.Q2~q\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~2_combout\ : std_logic;
SIGNAL \inst1|fstate.Q1~q\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \inst1|Selector7~1_combout\ : std_logic;
SIGNAL \inst1|fstate.Q8~q\ : std_logic;
SIGNAL \inst1|Selector6~1_combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~2_combout\ : std_logic;
SIGNAL \inst1|fstate.Q7~q\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|Selector5~1_combout\ : std_logic;
SIGNAL \inst1|fstate.Q6~q\ : std_logic;
SIGNAL \inst1|Selector4~1_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~2_combout\ : std_logic;
SIGNAL \inst1|fstate.Q5~q\ : std_logic;
SIGNAL \inst1|Selector11~0_combout\ : std_logic;
SIGNAL \inst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Selector8~0_combout\ : std_logic;
SIGNAL \inst1|Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_CLK_INPUT~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|ALT_INV_16~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_16~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_5~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|ALT_INV_5~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_16~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_5~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CLK_OUTPUT <= ww_CLK_OUTPUT;
ww_CLK_INPUT <= CLK_INPUT;
A <= ww_A;
ww_Reset <= Reset;
ww_Enable <= Enable;
ww_Up_Down <= Up_Down;
ww_Half_Full <= Half_Full;
B <= ww_B;
C <= ww_C;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|5~q\);

\inst4|16~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|16~q\);

\inst3|5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|5~q\);

\inst5|16~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|16~q\);

\inst4|5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|5~q\);

\inst|16~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|16~q\);

\inst3|16~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|16~q\);

\CLK_INPUT~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_INPUT~input_o\);
\ALT_INV_CLK_INPUT~inputclkctrl_outclk\ <= NOT \CLK_INPUT~inputclkctrl_outclk\;
\inst3|ALT_INV_16~clkctrl_outclk\ <= NOT \inst3|16~clkctrl_outclk\;
\inst|ALT_INV_16~clkctrl_outclk\ <= NOT \inst|16~clkctrl_outclk\;
\inst4|ALT_INV_5~clkctrl_outclk\ <= NOT \inst4|5~clkctrl_outclk\;
\inst3|ALT_INV_5~clkctrl_outclk\ <= NOT \inst3|5~clkctrl_outclk\;
\inst4|ALT_INV_16~clkctrl_outclk\ <= NOT \inst4|16~clkctrl_outclk\;
\inst|ALT_INV_5~clkctrl_outclk\ <= NOT \inst|5~clkctrl_outclk\;
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

-- Location: IOOBUF_X49_Y54_N9
\CLK_OUTPUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|16~q\,
	devoe => ww_devoe,
	o => \CLK_OUTPUT~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector11~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector9~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector8~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector10~0_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\CLK_INPUT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_INPUT,
	o => \CLK_INPUT~input_o\);

-- Location: CLKCTRL_G9
\CLK_INPUT~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_INPUT~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_INPUT~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y39_N28
\inst|2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|2~combout\ = (!\inst|5~q\ & !\inst|3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|5~q\,
	datad => \inst|3~q\,
	combout => \inst|2~combout\);

-- Location: LCCOMB_X77_Y39_N18
\inst|3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|3~feeder_combout\ = \inst|2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|2~combout\,
	combout => \inst|3~feeder_combout\);

-- Location: FF_X77_Y39_N19
\inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_INPUT~inputclkctrl_outclk\,
	d => \inst|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|3~q\);

-- Location: LCCOMB_X77_Y39_N14
\inst|4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|4~0_combout\ = \inst|4~q\ $ (\inst|3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|4~q\,
	datad => \inst|3~q\,
	combout => \inst|4~0_combout\);

-- Location: FF_X77_Y39_N15
\inst|4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_INPUT~inputclkctrl_outclk\,
	d => \inst|4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|4~q\);

-- Location: LCCOMB_X77_Y39_N26
\inst|6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|6~combout\ = (\inst|4~q\ & \inst|3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|4~q\,
	datad => \inst|3~q\,
	combout => \inst|6~combout\);

-- Location: FF_X77_Y39_N27
\inst|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_INPUT~inputclkctrl_outclk\,
	d => \inst|6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|5~q\);

-- Location: CLKCTRL_G8
\inst|5~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|5~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N24
\inst|13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|13~combout\ = (!\inst|12~q\ & !\inst|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|12~q\,
	datad => \inst|15~q\,
	combout => \inst|13~combout\);

-- Location: FF_X1_Y38_N25
\inst|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_5~clkctrl_outclk\,
	d => \inst|13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|12~q\);

-- Location: LCCOMB_X1_Y38_N30
\inst|14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|14~0_combout\ = \inst|14~q\ $ (\inst|12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|14~q\,
	datad => \inst|12~q\,
	combout => \inst|14~0_combout\);

-- Location: FF_X1_Y38_N31
\inst|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_5~clkctrl_outclk\,
	d => \inst|14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|14~q\);

-- Location: LCCOMB_X1_Y38_N28
\inst|19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|19~combout\ = (\inst|12~q\ & \inst|14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|12~q\,
	datac => \inst|14~q\,
	combout => \inst|19~combout\);

-- Location: FF_X1_Y38_N29
\inst|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_5~clkctrl_outclk\,
	d => \inst|19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|15~q\);

-- Location: LCCOMB_X1_Y38_N16
\inst|16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|16~0_combout\ = \inst|16~q\ $ (\inst|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|16~q\,
	datad => \inst|15~q\,
	combout => \inst|16~0_combout\);

-- Location: LCCOMB_X1_Y38_N26
\inst|16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|16~feeder_combout\ = \inst|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|16~0_combout\,
	combout => \inst|16~feeder_combout\);

-- Location: FF_X1_Y38_N27
\inst|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_5~clkctrl_outclk\,
	d => \inst|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|16~q\);

-- Location: CLKCTRL_G1
\inst|16~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|16~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|16~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y1_N26
\inst3|2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|2~combout\ = (!\inst3|5~q\ & !\inst3|3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|5~q\,
	datad => \inst3|3~q\,
	combout => \inst3|2~combout\);

-- Location: LCCOMB_X44_Y1_N24
\inst3|3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|3~feeder_combout\ = \inst3|2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|2~combout\,
	combout => \inst3|3~feeder_combout\);

-- Location: FF_X44_Y1_N25
\inst3|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_16~clkctrl_outclk\,
	d => \inst3|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|3~q\);

-- Location: LCCOMB_X44_Y1_N28
\inst3|4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|4~0_combout\ = \inst3|3~q\ $ (\inst3|4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|3~q\,
	datac => \inst3|4~q\,
	combout => \inst3|4~0_combout\);

-- Location: FF_X44_Y1_N29
\inst3|4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_16~clkctrl_outclk\,
	d => \inst3|4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|4~q\);

-- Location: LCCOMB_X44_Y1_N2
\inst3|6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|6~combout\ = (\inst3|3~q\ & \inst3|4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|3~q\,
	datad => \inst3|4~q\,
	combout => \inst3|6~combout\);

-- Location: FF_X44_Y1_N3
\inst3|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_16~clkctrl_outclk\,
	d => \inst3|6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|5~q\);

-- Location: CLKCTRL_G19
\inst3|5~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|5~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y1_N24
\inst3|13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|13~combout\ = (!\inst3|12~q\ & !\inst3|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|12~q\,
	datad => \inst3|15~q\,
	combout => \inst3|13~combout\);

-- Location: FF_X45_Y1_N25
\inst3|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_5~clkctrl_outclk\,
	d => \inst3|13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|12~q\);

-- Location: LCCOMB_X45_Y1_N30
\inst3|14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|14~0_combout\ = \inst3|14~q\ $ (\inst3|12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|14~q\,
	datad => \inst3|12~q\,
	combout => \inst3|14~0_combout\);

-- Location: FF_X45_Y1_N31
\inst3|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_5~clkctrl_outclk\,
	d => \inst3|14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|14~q\);

-- Location: LCCOMB_X45_Y1_N28
\inst3|19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|19~combout\ = (\inst3|14~q\ & \inst3|12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|14~q\,
	datad => \inst3|12~q\,
	combout => \inst3|19~combout\);

-- Location: FF_X45_Y1_N29
\inst3|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_5~clkctrl_outclk\,
	d => \inst3|19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|15~q\);

-- Location: LCCOMB_X45_Y1_N14
\inst3|16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|16~0_combout\ = \inst3|16~q\ $ (\inst3|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|16~q\,
	datad => \inst3|15~q\,
	combout => \inst3|16~0_combout\);

-- Location: LCCOMB_X45_Y1_N22
\inst3|16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|16~feeder_combout\ = \inst3|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|16~0_combout\,
	combout => \inst3|16~feeder_combout\);

-- Location: FF_X45_Y1_N23
\inst3|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_5~clkctrl_outclk\,
	d => \inst3|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|16~q\);

-- Location: CLKCTRL_G18
\inst3|16~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|16~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|16~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N6
\inst4|2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|2~combout\ = (!\inst4|5~q\ & !\inst4|3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|5~q\,
	datad => \inst4|3~q\,
	combout => \inst4|2~combout\);

-- Location: LCCOMB_X45_Y53_N20
\inst4|3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|3~feeder_combout\ = \inst4|2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|2~combout\,
	combout => \inst4|3~feeder_combout\);

-- Location: FF_X45_Y53_N21
\inst4|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_16~clkctrl_outclk\,
	d => \inst4|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|3~q\);

-- Location: LCCOMB_X45_Y53_N22
\inst4|4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|4~0_combout\ = \inst4|4~q\ $ (\inst4|3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|4~q\,
	datad => \inst4|3~q\,
	combout => \inst4|4~0_combout\);

-- Location: FF_X45_Y53_N23
\inst4|4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_16~clkctrl_outclk\,
	d => \inst4|4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|4~q\);

-- Location: LCCOMB_X45_Y53_N10
\inst4|6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|6~combout\ = (\inst4|4~q\ & \inst4|3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|4~q\,
	datad => \inst4|3~q\,
	combout => \inst4|6~combout\);

-- Location: FF_X45_Y53_N11
\inst4|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_16~clkctrl_outclk\,
	d => \inst4|6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|5~q\);

-- Location: CLKCTRL_G14
\inst4|5~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|5~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y38_N24
\inst4|13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|13~combout\ = (!\inst4|12~q\ & !\inst4|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|12~q\,
	datad => \inst4|15~q\,
	combout => \inst4|13~combout\);

-- Location: FF_X2_Y38_N25
\inst4|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_5~clkctrl_outclk\,
	d => \inst4|13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|12~q\);

-- Location: LCCOMB_X2_Y38_N26
\inst4|14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|14~0_combout\ = \inst4|14~q\ $ (\inst4|12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|14~q\,
	datad => \inst4|12~q\,
	combout => \inst4|14~0_combout\);

-- Location: FF_X2_Y38_N27
\inst4|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_5~clkctrl_outclk\,
	d => \inst4|14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|14~q\);

-- Location: LCCOMB_X2_Y38_N28
\inst4|19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|19~combout\ = (\inst4|12~q\ & \inst4|14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|12~q\,
	datac => \inst4|14~q\,
	combout => \inst4|19~combout\);

-- Location: FF_X2_Y38_N29
\inst4|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_5~clkctrl_outclk\,
	d => \inst4|19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|15~q\);

-- Location: LCCOMB_X2_Y38_N16
\inst4|16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|16~0_combout\ = \inst4|16~q\ $ (\inst4|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|16~q\,
	datad => \inst4|15~q\,
	combout => \inst4|16~0_combout\);

-- Location: LCCOMB_X2_Y38_N2
\inst4|16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|16~feeder_combout\ = \inst4|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|16~0_combout\,
	combout => \inst4|16~feeder_combout\);

-- Location: FF_X2_Y38_N3
\inst4|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_5~clkctrl_outclk\,
	d => \inst4|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|16~q\);

-- Location: CLKCTRL_G4
\inst4|16~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|16~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|16~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y39_N12
\inst5|13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|13~combout\ = (!\inst5|12~q\ & !\inst5|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|12~q\,
	datad => \inst5|15~q\,
	combout => \inst5|13~combout\);

-- Location: FF_X77_Y39_N13
\inst5|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_16~clkctrl_outclk\,
	d => \inst5|13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|12~q\);

-- Location: LCCOMB_X77_Y39_N30
\inst5|14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|14~0_combout\ = \inst5|14~q\ $ (\inst5|12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|14~q\,
	datad => \inst5|12~q\,
	combout => \inst5|14~0_combout\);

-- Location: FF_X77_Y39_N31
\inst5|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_16~clkctrl_outclk\,
	d => \inst5|14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|14~q\);

-- Location: LCCOMB_X77_Y39_N16
\inst5|19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|19~combout\ = (\inst5|12~q\ & \inst5|14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|12~q\,
	datac => \inst5|14~q\,
	combout => \inst5|19~combout\);

-- Location: FF_X77_Y39_N17
\inst5|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_16~clkctrl_outclk\,
	d => \inst5|19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|15~q\);

-- Location: LCCOMB_X77_Y39_N24
\inst5|16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|16~0_combout\ = \inst5|16~q\ $ (\inst5|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|16~q\,
	datad => \inst5|15~q\,
	combout => \inst5|16~0_combout\);

-- Location: LCCOMB_X77_Y39_N20
\inst5|16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|16~feeder_combout\ = \inst5|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|16~0_combout\,
	combout => \inst5|16~feeder_combout\);

-- Location: FF_X77_Y39_N21
\inst5|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_16~clkctrl_outclk\,
	d => \inst5|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|16~q\);

-- Location: IOIBUF_X51_Y54_N22
\Half_Full~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Half_Full,
	o => \Half_Full~input_o\);

-- Location: CLKCTRL_G5
\inst5|16~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|16~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|16~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\Enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: LCCOMB_X46_Y50_N16
\inst1|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|process_1~0_combout\ = (\Half_Full~input_o\ & \Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Half_Full~input_o\,
	datac => \Enable~input_o\,
	combout => \inst1|process_1~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\Up_Down~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Up_Down,
	o => \Up_Down~input_o\);

-- Location: LCCOMB_X46_Y50_N28
\inst1|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|process_1~0_combout\ & (\Up_Down~input_o\ & (\inst1|fstate.Q3~q\))) # (!\inst1|process_1~0_combout\ & (((\inst1|fstate.Q4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up_Down~input_o\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|fstate.Q3~q\,
	datad => \inst1|fstate.Q4~q\,
	combout => \inst1|Selector3~0_combout\);

-- Location: LCCOMB_X46_Y50_N10
\inst1|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = (\inst1|Selector3~0_combout\) # ((\inst1|process_1~0_combout\ & (\inst1|fstate.Q5~q\ & !\Up_Down~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|fstate.Q5~q\,
	datac => \Up_Down~input_o\,
	datad => \inst1|Selector3~0_combout\,
	combout => \inst1|Selector3~1_combout\);

-- Location: IOIBUF_X51_Y54_N1
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X46_Y50_N11
\inst1|fstate.Q4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector3~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q4~q\);

-- Location: LCCOMB_X46_Y50_N26
\inst1|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector2~2_combout\ = (\inst1|process_1~0_combout\ & ((\Up_Down~input_o\ & (\inst1|fstate.Q2~q\)) # (!\Up_Down~input_o\ & ((\inst1|fstate.Q4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up_Down~input_o\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|fstate.Q2~q\,
	datad => \inst1|fstate.Q4~q\,
	combout => \inst1|Selector2~2_combout\);

-- Location: LCCOMB_X46_Y50_N14
\inst1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (!\Half_Full~input_o\ & \Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Half_Full~input_o\,
	datac => \Enable~input_o\,
	combout => \inst1|Selector2~0_combout\);

-- Location: LCCOMB_X47_Y50_N6
\inst1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector2~1_combout\ = (\inst1|Selector2~0_combout\ & ((\Up_Down~input_o\ & (!\inst1|fstate.Q1~q\)) # (!\Up_Down~input_o\ & ((\inst1|fstate.Q5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector2~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q1~q\,
	datad => \inst1|fstate.Q5~q\,
	combout => \inst1|Selector2~1_combout\);

-- Location: LCCOMB_X46_Y50_N8
\inst1|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector2~3_combout\ = (\inst1|Selector2~2_combout\) # ((\inst1|Selector2~1_combout\) # ((!\Enable~input_o\ & \inst1|fstate.Q3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector2~2_combout\,
	datab => \Enable~input_o\,
	datac => \inst1|fstate.Q3~q\,
	datad => \inst1|Selector2~1_combout\,
	combout => \inst1|Selector2~3_combout\);

-- Location: FF_X46_Y50_N9
\inst1|fstate.Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector2~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q3~q\);

-- Location: LCCOMB_X46_Y50_N6
\inst1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|process_1~0_combout\ & (\Up_Down~input_o\ & (!\inst1|fstate.Q1~q\))) # (!\inst1|process_1~0_combout\ & (((\inst1|fstate.Q2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up_Down~input_o\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|fstate.Q1~q\,
	datad => \inst1|fstate.Q2~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: LCCOMB_X46_Y50_N22
\inst1|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector1~1_combout\ = (\inst1|Selector1~0_combout\) # ((!\Up_Down~input_o\ & (\inst1|process_1~0_combout\ & \inst1|fstate.Q3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up_Down~input_o\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|fstate.Q3~q\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector1~1_combout\);

-- Location: FF_X46_Y50_N23
\inst1|fstate.Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector1~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q2~q\);

-- Location: LCCOMB_X47_Y50_N12
\inst1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = (\inst1|process_1~0_combout\ & ((\Up_Down~input_o\ & (\inst1|fstate.Q8~q\)) # (!\Up_Down~input_o\ & ((\inst1|fstate.Q2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q8~q\,
	datad => \inst1|fstate.Q2~q\,
	combout => \inst1|Selector0~1_combout\);

-- Location: LCCOMB_X47_Y50_N2
\inst1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|Selector2~0_combout\ & ((\Up_Down~input_o\ & (\inst1|fstate.Q7~q\)) # (!\Up_Down~input_o\ & ((\inst1|fstate.Q3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector2~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q7~q\,
	datad => \inst1|fstate.Q3~q\,
	combout => \inst1|Selector0~0_combout\);

-- Location: LCCOMB_X47_Y50_N30
\inst1|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector0~2_combout\ = (!\inst1|Selector0~1_combout\ & (!\inst1|Selector0~0_combout\ & ((\Enable~input_o\) # (\inst1|fstate.Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector0~1_combout\,
	datab => \Enable~input_o\,
	datac => \inst1|fstate.Q1~q\,
	datad => \inst1|Selector0~0_combout\,
	combout => \inst1|Selector0~2_combout\);

-- Location: FF_X47_Y50_N31
\inst1|fstate.Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector0~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q1~q\);

-- Location: LCCOMB_X47_Y50_N20
\inst1|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = (\inst1|process_1~0_combout\ & (!\Up_Down~input_o\ & ((!\inst1|fstate.Q1~q\)))) # (!\inst1|process_1~0_combout\ & (((\inst1|fstate.Q8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q8~q\,
	datad => \inst1|fstate.Q1~q\,
	combout => \inst1|Selector7~0_combout\);

-- Location: LCCOMB_X47_Y50_N8
\inst1|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector7~1_combout\ = (\inst1|Selector7~0_combout\) # ((\inst1|process_1~0_combout\ & (\Up_Down~input_o\ & \inst1|fstate.Q7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q7~q\,
	datad => \inst1|Selector7~0_combout\,
	combout => \inst1|Selector7~1_combout\);

-- Location: FF_X47_Y50_N9
\inst1|fstate.Q8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector7~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q8~q\);

-- Location: LCCOMB_X47_Y50_N10
\inst1|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (\inst1|process_1~0_combout\ & ((\Up_Down~input_o\ & (\inst1|fstate.Q6~q\)) # (!\Up_Down~input_o\ & ((\inst1|fstate.Q8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|fstate.Q6~q\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|fstate.Q8~q\,
	datad => \Up_Down~input_o\,
	combout => \inst1|Selector6~1_combout\);

-- Location: LCCOMB_X47_Y50_N0
\inst1|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|Selector2~0_combout\ & ((\Up_Down~input_o\ & ((\inst1|fstate.Q5~q\))) # (!\Up_Down~input_o\ & (!\inst1|fstate.Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector2~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q1~q\,
	datad => \inst1|fstate.Q5~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X47_Y50_N26
\inst1|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector6~2_combout\ = (\inst1|Selector6~1_combout\) # ((\inst1|Selector6~0_combout\) # ((!\Enable~input_o\ & \inst1|fstate.Q7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \inst1|Selector6~1_combout\,
	datac => \inst1|fstate.Q7~q\,
	datad => \inst1|Selector6~0_combout\,
	combout => \inst1|Selector6~2_combout\);

-- Location: FF_X47_Y50_N27
\inst1|fstate.Q7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector6~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q7~q\);

-- Location: LCCOMB_X47_Y50_N18
\inst1|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = (\inst1|process_1~0_combout\ & (\Up_Down~input_o\ & ((\inst1|fstate.Q5~q\)))) # (!\inst1|process_1~0_combout\ & (((\inst1|fstate.Q6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q6~q\,
	datad => \inst1|fstate.Q5~q\,
	combout => \inst1|Selector5~0_combout\);

-- Location: LCCOMB_X47_Y50_N22
\inst1|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector5~1_combout\ = (\inst1|Selector5~0_combout\) # ((\inst1|process_1~0_combout\ & (!\Up_Down~input_o\ & \inst1|fstate.Q7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q7~q\,
	datad => \inst1|Selector5~0_combout\,
	combout => \inst1|Selector5~1_combout\);

-- Location: FF_X47_Y50_N23
\inst1|fstate.Q6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector5~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q6~q\);

-- Location: LCCOMB_X47_Y50_N14
\inst1|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector4~1_combout\ = (\inst1|process_1~0_combout\ & ((\Up_Down~input_o\ & ((\inst1|fstate.Q4~q\))) # (!\Up_Down~input_o\ & (\inst1|fstate.Q6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q6~q\,
	datad => \inst1|fstate.Q4~q\,
	combout => \inst1|Selector4~1_combout\);

-- Location: LCCOMB_X47_Y50_N16
\inst1|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|Selector2~0_combout\ & ((\Up_Down~input_o\ & ((\inst1|fstate.Q3~q\))) # (!\Up_Down~input_o\ & (\inst1|fstate.Q7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector2~0_combout\,
	datab => \Up_Down~input_o\,
	datac => \inst1|fstate.Q7~q\,
	datad => \inst1|fstate.Q3~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: LCCOMB_X47_Y50_N28
\inst1|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector4~2_combout\ = (\inst1|Selector4~1_combout\) # ((\inst1|Selector4~0_combout\) # ((!\Enable~input_o\ & \inst1|fstate.Q5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \inst1|Selector4~1_combout\,
	datac => \inst1|fstate.Q5~q\,
	datad => \inst1|Selector4~0_combout\,
	combout => \inst1|Selector4~2_combout\);

-- Location: FF_X47_Y50_N29
\inst1|fstate.Q5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|16~clkctrl_outclk\,
	d => \inst1|Selector4~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.Q5~q\);

-- Location: LCCOMB_X46_Y50_N4
\inst1|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector11~0_combout\ = (\inst1|fstate.Q5~q\) # ((\inst1|fstate.Q3~q\) # ((\Half_Full~input_o\ & \inst1|fstate.Q4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Half_Full~input_o\,
	datab => \inst1|fstate.Q5~q\,
	datac => \inst1|fstate.Q3~q\,
	datad => \inst1|fstate.Q4~q\,
	combout => \inst1|Selector11~0_combout\);

-- Location: LCCOMB_X47_Y50_N24
\inst1|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector9~0_combout\ = ((\inst1|fstate.Q7~q\) # ((\inst1|fstate.Q8~q\ & \Half_Full~input_o\))) # (!\inst1|fstate.Q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|fstate.Q1~q\,
	datab => \inst1|fstate.Q8~q\,
	datac => \inst1|fstate.Q7~q\,
	datad => \Half_Full~input_o\,
	combout => \inst1|Selector9~0_combout\);

-- Location: LCCOMB_X47_Y50_N4
\inst1|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector8~0_combout\ = (\inst1|fstate.Q7~q\) # ((\inst1|fstate.Q5~q\) # ((\Half_Full~input_o\ & \inst1|fstate.Q6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|fstate.Q7~q\,
	datab => \inst1|fstate.Q5~q\,
	datac => \Half_Full~input_o\,
	datad => \inst1|fstate.Q6~q\,
	combout => \inst1|Selector8~0_combout\);

-- Location: LCCOMB_X46_Y50_N20
\inst1|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector10~0_combout\ = (\inst1|fstate.Q3~q\) # (((\inst1|fstate.Q2~q\ & \Half_Full~input_o\)) # (!\inst1|fstate.Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|fstate.Q2~q\,
	datab => \inst1|fstate.Q3~q\,
	datac => \Half_Full~input_o\,
	datad => \inst1|fstate.Q1~q\,
	combout => \inst1|Selector10~0_combout\);

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

ww_CLK_OUTPUT <= \CLK_OUTPUT~output_o\;

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


