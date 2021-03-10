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

-- DATE "03/10/2021 22:07:17"

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

ENTITY 	EjemploKeys IS
    PORT (
	a : OUT std_logic;
	Reset : IN std_logic;
	Input_K0 : IN std_logic;
	Clock : IN std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	c1 : OUT std_logic;
	Input_K1 : IN std_logic;
	d1 : OUT std_logic;
	e1 : OUT std_logic;
	f1 : OUT std_logic;
	g1 : OUT std_logic;
	a1 : OUT std_logic;
	b1 : OUT std_logic
	);
END EjemploKeys;

-- Design Ports Information
-- a	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_K1	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_K0	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EjemploKeys IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Input_K0 : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_Input_K1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Input_K1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|sub|16~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Input_K0~input_o\ : std_logic;
SIGNAL \inst999|inst|inst~q\ : std_logic;
SIGNAL \inst999|inst|inst1~q\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q0~0_combout\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q2~0_combout\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q1~0_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_reg_bit[10]~0_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita10~0_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q1~1_combout\ : std_logic;
SIGNAL \inst999|inst10|fstate.Q1~q\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q2~1_combout\ : std_logic;
SIGNAL \inst999|inst10|fstate.Q2~q\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q3~0_combout\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q3~1_combout\ : std_logic;
SIGNAL \inst999|inst10|fstate.Q3~q\ : std_logic;
SIGNAL \inst999|inst10|reg_fstate.Q0~1_combout\ : std_logic;
SIGNAL \inst999|inst10|fstate.Q0~q\ : std_logic;
SIGNAL \inst999|inst10|xDeb_n~0_combout\ : std_logic;
SIGNAL \inst999|inst3~q\ : std_logic;
SIGNAL \inst999|inst4~combout\ : std_logic;
SIGNAL \inst2|sub|16~q\ : std_logic;
SIGNAL \inst4|84~1_combout\ : std_logic;
SIGNAL \inst2|sub|17~q\ : std_logic;
SIGNAL \inst2|sub|18~0_combout\ : std_logic;
SIGNAL \inst2|sub|18~q\ : std_logic;
SIGNAL \inst2|sub|19~0_combout\ : std_logic;
SIGNAL \inst2|sub|19~q\ : std_logic;
SIGNAL \inst4|81~combout\ : std_logic;
SIGNAL \inst4|82~0_combout\ : std_logic;
SIGNAL \inst4|83~combout\ : std_logic;
SIGNAL \inst4|84~0_combout\ : std_logic;
SIGNAL \inst4|85~combout\ : std_logic;
SIGNAL \inst4|86~0_combout\ : std_logic;
SIGNAL \inst4|87~combout\ : std_logic;
SIGNAL \Input_K1~input_o\ : std_logic;
SIGNAL \Input_K1~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst33|sub|16~0_combout\ : std_logic;
SIGNAL \inst33|sub|16~q\ : std_logic;
SIGNAL \inst555|84~1_combout\ : std_logic;
SIGNAL \inst33|sub|17~q\ : std_logic;
SIGNAL \inst33|sub|18~0_combout\ : std_logic;
SIGNAL \inst33|sub|18~q\ : std_logic;
SIGNAL \inst33|sub|19~0_combout\ : std_logic;
SIGNAL \inst33|sub|19~q\ : std_logic;
SIGNAL \inst555|83~combout\ : std_logic;
SIGNAL \inst555|84~0_combout\ : std_logic;
SIGNAL \inst555|85~combout\ : std_logic;
SIGNAL \inst555|86~0_combout\ : std_logic;
SIGNAL \inst555|87~combout\ : std_logic;
SIGNAL \inst555|81~0_combout\ : std_logic;
SIGNAL \inst555|82~0_combout\ : std_logic;
SIGNAL \inst999|inst1|auto_generated|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst999|ALT_INV_inst4~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

a <= ww_a;
ww_Reset <= Reset;
ww_Input_K0 <= Input_K0;
ww_Clock <= Clock;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
c1 <= ww_c1;
ww_Input_K1 <= Input_K1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
a1 <= ww_a1;
b1 <= ww_b1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Input_K1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Input_K1~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\inst999|ALT_INV_inst4~combout\ <= NOT \inst999|inst4~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y39_N16
\a~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|81~combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|82~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|83~combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|84~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\e~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|85~combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|86~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\g~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|87~combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\c1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst555|83~combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\d1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst555|84~0_combout\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\e1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst555|85~combout\,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\f1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst555|86~0_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\g1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst555|87~combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\a1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst555|81~0_combout\,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\b1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst555|82~0_combout\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\Clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G3
\Clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X39_Y37_N20
\inst2|sub|16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|16~0_combout\ = !\inst2|sub|16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|sub|16~q\,
	combout => \inst2|sub|16~0_combout\);

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: IOIBUF_X36_Y39_N15
\Input_K0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_K0,
	o => \Input_K0~input_o\);

-- Location: FF_X39_Y37_N7
\inst999|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input_K0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst|inst~q\);

-- Location: FF_X39_Y37_N9
\inst999|inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst999|inst|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst|inst1~q\);

-- Location: LCCOMB_X39_Y37_N8
\inst999|inst10|reg_fstate.Q0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q0~0_combout\ = (\Reset~input_o\) # ((\inst999|inst|inst1~q\ & !\inst999|inst10|fstate.Q0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \inst999|inst|inst1~q\,
	datad => \inst999|inst10|fstate.Q0~q\,
	combout => \inst999|inst10|reg_fstate.Q0~0_combout\);

-- Location: LCCOMB_X39_Y37_N22
\inst999|inst10|reg_fstate.Q2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q2~0_combout\ = (!\inst999|inst|inst1~q\ & (!\Reset~input_o\ & \inst999|inst10|fstate.Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst|inst1~q\,
	datac => \Reset~input_o\,
	datad => \inst999|inst10|fstate.Q2~q\,
	combout => \inst999|inst10|reg_fstate.Q2~0_combout\);

-- Location: LCCOMB_X39_Y37_N4
\inst999|inst10|reg_fstate.Q1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q1~0_combout\ = (!\Reset~input_o\ & (!\inst999|inst|inst1~q\ & !\inst999|inst10|fstate.Q0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \inst999|inst|inst1~q\,
	datad => \inst999|inst10|fstate.Q0~q\,
	combout => \inst999|inst10|reg_fstate.Q1~0_combout\);

-- Location: LCCOMB_X40_Y37_N4
\inst999|inst1|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita0~combout\ = \inst999|inst1|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst999|inst1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst999|inst1|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst999|inst1|auto_generated|counter_comb_bita0~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X42_Y38_N20
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X39_Y37_N30
\inst999|inst1|auto_generated|counter_reg_bit[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_reg_bit[10]~0_combout\ = (!\Reset~input_o\ & ((\inst999|inst|inst1~q\ & ((\inst999|inst10|fstate.Q2~q\))) # (!\inst999|inst|inst1~q\ & (!\inst999|inst10|fstate.Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst10|fstate.Q0~q\,
	datab => \Reset~input_o\,
	datac => \inst999|inst|inst1~q\,
	datad => \inst999|inst10|fstate.Q2~q\,
	combout => \inst999|inst1|auto_generated|counter_reg_bit[10]~0_combout\);

-- Location: LCCOMB_X40_Y37_N8
\inst999|inst1|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita2~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(2) & (\inst999|inst1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst999|inst1|auto_generated|counter_reg_bit\(2) & 
-- (!\inst999|inst1|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst999|inst1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst999|inst1|auto_generated|counter_reg_bit\(2) & !\inst999|inst1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita2~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X40_Y37_N10
\inst999|inst1|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita3~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(3) & (!\inst999|inst1|auto_generated|counter_comb_bita2~COUT\)) # (!\inst999|inst1|auto_generated|counter_reg_bit\(3) & 
-- ((\inst999|inst1|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst999|inst1|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst999|inst1|auto_generated|counter_comb_bita2~COUT\) # (!\inst999|inst1|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita3~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X39_Y37_N16
\inst999|inst1|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|_~0_combout\ = (!\Reset~input_o\ & ((\inst999|inst10|fstate.Q0~q\ & ((\inst999|inst|inst1~q\) # (!\inst999|inst10|fstate.Q2~q\))) # (!\inst999|inst10|fstate.Q0~q\ & ((\inst999|inst10|fstate.Q2~q\) # 
-- (!\inst999|inst|inst1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst10|fstate.Q0~q\,
	datab => \Reset~input_o\,
	datac => \inst999|inst|inst1~q\,
	datad => \inst999|inst10|fstate.Q2~q\,
	combout => \inst999|inst1|auto_generated|_~0_combout\);

-- Location: FF_X40_Y37_N11
\inst999|inst1|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X40_Y37_N12
\inst999|inst1|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita4~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(4) & (\inst999|inst1|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst999|inst1|auto_generated|counter_reg_bit\(4) & 
-- (!\inst999|inst1|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst999|inst1|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst999|inst1|auto_generated|counter_reg_bit\(4) & !\inst999|inst1|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita4~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X40_Y37_N13
\inst999|inst1|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X40_Y37_N14
\inst999|inst1|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita5~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(5) & (!\inst999|inst1|auto_generated|counter_comb_bita4~COUT\)) # (!\inst999|inst1|auto_generated|counter_reg_bit\(5) & 
-- ((\inst999|inst1|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst999|inst1|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst999|inst1|auto_generated|counter_comb_bita4~COUT\) # (!\inst999|inst1|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita5~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X40_Y37_N15
\inst999|inst1|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X40_Y37_N16
\inst999|inst1|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita6~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(6) & (\inst999|inst1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst999|inst1|auto_generated|counter_reg_bit\(6) & 
-- (!\inst999|inst1|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst999|inst1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst999|inst1|auto_generated|counter_reg_bit\(6) & !\inst999|inst1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita6~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X40_Y37_N17
\inst999|inst1|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X40_Y37_N18
\inst999|inst1|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita7~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(7) & (!\inst999|inst1|auto_generated|counter_comb_bita6~COUT\)) # (!\inst999|inst1|auto_generated|counter_reg_bit\(7) & 
-- ((\inst999|inst1|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst999|inst1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst999|inst1|auto_generated|counter_comb_bita6~COUT\) # (!\inst999|inst1|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita7~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X40_Y37_N19
\inst999|inst1|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X40_Y37_N20
\inst999|inst1|auto_generated|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita8~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(8) & (\inst999|inst1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst999|inst1|auto_generated|counter_reg_bit\(8) & 
-- (!\inst999|inst1|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst999|inst1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst999|inst1|auto_generated|counter_reg_bit\(8) & !\inst999|inst1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita8~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X40_Y37_N21
\inst999|inst1|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X40_Y37_N22
\inst999|inst1|auto_generated|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita9~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(9) & (!\inst999|inst1|auto_generated|counter_comb_bita8~COUT\)) # (!\inst999|inst1|auto_generated|counter_reg_bit\(9) & 
-- ((\inst999|inst1|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst999|inst1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst999|inst1|auto_generated|counter_comb_bita8~COUT\) # (!\inst999|inst1|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita9~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X40_Y37_N23
\inst999|inst1|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X40_Y37_N24
\inst999|inst1|auto_generated|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita10~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(10) & (\inst999|inst1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst999|inst1|auto_generated|counter_reg_bit\(10) & 
-- (!\inst999|inst1|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst999|inst1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst999|inst1|auto_generated|counter_reg_bit\(10) & !\inst999|inst1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita10~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X40_Y37_N25
\inst999|inst1|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X40_Y37_N26
\inst999|inst1|auto_generated|counter_comb_bita10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita10~0_combout\ = \inst999|inst1|auto_generated|counter_comb_bita10~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst999|inst1|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita10~0_combout\);

-- Location: LCCOMB_X41_Y37_N24
\inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(10) & (!\inst999|inst1|auto_generated|counter_reg_bit\(8) & (!\inst999|inst1|auto_generated|counter_reg_bit\(9) & 
-- \inst999|inst1|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|counter_reg_bit\(10),
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(8),
	datac => \inst999|inst1|auto_generated|counter_reg_bit\(9),
	datad => \inst999|inst1|auto_generated|counter_reg_bit\(7),
	combout => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X40_Y37_N2
\inst999|inst1|auto_generated|counter_reg_bit[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\ = (\inst999|inst1|auto_generated|counter_reg_bit[10]~0_combout\) # ((\inst999|inst1|auto_generated|counter_comb_bita10~0_combout\) # 
-- ((\inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datab => \inst999|inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	datac => \inst999|inst1|auto_generated|counter_comb_bita10~0_combout\,
	datad => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\);

-- Location: FF_X40_Y37_N5
\inst999|inst1|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X40_Y37_N6
\inst999|inst1|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|counter_comb_bita1~combout\ = (\inst999|inst1|auto_generated|counter_reg_bit\(1) & (!\inst999|inst1|auto_generated|counter_comb_bita0~COUT\)) # (!\inst999|inst1|auto_generated|counter_reg_bit\(1) & 
-- ((\inst999|inst1|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst999|inst1|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst999|inst1|auto_generated|counter_comb_bita0~COUT\) # (!\inst999|inst1|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst999|inst1|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst999|inst1|auto_generated|counter_comb_bita1~combout\,
	cout => \inst999|inst1|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X40_Y37_N7
\inst999|inst1|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(1));

-- Location: FF_X40_Y37_N9
\inst999|inst1|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst1|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst999|inst1|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \inst999|inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst1|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X40_Y37_N0
\inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (!\inst999|inst1|auto_generated|counter_reg_bit\(4) & (\inst999|inst1|auto_generated|counter_reg_bit\(6) & (!\inst999|inst1|auto_generated|counter_reg_bit\(3) & 
-- \inst999|inst1|auto_generated|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|counter_reg_bit\(4),
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(6),
	datac => \inst999|inst1|auto_generated|counter_reg_bit\(3),
	datad => \inst999|inst1|auto_generated|counter_reg_bit\(5),
	combout => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X40_Y37_N30
\inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (!\inst999|inst1|auto_generated|counter_reg_bit\(2) & (\inst999|inst1|auto_generated|counter_reg_bit\(0) & (!\inst999|inst1|auto_generated|counter_reg_bit\(1) & 
-- \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|counter_reg_bit\(2),
	datab => \inst999|inst1|auto_generated|counter_reg_bit\(0),
	datac => \inst999|inst1|auto_generated|counter_reg_bit\(1),
	datad => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	combout => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X40_Y37_N28
\inst999|inst1|auto_generated|cout_actual\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst1|auto_generated|cout_actual~combout\ = (\inst999|inst1|auto_generated|counter_comb_bita10~0_combout\) # ((\inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & 
-- \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datac => \inst999|inst1|auto_generated|counter_comb_bita10~0_combout\,
	datad => \inst999|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \inst999|inst1|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X39_Y37_N2
\inst999|inst10|reg_fstate.Q1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q1~1_combout\ = (\inst999|inst10|reg_fstate.Q1~0_combout\) # ((!\Reset~input_o\ & (\inst999|inst10|fstate.Q1~q\ & !\inst999|inst1|auto_generated|cout_actual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst10|reg_fstate.Q1~0_combout\,
	datab => \Reset~input_o\,
	datac => \inst999|inst10|fstate.Q1~q\,
	datad => \inst999|inst1|auto_generated|cout_actual~combout\,
	combout => \inst999|inst10|reg_fstate.Q1~1_combout\);

-- Location: FF_X39_Y37_N3
\inst999|inst10|fstate.Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst10|reg_fstate.Q1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst10|fstate.Q1~q\);

-- Location: LCCOMB_X39_Y37_N28
\inst999|inst10|reg_fstate.Q2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q2~1_combout\ = (\inst999|inst10|reg_fstate.Q2~0_combout\) # ((\inst999|inst10|fstate.Q1~q\ & (!\Reset~input_o\ & \inst999|inst1|auto_generated|cout_actual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst10|reg_fstate.Q2~0_combout\,
	datab => \inst999|inst10|fstate.Q1~q\,
	datac => \Reset~input_o\,
	datad => \inst999|inst1|auto_generated|cout_actual~combout\,
	combout => \inst999|inst10|reg_fstate.Q2~1_combout\);

-- Location: FF_X39_Y37_N29
\inst999|inst10|fstate.Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst10|reg_fstate.Q2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst10|fstate.Q2~q\);

-- Location: LCCOMB_X39_Y37_N6
\inst999|inst10|reg_fstate.Q3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q3~0_combout\ = (\inst999|inst|inst1~q\ & (!\Reset~input_o\ & \inst999|inst10|fstate.Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst|inst1~q\,
	datab => \Reset~input_o\,
	datad => \inst999|inst10|fstate.Q2~q\,
	combout => \inst999|inst10|reg_fstate.Q3~0_combout\);

-- Location: LCCOMB_X39_Y37_N26
\inst999|inst10|reg_fstate.Q3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q3~1_combout\ = (\inst999|inst10|reg_fstate.Q3~0_combout\) # ((!\Reset~input_o\ & (\inst999|inst10|fstate.Q3~q\ & !\inst999|inst1|auto_generated|cout_actual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst10|reg_fstate.Q3~0_combout\,
	datab => \Reset~input_o\,
	datac => \inst999|inst10|fstate.Q3~q\,
	datad => \inst999|inst1|auto_generated|cout_actual~combout\,
	combout => \inst999|inst10|reg_fstate.Q3~1_combout\);

-- Location: FF_X39_Y37_N27
\inst999|inst10|fstate.Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst10|reg_fstate.Q3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst10|fstate.Q3~q\);

-- Location: LCCOMB_X39_Y37_N14
\inst999|inst10|reg_fstate.Q0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|reg_fstate.Q0~1_combout\ = (!\inst999|inst10|reg_fstate.Q0~0_combout\ & ((!\inst999|inst1|auto_generated|cout_actual~combout\) # (!\inst999|inst10|fstate.Q3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst10|reg_fstate.Q0~0_combout\,
	datab => \inst999|inst10|fstate.Q3~q\,
	datad => \inst999|inst1|auto_generated|cout_actual~combout\,
	combout => \inst999|inst10|reg_fstate.Q0~1_combout\);

-- Location: FF_X39_Y37_N15
\inst999|inst10|fstate.Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst10|reg_fstate.Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst10|fstate.Q0~q\);

-- Location: LCCOMB_X39_Y37_N18
\inst999|inst10|xDeb_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst10|xDeb_n~0_combout\ = (!\Reset~input_o\ & ((\inst999|inst10|fstate.Q3~q\) # (!\inst999|inst10|fstate.Q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst999|inst10|fstate.Q0~q\,
	datac => \Reset~input_o\,
	datad => \inst999|inst10|fstate.Q3~q\,
	combout => \inst999|inst10|xDeb_n~0_combout\);

-- Location: FF_X39_Y37_N19
\inst999|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst999|inst10|xDeb_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst999|inst3~q\);

-- Location: LCCOMB_X39_Y37_N0
\inst999|inst4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst999|inst4~combout\ = ((!\Reset~input_o\ & ((\inst999|inst10|fstate.Q3~q\) # (!\inst999|inst10|fstate.Q0~q\)))) # (!\inst999|inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \inst999|inst10|fstate.Q0~q\,
	datac => \inst999|inst10|fstate.Q3~q\,
	datad => \inst999|inst3~q\,
	combout => \inst999|inst4~combout\);

-- Location: FF_X39_Y37_N21
\inst2|sub|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|sub|16~0_combout\,
	clrn => \inst999|ALT_INV_inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|16~q\);

-- Location: LCCOMB_X39_Y37_N10
\inst4|84~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|84~1_combout\ = \inst2|sub|17~q\ $ (\inst2|sub|16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|sub|17~q\,
	datad => \inst2|sub|16~q\,
	combout => \inst4|84~1_combout\);

-- Location: FF_X39_Y37_N11
\inst2|sub|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|84~1_combout\,
	clrn => \inst999|ALT_INV_inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|17~q\);

-- Location: LCCOMB_X39_Y37_N12
\inst2|sub|18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|18~0_combout\ = \inst2|sub|18~q\ $ (((\inst2|sub|17~q\ & \inst2|sub|16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|17~q\,
	datac => \inst2|sub|18~q\,
	datad => \inst2|sub|16~q\,
	combout => \inst2|sub|18~0_combout\);

-- Location: FF_X39_Y37_N13
\inst2|sub|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|sub|18~0_combout\,
	clrn => \inst999|ALT_INV_inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|18~q\);

-- Location: LCCOMB_X39_Y37_N24
\inst2|sub|19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|19~0_combout\ = \inst2|sub|19~q\ $ (((\inst2|sub|16~q\ & (\inst2|sub|17~q\ & \inst2|sub|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|16~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|19~q\,
	datad => \inst2|sub|18~q\,
	combout => \inst2|sub|19~0_combout\);

-- Location: FF_X39_Y37_N25
\inst2|sub|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|sub|19~0_combout\,
	clrn => \inst999|ALT_INV_inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|19~q\);

-- Location: LCCOMB_X35_Y37_N0
\inst4|81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|81~combout\ = (\inst2|sub|18~q\ & (((\inst2|sub|17~q\ & \inst2|sub|19~q\)) # (!\inst2|sub|16~q\))) # (!\inst2|sub|18~q\ & ((\inst2|sub|17~q\ & ((\inst2|sub|19~q\))) # (!\inst2|sub|17~q\ & (\inst2|sub|16~q\ & !\inst2|sub|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|18~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|16~q\,
	datad => \inst2|sub|19~q\,
	combout => \inst4|81~combout\);

-- Location: LCCOMB_X35_Y37_N2
\inst4|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|82~0_combout\ = (\inst2|sub|17~q\ & ((\inst2|sub|19~q\) # ((\inst2|sub|18~q\ & !\inst2|sub|16~q\)))) # (!\inst2|sub|17~q\ & (\inst2|sub|18~q\ & (\inst2|sub|16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|18~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|16~q\,
	datad => \inst2|sub|19~q\,
	combout => \inst4|82~0_combout\);

-- Location: LCCOMB_X35_Y37_N4
\inst4|83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|83~combout\ = (\inst2|sub|18~q\ & (((\inst2|sub|19~q\)))) # (!\inst2|sub|18~q\ & (\inst2|sub|17~q\ & (!\inst2|sub|16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|18~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|16~q\,
	datad => \inst2|sub|19~q\,
	combout => \inst4|83~combout\);

-- Location: LCCOMB_X35_Y37_N10
\inst4|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|84~0_combout\ = (\inst2|sub|18~q\ & (\inst2|sub|17~q\ $ (!\inst2|sub|16~q\))) # (!\inst2|sub|18~q\ & (!\inst2|sub|17~q\ & \inst2|sub|16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|18~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|16~q\,
	combout => \inst4|84~0_combout\);

-- Location: LCCOMB_X35_Y37_N8
\inst4|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|85~combout\ = (\inst2|sub|16~q\) # ((\inst2|sub|18~q\ & !\inst2|sub|17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|18~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|16~q\,
	combout => \inst4|85~combout\);

-- Location: LCCOMB_X35_Y37_N18
\inst4|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|86~0_combout\ = (\inst2|sub|18~q\ & (\inst2|sub|17~q\ & (\inst2|sub|16~q\))) # (!\inst2|sub|18~q\ & ((\inst2|sub|17~q\) # ((\inst2|sub|16~q\ & !\inst2|sub|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|18~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|16~q\,
	datad => \inst2|sub|19~q\,
	combout => \inst4|86~0_combout\);

-- Location: LCCOMB_X35_Y37_N12
\inst4|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|87~combout\ = (\inst2|sub|18~q\ & (\inst2|sub|17~q\ & (\inst2|sub|16~q\))) # (!\inst2|sub|18~q\ & (!\inst2|sub|17~q\ & ((!\inst2|sub|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|18~q\,
	datab => \inst2|sub|17~q\,
	datac => \inst2|sub|16~q\,
	datad => \inst2|sub|19~q\,
	combout => \inst4|87~combout\);

-- Location: IOIBUF_X0_Y18_N22
\Input_K1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_K1,
	o => \Input_K1~input_o\);

-- Location: CLKCTRL_G4
\Input_K1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Input_K1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Input_K1~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y53_N10
\inst33|sub|16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|16~0_combout\ = !\inst33|sub|16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|sub|16~q\,
	combout => \inst33|sub|16~0_combout\);

-- Location: FF_X58_Y53_N11
\inst33|sub|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Input_K1~inputclkctrl_outclk\,
	d => \inst33|sub|16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|sub|16~q\);

-- Location: LCCOMB_X58_Y53_N28
\inst555|84~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|84~1_combout\ = \inst33|sub|17~q\ $ (\inst33|sub|16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|sub|17~q\,
	datad => \inst33|sub|16~q\,
	combout => \inst555|84~1_combout\);

-- Location: FF_X58_Y53_N29
\inst33|sub|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Input_K1~inputclkctrl_outclk\,
	d => \inst555|84~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|sub|17~q\);

-- Location: LCCOMB_X58_Y53_N6
\inst33|sub|18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|18~0_combout\ = \inst33|sub|18~q\ $ (((\inst33|sub|17~q\ & \inst33|sub|16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|sub|17~q\,
	datac => \inst33|sub|18~q\,
	datad => \inst33|sub|16~q\,
	combout => \inst33|sub|18~0_combout\);

-- Location: FF_X58_Y53_N7
\inst33|sub|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Input_K1~inputclkctrl_outclk\,
	d => \inst33|sub|18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|sub|18~q\);

-- Location: LCCOMB_X58_Y53_N8
\inst33|sub|19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|19~0_combout\ = \inst33|sub|19~q\ $ (((\inst33|sub|18~q\ & (\inst33|sub|17~q\ & \inst33|sub|16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|18~q\,
	datab => \inst33|sub|17~q\,
	datac => \inst33|sub|19~q\,
	datad => \inst33|sub|16~q\,
	combout => \inst33|sub|19~0_combout\);

-- Location: FF_X58_Y53_N9
\inst33|sub|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Input_K1~inputclkctrl_outclk\,
	d => \inst33|sub|19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|sub|19~q\);

-- Location: LCCOMB_X58_Y53_N24
\inst555|83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|83~combout\ = (\inst33|sub|18~q\ & (((\inst33|sub|19~q\)))) # (!\inst33|sub|18~q\ & (\inst33|sub|17~q\ & (!\inst33|sub|16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|17~q\,
	datab => \inst33|sub|16~q\,
	datac => \inst33|sub|19~q\,
	datad => \inst33|sub|18~q\,
	combout => \inst555|83~combout\);

-- Location: LCCOMB_X58_Y53_N26
\inst555|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|84~0_combout\ = (\inst33|sub|17~q\ & (\inst33|sub|16~q\ & \inst33|sub|18~q\)) # (!\inst33|sub|17~q\ & (\inst33|sub|16~q\ $ (\inst33|sub|18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|17~q\,
	datac => \inst33|sub|16~q\,
	datad => \inst33|sub|18~q\,
	combout => \inst555|84~0_combout\);

-- Location: LCCOMB_X58_Y53_N16
\inst555|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|85~combout\ = (\inst33|sub|16~q\) # ((!\inst33|sub|17~q\ & \inst33|sub|18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|17~q\,
	datac => \inst33|sub|16~q\,
	datad => \inst33|sub|18~q\,
	combout => \inst555|85~combout\);

-- Location: LCCOMB_X58_Y53_N18
\inst555|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|86~0_combout\ = (\inst33|sub|17~q\ & ((\inst33|sub|16~q\) # ((!\inst33|sub|18~q\)))) # (!\inst33|sub|17~q\ & (\inst33|sub|16~q\ & (!\inst33|sub|19~q\ & !\inst33|sub|18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|17~q\,
	datab => \inst33|sub|16~q\,
	datac => \inst33|sub|19~q\,
	datad => \inst33|sub|18~q\,
	combout => \inst555|86~0_combout\);

-- Location: LCCOMB_X58_Y53_N20
\inst555|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|87~combout\ = (\inst33|sub|17~q\ & (\inst33|sub|16~q\ & ((\inst33|sub|18~q\)))) # (!\inst33|sub|17~q\ & (((!\inst33|sub|19~q\ & !\inst33|sub|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|17~q\,
	datab => \inst33|sub|16~q\,
	datac => \inst33|sub|19~q\,
	datad => \inst33|sub|18~q\,
	combout => \inst555|87~combout\);

-- Location: LCCOMB_X58_Y53_N22
\inst555|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|81~0_combout\ = (\inst33|sub|17~q\ & ((\inst33|sub|19~q\) # ((!\inst33|sub|16~q\ & \inst33|sub|18~q\)))) # (!\inst33|sub|17~q\ & ((\inst33|sub|16~q\ & (!\inst33|sub|19~q\ & !\inst33|sub|18~q\)) # (!\inst33|sub|16~q\ & ((\inst33|sub|18~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|17~q\,
	datab => \inst33|sub|16~q\,
	datac => \inst33|sub|19~q\,
	datad => \inst33|sub|18~q\,
	combout => \inst555|81~0_combout\);

-- Location: LCCOMB_X58_Y53_N12
\inst555|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst555|82~0_combout\ = (\inst33|sub|17~q\ & ((\inst33|sub|19~q\) # ((!\inst33|sub|16~q\ & \inst33|sub|18~q\)))) # (!\inst33|sub|17~q\ & (\inst33|sub|16~q\ & ((\inst33|sub|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|17~q\,
	datab => \inst33|sub|16~q\,
	datac => \inst33|sub|19~q\,
	datad => \inst33|sub|18~q\,
	combout => \inst555|82~0_combout\);

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

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

ww_a1 <= \a1~output_o\;

ww_b1 <= \b1~output_o\;
END structure;


