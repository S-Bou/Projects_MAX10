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

-- DATE "02/20/2021 12:09:22"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder_4b IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Aa : OUT std_logic;
	Ab : OUT std_logic;
	Ac : OUT std_logic;
	Ad : OUT std_logic;
	Ae : OUT std_logic;
	Af : OUT std_logic;
	Ag : OUT std_logic;
	Ba : OUT std_logic;
	Bb : OUT std_logic;
	Bc : OUT std_logic;
	Bd : OUT std_logic;
	Be : OUT std_logic;
	Bf : OUT std_logic;
	Bg : OUT std_logic;
	Sa : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	Sb : OUT std_logic;
	Sc : OUT std_logic;
	Sd : OUT std_logic;
	Se : OUT std_logic;
	Sf : OUT std_logic;
	Sg : OUT std_logic
	);
END Adder_4b;

-- Design Ports Information
-- Cout	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aa	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ab	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ac	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ad	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ae	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Af	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ag	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ba	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bb	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bc	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bd	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Be	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bf	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bg	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sc	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sd	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Se	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sf	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder_4b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Aa : std_logic;
SIGNAL ww_Ab : std_logic;
SIGNAL ww_Ac : std_logic;
SIGNAL ww_Ad : std_logic;
SIGNAL ww_Ae : std_logic;
SIGNAL ww_Af : std_logic;
SIGNAL ww_Ag : std_logic;
SIGNAL ww_Ba : std_logic;
SIGNAL ww_Bb : std_logic;
SIGNAL ww_Bc : std_logic;
SIGNAL ww_Bd : std_logic;
SIGNAL ww_Be : std_logic;
SIGNAL ww_Bf : std_logic;
SIGNAL ww_Bg : std_logic;
SIGNAL ww_Sa : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sb : std_logic;
SIGNAL ww_Sc : std_logic;
SIGNAL ww_Sd : std_logic;
SIGNAL ww_Se : std_logic;
SIGNAL ww_Sf : std_logic;
SIGNAL ww_Sg : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Aa~output_o\ : std_logic;
SIGNAL \Ab~output_o\ : std_logic;
SIGNAL \Ac~output_o\ : std_logic;
SIGNAL \Ad~output_o\ : std_logic;
SIGNAL \Ae~output_o\ : std_logic;
SIGNAL \Af~output_o\ : std_logic;
SIGNAL \Ag~output_o\ : std_logic;
SIGNAL \Ba~output_o\ : std_logic;
SIGNAL \Bb~output_o\ : std_logic;
SIGNAL \Bc~output_o\ : std_logic;
SIGNAL \Bd~output_o\ : std_logic;
SIGNAL \Be~output_o\ : std_logic;
SIGNAL \Bf~output_o\ : std_logic;
SIGNAL \Bg~output_o\ : std_logic;
SIGNAL \Sa~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \Sb~output_o\ : std_logic;
SIGNAL \Sc~output_o\ : std_logic;
SIGNAL \Sd~output_o\ : std_logic;
SIGNAL \Se~output_o\ : std_logic;
SIGNAL \Sf~output_o\ : std_logic;
SIGNAL \Sg~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst|inst|inst2~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|inst|inst2~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst2~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst1|81~combout\ : std_logic;
SIGNAL \inst1|82~0_combout\ : std_logic;
SIGNAL \inst1|83~combout\ : std_logic;
SIGNAL \inst1|84~0_combout\ : std_logic;
SIGNAL \inst1|85~combout\ : std_logic;
SIGNAL \inst1|86~0_combout\ : std_logic;
SIGNAL \inst1|87~combout\ : std_logic;
SIGNAL \inst5|81~combout\ : std_logic;
SIGNAL \inst5|82~0_combout\ : std_logic;
SIGNAL \inst5|83~combout\ : std_logic;
SIGNAL \inst5|84~0_combout\ : std_logic;
SIGNAL \inst5|85~combout\ : std_logic;
SIGNAL \inst5|86~0_combout\ : std_logic;
SIGNAL \inst5|87~combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst~combout\ : std_logic;
SIGNAL \inst6|81~0_combout\ : std_logic;
SIGNAL \inst6|82~0_combout\ : std_logic;
SIGNAL \inst6|83~combout\ : std_logic;
SIGNAL \inst6|84~0_combout\ : std_logic;
SIGNAL \inst6|85~combout\ : std_logic;
SIGNAL \inst6|86~0_combout\ : std_logic;
SIGNAL \inst6|87~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_A <= A;
ww_B <= B;
Aa <= ww_Aa;
Ab <= ww_Ab;
Ac <= ww_Ac;
Ad <= ww_Ad;
Ae <= ww_Ae;
Af <= ww_Af;
Ag <= ww_Ag;
Ba <= ww_Ba;
Bb <= ww_Bb;
Bc <= ww_Bc;
Bd <= ww_Bd;
Be <= ww_Be;
Bf <= ww_Bf;
Bg <= ww_Bg;
Sa <= ww_Sa;
S <= ww_S;
Sb <= ww_Sb;
Sc <= ww_Sc;
Sd <= ww_Sd;
Se <= ww_Se;
Sf <= ww_Sf;
Sg <= ww_Sg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X71_Y54_N30
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\Aa~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|81~combout\,
	devoe => ww_devoe,
	o => \Aa~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Ab~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|82~0_combout\,
	devoe => ww_devoe,
	o => \Ab~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Ac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|83~combout\,
	devoe => ww_devoe,
	o => \Ac~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\Ad~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|84~0_combout\,
	devoe => ww_devoe,
	o => \Ad~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Ae~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|85~combout\,
	devoe => ww_devoe,
	o => \Ae~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\Af~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|86~0_combout\,
	devoe => ww_devoe,
	o => \Af~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Ag~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|87~combout\,
	devoe => ww_devoe,
	o => \Ag~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\Ba~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|81~combout\,
	devoe => ww_devoe,
	o => \Ba~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\Bb~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|82~0_combout\,
	devoe => ww_devoe,
	o => \Bb~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\Bc~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|83~combout\,
	devoe => ww_devoe,
	o => \Bc~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\Bd~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|84~0_combout\,
	devoe => ww_devoe,
	o => \Bd~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\Be~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|85~combout\,
	devoe => ww_devoe,
	o => \Be~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\Bf~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|86~0_combout\,
	devoe => ww_devoe,
	o => \Bf~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\Bg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|87~combout\,
	devoe => ww_devoe,
	o => \Bg~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\Sa~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|81~0_combout\,
	devoe => ww_devoe,
	o => \Sa~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst1|inst~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1|inst~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\Sb~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|82~0_combout\,
	devoe => ww_devoe,
	o => \Sb~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\Sc~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|83~combout\,
	devoe => ww_devoe,
	o => \Sc~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\Sd~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|84~0_combout\,
	devoe => ww_devoe,
	o => \Sd~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\Se~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|85~combout\,
	devoe => ww_devoe,
	o => \Se~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\Sf~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|86~0_combout\,
	devoe => ww_devoe,
	o => \Sf~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\Sg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|87~combout\,
	devoe => ww_devoe,
	o => \Sg~output_o\);

-- Location: IOIBUF_X56_Y54_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N15
\Cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X70_Y50_N10
\inst|inst|inst2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~1_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|inst|inst2~1_combout\);

-- Location: IOIBUF_X58_Y54_N29
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X70_Y50_N8
\inst|inst|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~0_combout\ = (\A[0]~input_o\ & \Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|inst|inst2~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X70_Y50_N4
\inst|inst1|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2~0_combout\ = (\A[1]~input_o\ & ((\inst|inst|inst2~1_combout\) # ((\inst|inst|inst2~0_combout\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\inst|inst|inst2~1_combout\) # (\inst|inst|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~1_combout\,
	datab => \A[1]~input_o\,
	datac => \inst|inst|inst2~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|inst1|inst2~0_combout\);

-- Location: LCCOMB_X71_Y53_N10
\inst|inst2|inst2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~1_combout\ = (\inst|inst1|inst2~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \inst|inst1|inst2~0_combout\,
	combout => \inst|inst2|inst2~1_combout\);

-- Location: IOIBUF_X49_Y54_N1
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X71_Y53_N24
\inst|inst2|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~0_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|inst2|inst2~0_combout\);

-- Location: LCCOMB_X71_Y53_N28
\inst|inst3|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2~0_combout\ = (\B[3]~input_o\ & ((\inst|inst2|inst2~1_combout\) # ((\A[3]~input_o\) # (\inst|inst2|inst2~0_combout\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\inst|inst2|inst2~1_combout\) # (\inst|inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst2~1_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst|inst2|inst2~0_combout\,
	combout => \inst|inst3|inst2~0_combout\);

-- Location: LCCOMB_X70_Y50_N22
\inst1|81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|81~combout\ = (\A[2]~input_o\ & (((\A[1]~input_o\ & \A[3]~input_o\)) # (!\A[0]~input_o\))) # (!\A[2]~input_o\ & ((\A[1]~input_o\ & ((\A[3]~input_o\))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & !\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|81~combout\);

-- Location: LCCOMB_X70_Y50_N0
\inst1|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|82~0_combout\ = (\A[1]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & !\A[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[2]~input_o\ & (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|82~0_combout\);

-- Location: LCCOMB_X70_Y50_N18
\inst1|83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|83~combout\ = (\A[2]~input_o\ & (((\A[3]~input_o\)))) # (!\A[2]~input_o\ & (!\A[0]~input_o\ & (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|83~combout\);

-- Location: LCCOMB_X70_Y50_N20
\inst1|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|84~0_combout\ = (\A[2]~input_o\ & (\A[1]~input_o\ $ (!\A[0]~input_o\))) # (!\A[2]~input_o\ & (!\A[1]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|84~0_combout\);

-- Location: LCCOMB_X70_Y50_N14
\inst1|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|85~combout\ = (\A[0]~input_o\) # ((\A[2]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|85~combout\);

-- Location: LCCOMB_X70_Y50_N24
\inst1|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|86~0_combout\ = (\A[2]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\))) # (!\A[2]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & !\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|86~0_combout\);

-- Location: LCCOMB_X70_Y50_N2
\inst1|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|87~combout\ = (\A[2]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\))) # (!\A[2]~input_o\ & (((!\A[1]~input_o\ & !\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|87~combout\);

-- Location: LCCOMB_X71_Y53_N6
\inst5|81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|81~combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((!\B[0]~input_o\))) # (!\B[2]~input_o\ & (!\B[3]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst5|81~combout\);

-- Location: LCCOMB_X71_Y53_N8
\inst5|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|82~0_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\B[2]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst5|82~0_combout\);

-- Location: LCCOMB_X71_Y53_N18
\inst5|83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|83~combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\B[1]~input_o\ & ((!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst5|83~combout\);

-- Location: LCCOMB_X71_Y53_N20
\inst5|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|84~0_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & \B[2]~input_o\)) # (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst5|84~0_combout\);

-- Location: LCCOMB_X71_Y53_N30
\inst5|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|85~combout\ = (\B[0]~input_o\) # ((!\B[1]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst5|85~combout\);

-- Location: LCCOMB_X71_Y53_N16
\inst5|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|86~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\) # (!\B[2]~input_o\)))) # (!\B[1]~input_o\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst5|86~0_combout\);

-- Location: LCCOMB_X71_Y53_N26
\inst5|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|87~combout\ = (\B[1]~input_o\ & (((\B[2]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (!\B[3]~input_o\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst5|87~combout\);

-- Location: LCCOMB_X70_Y50_N30
\inst|inst|inst1|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|inst|inst1|inst~0_combout\);

-- Location: LCCOMB_X70_Y50_N12
\inst|inst1|inst1|inst\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|inst~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\inst|inst|inst2~1_combout\) # (\inst|inst|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~1_combout\,
	datab => \A[1]~input_o\,
	datac => \inst|inst|inst2~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|inst1|inst1|inst~combout\);

-- Location: LCCOMB_X71_Y53_N22
\inst|inst2|inst1|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|inst~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\inst|inst1|inst2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \inst|inst1|inst2~0_combout\,
	combout => \inst|inst2|inst1|inst~0_combout\);

-- Location: LCCOMB_X71_Y53_N12
\inst|inst3|inst1|inst\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\inst|inst2|inst2~1_combout\) # (\inst|inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst2~1_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst|inst2|inst2~0_combout\,
	combout => \inst|inst3|inst1|inst~combout\);

-- Location: LCCOMB_X66_Y53_N0
\inst6|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|81~0_combout\ = (\inst|inst|inst1|inst~0_combout\ & ((\inst|inst1|inst1|inst~combout\ & ((\inst|inst3|inst1|inst~combout\))) # (!\inst|inst1|inst1|inst~combout\ & (!\inst|inst2|inst1|inst~0_combout\ & !\inst|inst3|inst1|inst~combout\)))) # 
-- (!\inst|inst|inst1|inst~0_combout\ & ((\inst|inst2|inst1|inst~0_combout\) # ((\inst|inst1|inst1|inst~combout\ & \inst|inst3|inst1|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|inst~0_combout\,
	datab => \inst|inst1|inst1|inst~combout\,
	datac => \inst|inst2|inst1|inst~0_combout\,
	datad => \inst|inst3|inst1|inst~combout\,
	combout => \inst6|81~0_combout\);

-- Location: LCCOMB_X66_Y53_N2
\inst6|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|82~0_combout\ = (\inst|inst1|inst1|inst~combout\ & ((\inst|inst3|inst1|inst~combout\) # ((!\inst|inst|inst1|inst~0_combout\ & \inst|inst2|inst1|inst~0_combout\)))) # (!\inst|inst1|inst1|inst~combout\ & (\inst|inst|inst1|inst~0_combout\ & 
-- (\inst|inst2|inst1|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|inst~0_combout\,
	datab => \inst|inst1|inst1|inst~combout\,
	datac => \inst|inst2|inst1|inst~0_combout\,
	datad => \inst|inst3|inst1|inst~combout\,
	combout => \inst6|82~0_combout\);

-- Location: LCCOMB_X66_Y53_N20
\inst6|83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|83~combout\ = (\inst|inst2|inst1|inst~0_combout\ & (((\inst|inst3|inst1|inst~combout\)))) # (!\inst|inst2|inst1|inst~0_combout\ & (!\inst|inst|inst1|inst~0_combout\ & (\inst|inst1|inst1|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|inst~0_combout\,
	datab => \inst|inst1|inst1|inst~combout\,
	datac => \inst|inst2|inst1|inst~0_combout\,
	datad => \inst|inst3|inst1|inst~combout\,
	combout => \inst6|83~combout\);

-- Location: LCCOMB_X66_Y53_N6
\inst6|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|84~0_combout\ = (\inst|inst|inst1|inst~0_combout\ & (\inst|inst1|inst1|inst~combout\ $ (!\inst|inst2|inst1|inst~0_combout\))) # (!\inst|inst|inst1|inst~0_combout\ & (!\inst|inst1|inst1|inst~combout\ & \inst|inst2|inst1|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|inst~0_combout\,
	datab => \inst|inst1|inst1|inst~combout\,
	datac => \inst|inst2|inst1|inst~0_combout\,
	combout => \inst6|84~0_combout\);

-- Location: LCCOMB_X66_Y53_N16
\inst6|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|85~combout\ = (\inst|inst|inst1|inst~0_combout\) # ((!\inst|inst1|inst1|inst~combout\ & \inst|inst2|inst1|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|inst~0_combout\,
	datab => \inst|inst1|inst1|inst~combout\,
	datac => \inst|inst2|inst1|inst~0_combout\,
	combout => \inst6|85~combout\);

-- Location: LCCOMB_X66_Y53_N26
\inst6|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|86~0_combout\ = (\inst|inst|inst1|inst~0_combout\ & ((\inst|inst1|inst1|inst~combout\) # ((!\inst|inst2|inst1|inst~0_combout\ & !\inst|inst3|inst1|inst~combout\)))) # (!\inst|inst|inst1|inst~0_combout\ & (\inst|inst1|inst1|inst~combout\ & 
-- (!\inst|inst2|inst1|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|inst~0_combout\,
	datab => \inst|inst1|inst1|inst~combout\,
	datac => \inst|inst2|inst1|inst~0_combout\,
	datad => \inst|inst3|inst1|inst~combout\,
	combout => \inst6|86~0_combout\);

-- Location: LCCOMB_X66_Y53_N12
\inst6|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|87~combout\ = (\inst|inst1|inst1|inst~combout\ & (\inst|inst|inst1|inst~0_combout\ & (\inst|inst2|inst1|inst~0_combout\))) # (!\inst|inst1|inst1|inst~combout\ & (((!\inst|inst2|inst1|inst~0_combout\ & !\inst|inst3|inst1|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|inst~0_combout\,
	datab => \inst|inst1|inst1|inst~combout\,
	datac => \inst|inst2|inst1|inst~0_combout\,
	datad => \inst|inst3|inst1|inst~combout\,
	combout => \inst6|87~combout\);

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

ww_Cout <= \Cout~output_o\;

ww_Aa <= \Aa~output_o\;

ww_Ab <= \Ab~output_o\;

ww_Ac <= \Ac~output_o\;

ww_Ad <= \Ad~output_o\;

ww_Ae <= \Ae~output_o\;

ww_Af <= \Af~output_o\;

ww_Ag <= \Ag~output_o\;

ww_Ba <= \Ba~output_o\;

ww_Bb <= \Bb~output_o\;

ww_Bc <= \Bc~output_o\;

ww_Bd <= \Bd~output_o\;

ww_Be <= \Be~output_o\;

ww_Bf <= \Bf~output_o\;

ww_Bg <= \Bg~output_o\;

ww_Sa <= \Sa~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_Sb <= \Sb~output_o\;

ww_Sc <= \Sc~output_o\;

ww_Sd <= \Sd~output_o\;

ww_Se <= \Se~output_o\;

ww_Sf <= \Sf~output_o\;

ww_Sg <= \Sg~output_o\;
END structure;


