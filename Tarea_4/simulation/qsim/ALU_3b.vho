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

-- DATE "03/18/2021 14:17:59"

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

ENTITY 	adder3b IS
    PORT (
	Aa3b : IN std_logic_vector(2 DOWNTO 0);
	Ba3b : IN std_logic_vector(2 DOWNTO 0);
	Cin3b : IN std_logic;
	Sa3b : OUT std_logic_vector(3 DOWNTO 0)
	);
END adder3b;

-- Design Ports Information
-- Sa3b[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa3b[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa3b[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa3b[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aa3b[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ba3b[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin3b	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ba3b[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aa3b[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aa3b[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ba3b[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder3b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Aa3b : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Ba3b : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cin3b : std_logic;
SIGNAL ww_Sa3b : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Sa3b[0]~output_o\ : std_logic;
SIGNAL \Sa3b[1]~output_o\ : std_logic;
SIGNAL \Sa3b[2]~output_o\ : std_logic;
SIGNAL \Sa3b[3]~output_o\ : std_logic;
SIGNAL \Aa3b[0]~input_o\ : std_logic;
SIGNAL \Cin3b~input_o\ : std_logic;
SIGNAL \Ba3b[0]~input_o\ : std_logic;
SIGNAL \FA0|M2|s1~0_combout\ : std_logic;
SIGNAL \Ba3b[1]~input_o\ : std_logic;
SIGNAL \Aa3b[1]~input_o\ : std_logic;
SIGNAL \FA0|Cout~0_combout\ : std_logic;
SIGNAL \FA1|M2|s1~combout\ : std_logic;
SIGNAL \Aa3b[2]~input_o\ : std_logic;
SIGNAL \Ba3b[2]~input_o\ : std_logic;
SIGNAL \FA1|Cout~0_combout\ : std_logic;
SIGNAL \FA2|M2|s1~combout\ : std_logic;
SIGNAL \FA2|Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Aa3b <= Aa3b;
ww_Ba3b <= Ba3b;
ww_Cin3b <= Cin3b;
Sa3b <= ww_Sa3b;
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

-- Location: LCCOMB_X44_Y42_N24
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
\Sa3b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA0|M2|s1~0_combout\,
	devoe => ww_devoe,
	o => \Sa3b[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\Sa3b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|M2|s1~combout\,
	devoe => ww_devoe,
	o => \Sa3b[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\Sa3b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|M2|s1~combout\,
	devoe => ww_devoe,
	o => \Sa3b[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Sa3b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Sa3b[3]~output_o\);

-- Location: IOIBUF_X24_Y39_N22
\Aa3b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Aa3b(0),
	o => \Aa3b[0]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\Cin3b~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin3b,
	o => \Cin3b~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\Ba3b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ba3b(0),
	o => \Ba3b[0]~input_o\);

-- Location: LCCOMB_X26_Y38_N8
\FA0|M2|s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA0|M2|s1~0_combout\ = \Aa3b[0]~input_o\ $ (\Cin3b~input_o\ $ (\Ba3b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aa3b[0]~input_o\,
	datab => \Cin3b~input_o\,
	datad => \Ba3b[0]~input_o\,
	combout => \FA0|M2|s1~0_combout\);

-- Location: IOIBUF_X22_Y39_N15
\Ba3b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ba3b(1),
	o => \Ba3b[1]~input_o\);

-- Location: IOIBUF_X26_Y39_N22
\Aa3b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Aa3b(1),
	o => \Aa3b[1]~input_o\);

-- Location: LCCOMB_X26_Y38_N10
\FA0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA0|Cout~0_combout\ = (\Aa3b[0]~input_o\ & ((\Cin3b~input_o\) # (\Ba3b[0]~input_o\))) # (!\Aa3b[0]~input_o\ & (\Cin3b~input_o\ & \Ba3b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aa3b[0]~input_o\,
	datab => \Cin3b~input_o\,
	datad => \Ba3b[0]~input_o\,
	combout => \FA0|Cout~0_combout\);

-- Location: LCCOMB_X26_Y38_N4
\FA1|M2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA1|M2|s1~combout\ = \Ba3b[1]~input_o\ $ (\Aa3b[1]~input_o\ $ (\FA0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ba3b[1]~input_o\,
	datab => \Aa3b[1]~input_o\,
	datad => \FA0|Cout~0_combout\,
	combout => \FA1|M2|s1~combout\);

-- Location: IOIBUF_X26_Y39_N8
\Aa3b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Aa3b(2),
	o => \Aa3b[2]~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\Ba3b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ba3b(2),
	o => \Ba3b[2]~input_o\);

-- Location: LCCOMB_X26_Y38_N6
\FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA1|Cout~0_combout\ = (\Ba3b[1]~input_o\ & ((\Aa3b[1]~input_o\) # (\FA0|Cout~0_combout\))) # (!\Ba3b[1]~input_o\ & (\Aa3b[1]~input_o\ & \FA0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ba3b[1]~input_o\,
	datab => \Aa3b[1]~input_o\,
	datad => \FA0|Cout~0_combout\,
	combout => \FA1|Cout~0_combout\);

-- Location: LCCOMB_X26_Y38_N16
\FA2|M2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA2|M2|s1~combout\ = \Aa3b[2]~input_o\ $ (\Ba3b[2]~input_o\ $ (\FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aa3b[2]~input_o\,
	datac => \Ba3b[2]~input_o\,
	datad => \FA1|Cout~0_combout\,
	combout => \FA2|M2|s1~combout\);

-- Location: LCCOMB_X26_Y38_N2
\FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA2|Cout~0_combout\ = (\Aa3b[2]~input_o\ & ((\Ba3b[2]~input_o\) # (\FA1|Cout~0_combout\))) # (!\Aa3b[2]~input_o\ & (\Ba3b[2]~input_o\ & \FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aa3b[2]~input_o\,
	datac => \Ba3b[2]~input_o\,
	datad => \FA1|Cout~0_combout\,
	combout => \FA2|Cout~0_combout\);

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

ww_Sa3b(0) <= \Sa3b[0]~output_o\;

ww_Sa3b(1) <= \Sa3b[1]~output_o\;

ww_Sa3b(2) <= \Sa3b[2]~output_o\;

ww_Sa3b(3) <= \Sa3b[3]~output_o\;
END structure;


