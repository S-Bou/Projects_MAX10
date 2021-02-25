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

-- DATE "02/25/2021 10:57:17"

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

ENTITY 	Practica_4 IS
    PORT (
	OPERATE : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	MONO : IN std_logic;
	S : IN std_logic_vector(8 DOWNTO 0);
	PULSES : IN std_logic;
	ALARM : OUT std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	c1 : OUT std_logic;
	d1 : OUT std_logic;
	e1 : OUT std_logic;
	f1 : OUT std_logic;
	g1 : OUT std_logic;
	a_1 : OUT std_logic;
	b_1 : OUT std_logic
	);
END Practica_4;

-- Design Ports Information
-- OPERATE	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALARM	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_1	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_1	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONO	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PULSES	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OPERATE : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_MONO : std_logic;
SIGNAL ww_S : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_PULSES : std_logic;
SIGNAL ww_ALARM : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_a_1 : std_logic;
SIGNAL ww_b_1 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst22~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OPERATE~output_o\ : std_logic;
SIGNAL \ALARM~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \a_1~output_o\ : std_logic;
SIGNAL \b_1~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst18|inst~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst18|inst~q\ : std_logic;
SIGNAL \inst18|inst1~feeder_combout\ : std_logic;
SIGNAL \inst18|inst1~q\ : std_logic;
SIGNAL \S[6]~input_o\ : std_logic;
SIGNAL \S[7]~input_o\ : std_logic;
SIGNAL \S[8]~input_o\ : std_logic;
SIGNAL \inst12|5~0_combout\ : std_logic;
SIGNAL \S[5]~input_o\ : std_logic;
SIGNAL \S[4]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[3]~input_o\ : std_logic;
SIGNAL \inst|8~0_combout\ : std_logic;
SIGNAL \inst|8~1_combout\ : std_logic;
SIGNAL \PULSES~input_o\ : std_logic;
SIGNAL \inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst17|inst~q\ : std_logic;
SIGNAL \inst17|inst1~feeder_combout\ : std_logic;
SIGNAL \inst17|inst1~q\ : std_logic;
SIGNAL \inst19~q\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;
SIGNAL \inst22~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|sub|16~0_combout\ : std_logic;
SIGNAL \inst1|sub|16~q\ : std_logic;
SIGNAL \inst13|84~1_combout\ : std_logic;
SIGNAL \inst1|sub|17~q\ : std_logic;
SIGNAL \inst|9~2_combout\ : std_logic;
SIGNAL \inst1|sub|18~0_combout\ : std_logic;
SIGNAL \inst1|sub|18~q\ : std_logic;
SIGNAL \inst1|sub|19~0_combout\ : std_logic;
SIGNAL \inst1|sub|19~q\ : std_logic;
SIGNAL \inst2|sub|109~0_combout\ : std_logic;
SIGNAL \inst|7~4_combout\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \inst|7~2_combout\ : std_logic;
SIGNAL \inst|7~3_combout\ : std_logic;
SIGNAL \inst2|sub|109~1_combout\ : std_logic;
SIGNAL \inst2|sub|109~2_combout\ : std_logic;
SIGNAL \inst20~q\ : std_logic;
SIGNAL \MONO~input_o\ : std_logic;
SIGNAL \inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst25|inst~q\ : std_logic;
SIGNAL \inst25|inst1~q\ : std_logic;
SIGNAL \inst11|reg_fstate.Q2~0_combout\ : std_logic;
SIGNAL \inst11|fstate.Q2~q\ : std_logic;
SIGNAL \inst11|OPERATE~0_combout\ : std_logic;
SIGNAL \inst11|reg_fstate.Q0~0_combout\ : std_logic;
SIGNAL \inst11|reg_fstate.Q0~1_combout\ : std_logic;
SIGNAL \inst11|fstate.Q0~q\ : std_logic;
SIGNAL \inst11|reg_fstate.Q1~0_combout\ : std_logic;
SIGNAL \inst11|reg_fstate.Q1~1_combout\ : std_logic;
SIGNAL \inst11|fstate.Q1~q\ : std_logic;
SIGNAL \inst11|ALARM~0_combout\ : std_logic;
SIGNAL \inst|7~5_combout\ : std_logic;
SIGNAL \inst|9~3_combout\ : std_logic;
SIGNAL \inst12|81~combout\ : std_logic;
SIGNAL \inst12|82~3_combout\ : std_logic;
SIGNAL \inst12|82~9_combout\ : std_logic;
SIGNAL \inst12|5~1_combout\ : std_logic;
SIGNAL \inst12|84~0_combout\ : std_logic;
SIGNAL \inst12|85~combout\ : std_logic;
SIGNAL \inst12|86~0_combout\ : std_logic;
SIGNAL \inst12|87~combout\ : std_logic;
SIGNAL \inst13|83~combout\ : std_logic;
SIGNAL \inst13|84~0_combout\ : std_logic;
SIGNAL \inst13|85~combout\ : std_logic;
SIGNAL \inst13|86~0_combout\ : std_logic;
SIGNAL \inst13|87~combout\ : std_logic;
SIGNAL \inst13|81~0_combout\ : std_logic;
SIGNAL \inst13|82~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_OPERATE~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_inst1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

OPERATE <= ww_OPERATE;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_MONO <= MONO;
ww_S <= S;
ww_PULSES <= PULSES;
ALARM <= ww_ALARM;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
a_1 <= ww_a_1;
b_1 <= ww_b_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst22~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst22~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst11|ALT_INV_OPERATE~0_combout\ <= NOT \inst11|OPERATE~0_combout\;
\inst18|ALT_INV_inst1~q\ <= NOT \inst18|inst1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N20
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

-- Location: IOOBUF_X0_Y34_N23
\OPERATE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_OPERATE~0_combout\,
	devoe => ww_devoe,
	o => \OPERATE~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\ALARM~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALARM~0_combout\,
	devoe => ww_devoe,
	o => \ALARM~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\a~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|81~combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|82~9_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|5~1_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|84~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\e~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|85~combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|86~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\g~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|87~combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\c1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|83~combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\d1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|84~0_combout\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\e1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|85~combout\,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\f1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|86~0_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\g1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|87~combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\a_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|81~0_combout\,
	devoe => ww_devoe,
	o => \a_1~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\b_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|82~0_combout\,
	devoe => ww_devoe,
	o => \b_1~output_o\);

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

-- Location: LCCOMB_X18_Y33_N18
\inst18|inst~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst18|inst~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X18_Y33_N19
\inst18|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|inst~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|inst~q\);

-- Location: LCCOMB_X18_Y33_N8
\inst18|inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst1~feeder_combout\ = \inst18|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|inst~q\,
	combout => \inst18|inst1~feeder_combout\);

-- Location: FF_X18_Y33_N9
\inst18|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|inst1~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|inst1~q\);

-- Location: IOIBUF_X29_Y39_N8
\S[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(6),
	o => \S[6]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\S[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(7),
	o => \S[7]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\S[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(8),
	o => \S[8]~input_o\);

-- Location: LCCOMB_X27_Y37_N12
\inst12|5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|5~0_combout\ = (\S[7]~input_o\ & \S[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[7]~input_o\,
	datad => \S[8]~input_o\,
	combout => \inst12|5~0_combout\);

-- Location: IOIBUF_X31_Y39_N15
\S[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(5),
	o => \S[5]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\S[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(4),
	o => \S[4]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\S[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\S[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\S[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(3),
	o => \S[3]~input_o\);

-- Location: LCCOMB_X27_Y37_N28
\inst|8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|8~0_combout\ = (\S[4]~input_o\ & (\S[3]~input_o\ & ((!\S[1]~input_o\) # (!\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[4]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \S[3]~input_o\,
	combout => \inst|8~0_combout\);

-- Location: LCCOMB_X27_Y37_N18
\inst|8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|8~1_combout\ = (\inst12|5~0_combout\ & (((\inst|8~0_combout\) # (!\S[5]~input_o\)) # (!\S[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[6]~input_o\,
	datab => \inst12|5~0_combout\,
	datac => \S[5]~input_o\,
	datad => \inst|8~0_combout\,
	combout => \inst|8~1_combout\);

-- Location: IOIBUF_X20_Y39_N8
\PULSES~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PULSES,
	o => \PULSES~input_o\);

-- Location: LCCOMB_X17_Y33_N28
\inst17|inst~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst~feeder_combout\ = \PULSES~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PULSES~input_o\,
	combout => \inst17|inst~feeder_combout\);

-- Location: FF_X17_Y33_N29
\inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|inst~feeder_combout\,
	clrn => \inst18|ALT_INV_inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst~q\);

-- Location: LCCOMB_X17_Y33_N10
\inst17|inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst1~feeder_combout\ = \inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst17|inst~q\,
	combout => \inst17|inst1~feeder_combout\);

-- Location: FF_X17_Y33_N11
\inst17|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|inst1~feeder_combout\,
	clrn => \inst18|ALT_INV_inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst1~q\);

-- Location: FF_X17_Y33_N17
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst17|inst1~q\,
	clrn => \inst18|ALT_INV_inst1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

-- Location: LCCOMB_X17_Y33_N16
inst22 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~combout\ = LCELL((!\inst19~q\ & \inst17|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19~q\,
	datad => \inst17|inst1~q\,
	combout => \inst22~combout\);

-- Location: CLKCTRL_G2
\inst22~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst22~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst22~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y33_N10
\inst1|sub|16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|16~0_combout\ = !\inst1|sub|16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sub|16~q\,
	combout => \inst1|sub|16~0_combout\);

-- Location: FF_X19_Y33_N11
\inst1|sub|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst1|sub|16~0_combout\,
	clrn => \inst11|ALT_INV_OPERATE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|16~q\);

-- Location: LCCOMB_X19_Y33_N16
\inst13|84~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|84~1_combout\ = \inst1|sub|17~q\ $ (\inst1|sub|16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sub|17~q\,
	datad => \inst1|sub|16~q\,
	combout => \inst13|84~1_combout\);

-- Location: FF_X19_Y33_N17
\inst1|sub|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst13|84~1_combout\,
	clrn => \inst11|ALT_INV_OPERATE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|17~q\);

-- Location: LCCOMB_X27_Y37_N30
\inst|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|9~2_combout\ = (((!\S[3]~input_o\) # (!\S[4]~input_o\)) # (!\S[5]~input_o\)) # (!\S[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[6]~input_o\,
	datab => \S[5]~input_o\,
	datac => \S[4]~input_o\,
	datad => \S[3]~input_o\,
	combout => \inst|9~2_combout\);

-- Location: LCCOMB_X19_Y33_N30
\inst1|sub|18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|18~0_combout\ = \inst1|sub|18~q\ $ (((\inst1|sub|17~q\ & \inst1|sub|16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sub|17~q\,
	datac => \inst1|sub|18~q\,
	datad => \inst1|sub|16~q\,
	combout => \inst1|sub|18~0_combout\);

-- Location: FF_X19_Y33_N31
\inst1|sub|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst1|sub|18~0_combout\,
	clrn => \inst11|ALT_INV_OPERATE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|18~q\);

-- Location: LCCOMB_X19_Y33_N28
\inst1|sub|19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|19~0_combout\ = \inst1|sub|19~q\ $ (((\inst1|sub|18~q\ & (\inst1|sub|17~q\ & \inst1|sub|16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|18~q\,
	datab => \inst1|sub|17~q\,
	datac => \inst1|sub|19~q\,
	datad => \inst1|sub|16~q\,
	combout => \inst1|sub|19~0_combout\);

-- Location: FF_X19_Y33_N29
\inst1|sub|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst1|sub|19~0_combout\,
	clrn => \inst11|ALT_INV_OPERATE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|19~q\);

-- Location: LCCOMB_X19_Y33_N26
\inst2|sub|109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|109~0_combout\ = (\inst12|5~0_combout\ & ((\inst1|sub|19~q\) # (\inst|9~2_combout\ $ (\inst1|sub|18~q\)))) # (!\inst12|5~0_combout\ & (((\inst1|sub|18~q\) # (!\inst1|sub|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|5~0_combout\,
	datab => \inst|9~2_combout\,
	datac => \inst1|sub|18~q\,
	datad => \inst1|sub|19~q\,
	combout => \inst2|sub|109~0_combout\);

-- Location: LCCOMB_X27_Y37_N0
\inst|7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|7~4_combout\ = ((\S[7]~input_o\ & !\S[6]~input_o\)) # (!\S[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[7]~input_o\,
	datac => \S[6]~input_o\,
	datad => \S[8]~input_o\,
	combout => \inst|7~4_combout\);

-- Location: IOIBUF_X31_Y39_N8
\S[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LCCOMB_X27_Y37_N20
\inst|7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|7~2_combout\ = (\S[3]~input_o\ & (((!\S[0]~input_o\ & \S[1]~input_o\)) # (!\S[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \S[3]~input_o\,
	combout => \inst|7~2_combout\);

-- Location: LCCOMB_X27_Y37_N22
\inst|7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|7~3_combout\ = (\inst12|5~0_combout\ & (\S[5]~input_o\ & ((\inst|7~2_combout\) # (!\S[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[4]~input_o\,
	datab => \inst12|5~0_combout\,
	datac => \S[5]~input_o\,
	datad => \inst|7~2_combout\,
	combout => \inst|7~3_combout\);

-- Location: LCCOMB_X19_Y33_N0
\inst2|sub|109~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|109~1_combout\ = \inst1|sub|16~q\ $ (((\inst|7~4_combout\) # (\inst|7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|7~4_combout\,
	datab => \inst|7~3_combout\,
	datad => \inst1|sub|16~q\,
	combout => \inst2|sub|109~1_combout\);

-- Location: LCCOMB_X19_Y33_N20
\inst2|sub|109~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|109~2_combout\ = (!\inst2|sub|109~0_combout\ & (!\inst2|sub|109~1_combout\ & (\inst|8~1_combout\ $ (!\inst1|sub|17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|8~1_combout\,
	datab => \inst1|sub|17~q\,
	datac => \inst2|sub|109~0_combout\,
	datad => \inst2|sub|109~1_combout\,
	combout => \inst2|sub|109~2_combout\);

-- Location: FF_X19_Y33_N21
inst20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|sub|109~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20~q\);

-- Location: IOIBUF_X20_Y39_N15
\MONO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MONO,
	o => \MONO~input_o\);

-- Location: LCCOMB_X17_Y33_N30
\inst25|inst~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst~feeder_combout\ = \MONO~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MONO~input_o\,
	combout => \inst25|inst~feeder_combout\);

-- Location: FF_X17_Y33_N31
\inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst25|inst~feeder_combout\,
	clrn => \inst18|ALT_INV_inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst~q\);

-- Location: FF_X17_Y33_N23
\inst25|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst25|inst~q\,
	clrn => \inst18|ALT_INV_inst1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst1~q\);

-- Location: LCCOMB_X18_Y33_N6
\inst11|reg_fstate.Q2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|reg_fstate.Q2~0_combout\ = (!\inst20~q\ & (!\inst18|inst1~q\ & ((\inst11|fstate.Q2~q\) # (!\inst25|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~q\,
	datab => \inst18|inst1~q\,
	datac => \inst11|fstate.Q2~q\,
	datad => \inst25|inst1~q\,
	combout => \inst11|reg_fstate.Q2~0_combout\);

-- Location: FF_X18_Y33_N7
\inst11|fstate.Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|reg_fstate.Q2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|fstate.Q2~q\);

-- Location: LCCOMB_X18_Y33_N12
\inst11|OPERATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|OPERATE~0_combout\ = (\inst18|inst1~q\) # (!\inst11|fstate.Q2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst1~q\,
	datad => \inst11|fstate.Q2~q\,
	combout => \inst11|OPERATE~0_combout\);

-- Location: LCCOMB_X17_Y33_N24
\inst11|reg_fstate.Q0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|reg_fstate.Q0~0_combout\ = (\inst11|fstate.Q2~q\ & (\inst20~q\)) # (!\inst11|fstate.Q2~q\ & (\inst25|inst1~q\ & ((!\inst11|fstate.Q1~q\) # (!\inst20~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~q\,
	datab => \inst11|fstate.Q1~q\,
	datac => \inst25|inst1~q\,
	datad => \inst11|fstate.Q2~q\,
	combout => \inst11|reg_fstate.Q0~0_combout\);

-- Location: LCCOMB_X17_Y33_N26
\inst11|reg_fstate.Q0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|reg_fstate.Q0~1_combout\ = (!\inst18|inst1~q\ & !\inst11|reg_fstate.Q0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst1~q\,
	datad => \inst11|reg_fstate.Q0~0_combout\,
	combout => \inst11|reg_fstate.Q0~1_combout\);

-- Location: FF_X17_Y33_N27
\inst11|fstate.Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|reg_fstate.Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|fstate.Q0~q\);

-- Location: LCCOMB_X17_Y33_N20
\inst11|reg_fstate.Q1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|reg_fstate.Q1~0_combout\ = (\inst20~q\ & ((\inst11|fstate.Q1~q\) # ((!\inst11|fstate.Q0~q\ & !\inst25|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|fstate.Q0~q\,
	datab => \inst25|inst1~q\,
	datac => \inst20~q\,
	datad => \inst11|fstate.Q1~q\,
	combout => \inst11|reg_fstate.Q1~0_combout\);

-- Location: LCCOMB_X17_Y33_N12
\inst11|reg_fstate.Q1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|reg_fstate.Q1~1_combout\ = (!\inst18|inst1~q\ & \inst11|reg_fstate.Q1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst1~q\,
	datad => \inst11|reg_fstate.Q1~0_combout\,
	combout => \inst11|reg_fstate.Q1~1_combout\);

-- Location: FF_X17_Y33_N13
\inst11|fstate.Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|reg_fstate.Q1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|fstate.Q1~q\);

-- Location: LCCOMB_X17_Y33_N22
\inst11|ALARM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|ALARM~0_combout\ = (\inst11|fstate.Q1~q\ & !\inst18|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|fstate.Q1~q\,
	datab => \inst18|inst1~q\,
	combout => \inst11|ALARM~0_combout\);

-- Location: LCCOMB_X27_Y37_N2
\inst|7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|7~5_combout\ = (\inst|7~3_combout\) # (((!\S[6]~input_o\ & \S[7]~input_o\)) # (!\S[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[6]~input_o\,
	datab => \S[7]~input_o\,
	datac => \inst|7~3_combout\,
	datad => \S[8]~input_o\,
	combout => \inst|7~5_combout\);

-- Location: LCCOMB_X27_Y37_N24
\inst|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|9~3_combout\ = (\S[7]~input_o\ & (\inst|9~2_combout\ & \S[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[7]~input_o\,
	datac => \inst|9~2_combout\,
	datad => \S[8]~input_o\,
	combout => \inst|9~3_combout\);

-- Location: LCCOMB_X25_Y33_N16
\inst12|81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|81~combout\ = (\inst|7~5_combout\ & (!\inst|8~1_combout\ & (\inst12|5~0_combout\ & !\inst|9~3_combout\))) # (!\inst|7~5_combout\ & (((\inst|9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|7~5_combout\,
	datab => \inst|8~1_combout\,
	datac => \inst12|5~0_combout\,
	datad => \inst|9~3_combout\,
	combout => \inst12|81~combout\);

-- Location: LCCOMB_X27_Y37_N16
\inst12|82~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|82~3_combout\ = (!\S[4]~input_o\) # (!\S[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[5]~input_o\,
	datac => \S[4]~input_o\,
	combout => \inst12|82~3_combout\);

-- Location: LCCOMB_X27_Y37_N26
\inst12|82~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|82~9_combout\ = (\S[8]~input_o\ & (\S[7]~input_o\ & (\S[6]~input_o\ & \inst12|82~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[8]~input_o\,
	datab => \S[7]~input_o\,
	datac => \S[6]~input_o\,
	datad => \inst12|82~3_combout\,
	combout => \inst12|82~9_combout\);

-- Location: LCCOMB_X20_Y33_N4
\inst12|5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|5~1_combout\ = (\inst|8~1_combout\ & (!\inst|9~3_combout\ & (!\inst|7~4_combout\ & !\inst|7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|8~1_combout\,
	datab => \inst|9~3_combout\,
	datac => \inst|7~4_combout\,
	datad => \inst|7~3_combout\,
	combout => \inst12|5~1_combout\);

-- Location: LCCOMB_X20_Y33_N22
\inst12|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|84~0_combout\ = (\inst|8~1_combout\ & (\inst|9~3_combout\ & ((\inst|7~4_combout\) # (\inst|7~3_combout\)))) # (!\inst|8~1_combout\ & (\inst|9~3_combout\ $ (((\inst|7~4_combout\) # (\inst|7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|8~1_combout\,
	datab => \inst|9~3_combout\,
	datac => \inst|7~4_combout\,
	datad => \inst|7~3_combout\,
	combout => \inst12|84~0_combout\);

-- Location: LCCOMB_X20_Y33_N28
\inst12|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|85~combout\ = (\inst|7~4_combout\) # ((\inst|7~3_combout\) # ((!\inst|8~1_combout\ & \inst|9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|8~1_combout\,
	datab => \inst|9~3_combout\,
	datac => \inst|7~4_combout\,
	datad => \inst|7~3_combout\,
	combout => \inst12|85~combout\);

-- Location: LCCOMB_X27_Y37_N10
\inst12|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|86~0_combout\ = (\inst|9~3_combout\ & (\inst|8~1_combout\ & ((\inst|7~5_combout\)))) # (!\inst|9~3_combout\ & ((\inst|8~1_combout\) # ((\inst12|5~0_combout\ & \inst|7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|9~3_combout\,
	datab => \inst|8~1_combout\,
	datac => \inst12|5~0_combout\,
	datad => \inst|7~5_combout\,
	combout => \inst12|86~0_combout\);

-- Location: LCCOMB_X27_Y36_N0
\inst12|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|87~combout\ = (\inst12|5~0_combout\ & (((!\inst|9~3_combout\ & !\inst|8~1_combout\)) # (!\S[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|9~3_combout\,
	datab => \inst|8~1_combout\,
	datac => \inst12|5~0_combout\,
	datad => \S[6]~input_o\,
	combout => \inst12|87~combout\);

-- Location: LCCOMB_X19_Y33_N24
\inst13|83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|83~combout\ = (\inst1|sub|18~q\ & (((\inst1|sub|19~q\)))) # (!\inst1|sub|18~q\ & (\inst1|sub|17~q\ & (!\inst1|sub|16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|17~q\,
	datab => \inst1|sub|16~q\,
	datac => \inst1|sub|19~q\,
	datad => \inst1|sub|18~q\,
	combout => \inst13|83~combout\);

-- Location: LCCOMB_X20_Y33_N18
\inst13|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|84~0_combout\ = (\inst1|sub|16~q\ & (\inst1|sub|17~q\ $ (!\inst1|sub|18~q\))) # (!\inst1|sub|16~q\ & (!\inst1|sub|17~q\ & \inst1|sub|18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|16~q\,
	datac => \inst1|sub|17~q\,
	datad => \inst1|sub|18~q\,
	combout => \inst13|84~0_combout\);

-- Location: LCCOMB_X19_Y33_N22
\inst13|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|85~combout\ = (\inst1|sub|16~q\) # ((\inst1|sub|18~q\ & !\inst1|sub|17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|18~q\,
	datac => \inst1|sub|16~q\,
	datad => \inst1|sub|17~q\,
	combout => \inst13|85~combout\);

-- Location: LCCOMB_X20_Y33_N20
\inst13|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|86~0_combout\ = (\inst1|sub|16~q\ & ((\inst1|sub|17~q\) # ((!\inst1|sub|19~q\ & !\inst1|sub|18~q\)))) # (!\inst1|sub|16~q\ & (\inst1|sub|17~q\ & ((!\inst1|sub|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|16~q\,
	datab => \inst1|sub|17~q\,
	datac => \inst1|sub|19~q\,
	datad => \inst1|sub|18~q\,
	combout => \inst13|86~0_combout\);

-- Location: LCCOMB_X20_Y33_N10
\inst13|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|87~combout\ = (\inst1|sub|17~q\ & (\inst1|sub|16~q\ & ((\inst1|sub|18~q\)))) # (!\inst1|sub|17~q\ & (((!\inst1|sub|19~q\ & !\inst1|sub|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|16~q\,
	datab => \inst1|sub|17~q\,
	datac => \inst1|sub|19~q\,
	datad => \inst1|sub|18~q\,
	combout => \inst13|87~combout\);

-- Location: LCCOMB_X20_Y33_N12
\inst13|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|81~0_combout\ = (\inst1|sub|16~q\ & ((\inst1|sub|17~q\ & (\inst1|sub|19~q\)) # (!\inst1|sub|17~q\ & (!\inst1|sub|19~q\ & !\inst1|sub|18~q\)))) # (!\inst1|sub|16~q\ & ((\inst1|sub|18~q\) # ((\inst1|sub|17~q\ & \inst1|sub|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|16~q\,
	datab => \inst1|sub|17~q\,
	datac => \inst1|sub|19~q\,
	datad => \inst1|sub|18~q\,
	combout => \inst13|81~0_combout\);

-- Location: LCCOMB_X20_Y33_N2
\inst13|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|82~0_combout\ = (\inst1|sub|17~q\ & ((\inst1|sub|19~q\) # ((!\inst1|sub|16~q\ & \inst1|sub|18~q\)))) # (!\inst1|sub|17~q\ & (\inst1|sub|16~q\ & ((\inst1|sub|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|16~q\,
	datab => \inst1|sub|17~q\,
	datac => \inst1|sub|19~q\,
	datad => \inst1|sub|18~q\,
	combout => \inst13|82~0_combout\);

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

ww_OPERATE <= \OPERATE~output_o\;

ww_ALARM <= \ALARM~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;

ww_a_1 <= \a_1~output_o\;

ww_b_1 <= \b_1~output_o\;
END structure;


