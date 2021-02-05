-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "02/03/2021 20:27:10"

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

ENTITY 	Practica_1_B IS
    PORT (
	a : OUT std_logic;
	D0 : IN std_logic;
	D4 : IN std_logic;
	D3 : IN std_logic;
	D6 : IN std_logic;
	D2 : IN std_logic;
	D7 : IN std_logic;
	D1 : IN std_logic;
	D5 : IN std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic
	);
END Practica_1_B;

-- Design Ports Information
-- a	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica_1_B IS
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
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
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
SIGNAL \D4~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \D5~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \inst1|sub|88~0_combout\ : std_logic;
SIGNAL \D6~input_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \inst1|sub|88~1_combout\ : std_logic;
SIGNAL \D7~input_o\ : std_logic;
SIGNAL \inst1|sub|84~combout\ : std_logic;
SIGNAL \inst2|22~0_combout\ : std_logic;
SIGNAL \inst2|25~0_combout\ : std_logic;
SIGNAL \inst2|24~0_combout\ : std_logic;
SIGNAL \inst2|23~0_combout\ : std_logic;
SIGNAL \inst9|81~0_combout\ : std_logic;
SIGNAL \inst9|82~0_combout\ : std_logic;
SIGNAL \inst9|83~combout\ : std_logic;
SIGNAL \inst9|84~0_combout\ : std_logic;
SIGNAL \inst9|85~combout\ : std_logic;
SIGNAL \inst9|86~0_combout\ : std_logic;
SIGNAL \inst9|87~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

a <= ww_a;
ww_D0 <= D0;
ww_D4 <= D4;
ww_D3 <= D3;
ww_D6 <= D6;
ww_D2 <= D2;
ww_D7 <= D7;
ww_D1 <= D1;
ww_D5 <= D5;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
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

-- Location: IOOBUF_X58_Y54_N16
\a~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|81~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|82~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|83~combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|84~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\e~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|85~combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|86~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\g~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|87~combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X54_Y54_N22
\D4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4,
	o => \D4~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\D0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\D3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\D5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5,
	o => \D5~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\D1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: LCCOMB_X58_Y53_N30
\inst1|sub|88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|88~0_combout\ = (\D5~input_o\ & (\D0~input_o\ & (\D1~input_o\ & !\D4~input_o\))) # (!\D5~input_o\ & ((\D1~input_o\) # ((\D0~input_o\ & !\D4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5~input_o\,
	datab => \D0~input_o\,
	datac => \D1~input_o\,
	datad => \D4~input_o\,
	combout => \inst1|sub|88~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\D6~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6,
	o => \D6~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\D2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: LCCOMB_X58_Y53_N8
\inst1|sub|88~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|88~1_combout\ = (\inst1|sub|88~0_combout\ & ((\D2~input_o\) # (!\D6~input_o\))) # (!\inst1|sub|88~0_combout\ & (!\D6~input_o\ & \D2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|88~0_combout\,
	datab => \D6~input_o\,
	datac => \D2~input_o\,
	combout => \inst1|sub|88~1_combout\);

-- Location: IOIBUF_X58_Y54_N29
\D7~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7,
	o => \D7~input_o\);

-- Location: LCCOMB_X58_Y53_N2
\inst1|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|84~combout\ = LCELL((\D3~input_o\ & ((\inst1|sub|88~1_combout\) # (!\D7~input_o\))) # (!\D3~input_o\ & (\inst1|sub|88~1_combout\ & !\D7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D3~input_o\,
	datac => \inst1|sub|88~1_combout\,
	datad => \D7~input_o\,
	combout => \inst1|sub|84~combout\);

-- Location: LCCOMB_X58_Y53_N6
\inst2|22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|22~0_combout\ = (\inst1|sub|84~combout\ & ((\D0~input_o\))) # (!\inst1|sub|84~combout\ & (\D4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D0~input_o\,
	datad => \inst1|sub|84~combout\,
	combout => \inst2|22~0_combout\);

-- Location: LCCOMB_X58_Y53_N18
\inst2|25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|25~0_combout\ = (\inst1|sub|84~combout\ & ((\D3~input_o\))) # (!\inst1|sub|84~combout\ & (\D7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sub|84~combout\,
	datac => \D7~input_o\,
	datad => \D3~input_o\,
	combout => \inst2|25~0_combout\);

-- Location: LCCOMB_X58_Y53_N20
\inst2|24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|24~0_combout\ = (\inst1|sub|84~combout\ & ((\D2~input_o\))) # (!\inst1|sub|84~combout\ & (\D6~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D6~input_o\,
	datac => \D2~input_o\,
	datad => \inst1|sub|84~combout\,
	combout => \inst2|24~0_combout\);

-- Location: LCCOMB_X58_Y53_N0
\inst2|23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|23~0_combout\ = (\inst1|sub|84~combout\ & ((\D1~input_o\))) # (!\inst1|sub|84~combout\ & (\D5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5~input_o\,
	datac => \D1~input_o\,
	datad => \inst1|sub|84~combout\,
	combout => \inst2|23~0_combout\);

-- Location: LCCOMB_X58_Y53_N24
\inst9|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|81~0_combout\ = (\inst2|22~0_combout\ & ((\inst2|25~0_combout\ & ((\inst2|23~0_combout\))) # (!\inst2|25~0_combout\ & (!\inst2|24~0_combout\ & !\inst2|23~0_combout\)))) # (!\inst2|22~0_combout\ & ((\inst2|24~0_combout\) # ((\inst2|25~0_combout\ & 
-- \inst2|23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|22~0_combout\,
	datab => \inst2|25~0_combout\,
	datac => \inst2|24~0_combout\,
	datad => \inst2|23~0_combout\,
	combout => \inst9|81~0_combout\);

-- Location: LCCOMB_X58_Y53_N26
\inst9|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|82~0_combout\ = (\inst2|23~0_combout\ & ((\inst2|25~0_combout\) # ((!\inst2|22~0_combout\ & \inst2|24~0_combout\)))) # (!\inst2|23~0_combout\ & (\inst2|22~0_combout\ & ((\inst2|24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|22~0_combout\,
	datab => \inst2|25~0_combout\,
	datac => \inst2|24~0_combout\,
	datad => \inst2|23~0_combout\,
	combout => \inst9|82~0_combout\);

-- Location: LCCOMB_X58_Y53_N28
\inst9|83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|83~combout\ = (\inst2|24~0_combout\ & (((\inst2|25~0_combout\)))) # (!\inst2|24~0_combout\ & (!\inst2|22~0_combout\ & ((\inst2|23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|22~0_combout\,
	datab => \inst2|25~0_combout\,
	datac => \inst2|24~0_combout\,
	datad => \inst2|23~0_combout\,
	combout => \inst9|83~combout\);

-- Location: LCCOMB_X58_Y53_N14
\inst9|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|84~0_combout\ = (\inst2|22~0_combout\ & (\inst2|24~0_combout\ $ (!\inst2|23~0_combout\))) # (!\inst2|22~0_combout\ & (\inst2|24~0_combout\ & !\inst2|23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|22~0_combout\,
	datab => \inst2|24~0_combout\,
	datad => \inst2|23~0_combout\,
	combout => \inst9|84~0_combout\);

-- Location: LCCOMB_X58_Y53_N16
\inst9|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|85~combout\ = (\inst2|22~0_combout\) # ((\inst2|24~0_combout\ & !\inst2|23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|22~0_combout\,
	datab => \inst2|24~0_combout\,
	datad => \inst2|23~0_combout\,
	combout => \inst9|85~combout\);

-- Location: LCCOMB_X58_Y53_N10
\inst9|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|86~0_combout\ = (\inst2|22~0_combout\ & ((\inst2|23~0_combout\) # ((!\inst2|25~0_combout\ & !\inst2|24~0_combout\)))) # (!\inst2|22~0_combout\ & (((!\inst2|24~0_combout\ & \inst2|23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|22~0_combout\,
	datab => \inst2|25~0_combout\,
	datac => \inst2|24~0_combout\,
	datad => \inst2|23~0_combout\,
	combout => \inst9|86~0_combout\);

-- Location: LCCOMB_X58_Y53_N4
\inst9|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|87~combout\ = (\inst2|24~0_combout\ & (\inst2|22~0_combout\ & ((\inst2|23~0_combout\)))) # (!\inst2|24~0_combout\ & (((!\inst2|25~0_combout\ & !\inst2|23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|22~0_combout\,
	datab => \inst2|25~0_combout\,
	datac => \inst2|24~0_combout\,
	datad => \inst2|23~0_combout\,
	combout => \inst9|87~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;
END structure;


